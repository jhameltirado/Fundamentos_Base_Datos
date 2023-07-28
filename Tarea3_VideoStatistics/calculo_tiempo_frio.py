#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul 26 18:59:33 2023

@author: jhameltb
"""

import psycopg2
import re
import subprocess
import numpy as np 

# Lista de consultas a medir
consultas = [
    "select region from video_statistics order by likes desc limit 1;", 
    "select title, publish_time from video_statistics order by publish_time asc limit 1;",
    "select extract(year from t1.publish_time) as year, t1.title, t1.views from video_statistics as t1 where not exists(select 1 from video_statistics as t2 where extract(year from t2.publish_time) = extract(year from t1.publish_time) and t2.views > t1.views);",
    "select count(*) as videos, category from video_statistics group by category order by videos desc limit 1;",
    "select t1.category, t1.title, t1.views from video_statistics as t1 join (select category, max(views) as max_views from video_statistics group by category) t2 on t1.category = t2.category and t1.views = t2.max_views;",
    "select t1.region, t1.category, t1.cont_video from (select region, category, count(*) as cont_video from video_statistics group by region, category) as t1 join (select region, max(cont_video) as max_cont_video from (select region, category, count(*) as cont_video from video_statistics group by region, category) as t2 group by region) as t3 on t1.region = t3.region and t1.cont_video = t3.max_cont_video;"
]

si = [[]]
promedios_finales = []
sistema = ['caliente', 'frío']
# Número de repeticiones
num_repeticiones = 30

# Configura la conexión a la base de datos
conn = psycopg2.connect(
    host="localhost",
    database="bdd_tarea3",
    user="jhameltb",
    password="fbd-2023"
)


for sist in sistema:
    for consulta in consultas:
        tiempo_total = 0
        for i in range(num_repeticiones):
                
            if(sist == 'frío'):
        
                # Detener el servicio PostgreSQL
                subprocess.run(['echo','EunwooAsus2022','|','sudo','service', 'postgresql', 'stop'])
                
                # Limpiar la caché del sistema (para fines de medición de rendimiento)
                subprocess.run(['echo','EunwooAsus2022','|','sudo', 'sh', '-c', 'echo 1 > /proc/sys/vm/drop_caches'])
                subprocess.run(['echo','EunwooAsus2022','|','sudo', 'sh', '-c', 'echo 2 > /proc/sys/vm/drop_caches'])
                subprocess.run(['echo','EunwooAsus2022','|','sudo', 'sh', '-c', 'echo 3 > /proc/sys/vm/drop_caches'])
                
                # Iniciar el servicio PostgreSQL nuevamente
                subprocess.run(['echo','EunwooAsus2022','|','sudo','service', 'postgresql', 'start'])

            with conn.cursor() as cur:
                cur.execute("EXPLAIN ANALYZE " + consulta)
                resultados = cur.fetchone()
                #La variable resultados contiene la primera fila de resultados de la consulta EXPLAIN ANALYZE
                tiempos = re.findall(r'actual time=([\d.]+)', resultados[0])           
                tiempo_max_min = tiempos[0].split("..")
        
                # Convertimos los valores de tiempo a números de punto flotante.
                tiempos = [float(tiempo) for tiempo in tiempo_max_min]
                tiempo_maximo = max(tiempos)
                
                #print(tiempo_maximo)
                tiempo_total += tiempo_maximo
                #print("\n")    
                
        promedios_finales.append(tiempo_total / num_repeticiones)
            
    if(sist == 'caliente'):
        si[0] = promedios_finales
    elif(sist == 'frío'):
        si.append(promedios_finales)    
        
    np.savetxt('tiempos_' + sist + '.txt', promedios_finales, fmt='%f')
    promedios_finales.clear()
# Cierra la conexión a la base de datos
conn.close()  

import matplotlib.pyplot as plt

plt.figure()
plt.plot(si[0], si[1], linewidth=2, color='green')
plt.xlabel("caliente")
plt.ylabel("frío")
plt.show()