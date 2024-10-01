#! /bin/bash

#Vamos a crear un switch en donde pregunte su lugar de nacimiento y de ahi le dire una comida tipica

read -p "Dime la ciudad donde naciste: " city

parsedCity=${city,,} #Esto lo estoy haciendo para convertir a minusculas
echo "Perfecto, tu ciudad es $parsedCity"
echo ""

echo "Tu comida es: "
case $parsedCity in
"maracaibo")
	echo "Patacones"
	;;
"caracas")
	echo "Perros calientes de dudosa procedencia"
	;;
"carupano")
	echo "Pescado"
	;;
*)
	echo "No tengo nada guardado para esa ciudad, guardare un archivo para buscarla mas adelante"
	echo "$parsedCity" >> buscar.txt
	;;
esac
