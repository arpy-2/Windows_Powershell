#!/bin/bash
# Script: mantenimiento_basico.sh
# Descripción:
# - Limpia la pantalla
# - Muestra las últimas 15 órdenes del usuario
# - Genera un informe de hardware con lshw
# - Comprime la carpeta informes en informes.tar.gz
# - Muestra el tamaño del archivo comprimido
# - Comprueba que el .tar.gz no está corrupto
# - Pregunta si se quiere apagar el equipo

########################################
# Comprobación de ejecución como root
########################################
if (( EUID != 0 )); then
  echo "El script no se está ejecutando como root. Relanzando con sudo..."
  sudo "$0"
  exit 0
fi

########################################
# Comprobación de lshw
########################################
if ! command -v lshw >/dev/null 2>&1; then
  echo "El comando lshw no está instalado."
  echo "Instálalo antes de ejecutar este script."
  exit 0
fi

########################################
# Limpieza de pantalla
########################################
clear

########################################
# Mostrar últimas 15 órdenes
########################################
echo "Últimas 15 órdenes ejecutadas por el usuario:"
history | tail -n 15
echo "---------------------------------------------"

########################################
# Crear carpeta de informes
########################################
mkdir -p informes

########################################
# Generar informe de hardware
########################################
echo "Generando informe de hardware..."
lshw > informes/hardware.txt

########################################
# Comprimir carpeta informes
########################################
echo "Comprimiendo carpeta informes..."
tar -czvf informes.tar.gz informes

########################################
# Mostrar tamaño del archivo comprimido
########################################
echo "Tamaño del archivo informes.tar.gz:"
ls -lh informes.tar.gz

########################################
# Comprobación de integridad del archivo
########################################
echo "Comprobando integridad del archivo comprimido..."
if gzip -t informes.tar.gz; then
  echo "El archivo informes.tar.gz no está corrupto."
else
  echo "Error: el archivo informes.tar.gz está corrupto."
fi

########################################
# Preguntar si se desea apagar el equipo
########################################
read -r -p "¿Deseas apagar el equipo? (s/n): " RESPUESTA

if [ "$RESPUESTA" = "s" ]; then
  echo "Apagando el equipo..."
  shutdown -h now
else
  echo "El equipo no se apagará. Fin del script."
fi
