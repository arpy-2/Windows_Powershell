#!/bin/bash
# Ejercicio:
# Gestión completa de procesos y prioridades

set -m

# Lanzar proceso en segundo plano
sleep 300 &
PID=$!

# Listar trabajos
jobs -l

# Cambiar prioridad al lanzar
nice -n 10 sleep 200 &

# Cambiar prioridad por PID
renice -p 5 "$PID"

# Mostrar árbol de procesos
pstree -p -u -a

# Reanudar proceso
kill -CONT "$PID"

# Parar proceso
kill -STOP "$PID"

# Finalizar correctamente
kill -15 "$PID"

# Forzar finalización
# kill -9 "$PID"
