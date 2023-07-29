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

consultas = [
    "SELECT region, likes FROM video_statistics ORDER BY likes DESC LIMIT 2;",
    "SELECT title, publish_time FROM video_statistics ORDER BY publish_time ASC LIMIT 1;",
    "SELECT extract(year FROM t1.publish_time) AS YEAR, t1.title, t1.views FROM video_statistics AS t1 WHERE NOT EXISTS(SELECT * FROM video_statistics AS t2 WHERE extract(YEAR FROM t2.publish_time) = extract(YEAR FROM t1.publish_time) AND t2.views > t1.views) ORDER BY YEAR;",
    "SELECT count(*) AS videos, category FROM video_statistics GROUP BY category ORDER BY videos DESC LIMIT 1;",
    "SELECT t1.category, t1.title, t1.views FROM video_statistics AS t1 JOIN (SELECT category, max(views) AS max_views FROM video_statistics GROUP BY category) t2 ON t1.category = t2.category AND t1.views = t2.max_views;",
    "SELECT t1.region, t1.category, t1.cont_video FROM (SELECT region, category, count(*) AS cont_video FROM video_statistics GROUP BY region, category) AS t1 JOIN (SELECT region, max(cont_video) AS max_cont_video FROM (SELECT region, category, count(*) AS cont_video FROM video_statistics GROUP BY region, category) AS t2 GROUP BY region) AS t3 on t1.region = t3.region AND t1.cont_video = t3.max_cont_video;"
]

promedios_finales = []
sistema = ['caliente', 'frío']

num_repeticiones = 30

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
                
                # Limpiar la caché del sistema
                subprocess.run(['echo','EunwooAsus2022','|','sudo', 'sh', '-c', 'echo 1 > /proc/sys/vm/drop_caches'])
                subprocess.run(['echo','EunwooAsus2022','|','sudo', 'sh', '-c', 'echo 2 > /proc/sys/vm/drop_caches'])
                subprocess.run(['echo','EunwooAsus2022','|','sudo', 'sh', '-c', 'echo 3 > /proc/sys/vm/drop_caches'])
                
                # Iniciar el servicio PostgreSQL nuevamente
                subprocess.run(['echo','EunwooAsus2022','|','sudo','service', 'postgresql', 'start'])

            with conn.cursor() as cur:
                cur.execute("EXPLAIN ANALYZE " + consulta)
                resultados = cur.fetchone()
                
                # La variable resultados contiene la primera fila de resultados de la consulta EXPLAIN ANALYZE
                tiempos = re.findall(r'actual time=([\d.]+)', resultados[0])           
                tiempo_max_min = tiempos[0].split("..")
        
                tiempos = [float(tiempo) for tiempo in tiempo_max_min]
                tiempo_maximo = max(tiempos)
                
                tiempo_total += tiempo_maximo

        promedios_finales.append(tiempo_total / num_repeticiones)
        
    np.savetxt('tiempos_' + sist + '.txt', promedios_finales, fmt='%f')
    promedios_finales.clear()
    
# Cierra la conexión a la base de datos
conn.close()  