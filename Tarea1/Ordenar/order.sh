#! /bin/bash

# La ruta del directorio debe venir en los parametros
if [ -z "$1" ]; then
  echo "No se introdujo ninguna ruta del directorio"
  exit 1
fi

ls -d "$1"/*/ | sort
