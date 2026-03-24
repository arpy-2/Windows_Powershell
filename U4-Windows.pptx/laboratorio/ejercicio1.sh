#!/bin/bash

while true; do
	read -p "Dime la ruta del archivo REAL: " RUTA
	read -p "Dime el nombre del enlace simbolico " SIMBOLICO
	ln -s $RUTA $SIMBOLICO
	ESTADO=$?
	if ((ESTADO != 0 )); then
		echo "ERROR: La ruta no existe"
		continue
	fi

	break
done
echo "Enlace simbolico creado"
	
