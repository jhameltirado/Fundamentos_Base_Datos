#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul 14 12:52:53 2023

@author: jhameltb
"""

import csv

nombre = ["CA", "DE", "FR", "GB", "IN", "JP", "KR", "MX", "RU", "US"]

for j in range(len(nombre)):

    salidaCSV = open(nombre[j] + "_VIDEOS" + ".csv",'w')
    salida = csv.writer(salidaCSV,delimiter = ',')
    print('Escribiendo archivo "salida.csv"...')
    
    with open(nombre[j] + 'videos.csv', newline='', errors = 'replace') as archivo_csv:
        lector_csv = csv.reader(archivo_csv, delimiter=',')
        for i, fila in enumerate(lector_csv):
            
            if i > 0:
                cambio = '"' + fila[15] + '"' 
                cambio2 = '"' + fila[2] + '"' 
                cambio3 = '"' + fila[6] + '"' 
                
                fila[15] = cambio
                fila[2] = cambio2
                fila[6] = cambio3
                
                fecha = fila[1].split('.')
                anio = '20' + fecha[0] 
                dia = fecha[1]
                mes = fecha[2]
                
                fila[1] = anio + '.' + mes + '.' + dia
                
                salida.writerow(fila[0:16])
        
    print('El proceso de escritura ha terminado.')
            
    del salida
    
    salidaCSV.close()
    
    del salidaCSV
        