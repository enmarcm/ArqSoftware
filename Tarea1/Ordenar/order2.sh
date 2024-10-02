#!/bin/bash

# Pregunto la ruta del directorio
read -p "Ingresa la ruta del directorio: " ruta

if [ -z "$ruta" ]; then
    echo "No se introdujo ninguna ruta del directorio"
    exit 1
fi

content=$(ls -d "$ruta"/*/ | sort)

echo "$content"
echo "$content" >>salida.txt
