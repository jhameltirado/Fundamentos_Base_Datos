#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul 12 13:49:39 2023

@author: jhameltb
"""

import json
import csv

nombre = ["CA", "DE", "FR", "GB", "IN", "JP", "KR", "MX", "RU", "US"]

for j in range(len(nombre)):
        
    with open(nombre[j] + '_category_id.json') as archivo:
        datos = json.load(archivo)
    
    salidaCSV = open(nombre[j] + ".csv",'w')
    salida = csv.writer(salidaCSV,delimiter = ',')
    print('Escribiendo archivo "salida.csv"...')
    
    for i in range(len(datos["items"])):
    
        salida.writerow([datos["items"][i]["id"], datos["items"][i]["snippet"]["title"]])
    
    if j != 9:
        salida.writerow(['29','Nonprofits & Activism'])
    print('El proceso de escritura ha terminado.')
    
    del salida
    
    salidaCSV.close()
    
    del salidaCSV
