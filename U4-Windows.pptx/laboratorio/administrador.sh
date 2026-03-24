#!/bin/bash
# Script: consola_procesos.sh
# Consola simple de gestión de procesos y trabajos

set -m   # Habilitar control de trabajos

while true; do
  echo "-----------------------------------"
  echo "1) Lanzar comando en primer plano"
  echo "2) Lanzar comando en segundo plano"
  echo "3) Listar trabajos"
  echo "4) Traer un trabajo al primer plano (fg)"
  echo "5) Reanudar un trabajo en segundo plano (bg)"
  echo "6) Ejecutar comando con nice"
  echo "7) Terminar proceso por PID (kill)"
  echo "8) Terminar procesos por nombre (killall)"
  echo "0) Salir"
  echo "-----------------------------------"

  read -r -p "Opción: " OPCION

  case "$OPCION" in
    1)
      # Ejemplo: sleep 10
      read -r -p "Comando a ejecutar en primer plano: " CMD
      $CMD
      ;;

    2)
      # Ejemplo: sleep 60
      read -r -p "Comando a ejecutar en segundo plano: " CMD
      $CMD &
      echo "Proceso lanzado en segundo plano. PID: $!"
      ;;

    3)
      # Mostrar trabajos
      jobs -l
      ;;

    4)
      # Ejemplo: fg %1
      read -r -p "Número de trabajo (ej: %1): " JOB
      fg "$JOB"
      ;;

    5)
      # Ejemplo: bg %1
      read -r -p "Número de trabajo (ej: %1): " JOB
      bg "$JOB"
      ;;

    6)
      # Ejemplo: nice -n 10 sleep 30
      read -r -p "Valor nice: " VALOR
      read -r -p "Comando: " CMD
      nice -n "$VALOR" $CMD &
      echo "Proceso lanzado con nice en segundo plano. PID: $!"
      ;;

    7)
      # Ejemplo: kill PID
      read -r -p "PID a terminar: " PID
      kill "$PID"
      ;;

    8)
      # Ejemplo: killall sleep
      read -r -p "Nombre del proceso: " NOMBRE
      killall "$NOMBRE"
      ;;

    0)
      echo "Saliendo..."
      exit 0
      ;;

    *)
      echo "Opción no válida"
      ;;
  esac
done
