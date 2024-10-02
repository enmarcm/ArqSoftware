#!/bin/bash

# Archivo de entrada
input_file="country-list.csv"

# Verificar si el archivo existe
if [[ ! -f $input_file ]]; then
    echo "El archivo $input_file no existe."
    exit 1
fi

# Usar AWK para procesar el archivo y mostrar las columnas
awk -F, 'NR > 1 { printf "%-30s %-30s\n", $1, $2 }' $input_file
