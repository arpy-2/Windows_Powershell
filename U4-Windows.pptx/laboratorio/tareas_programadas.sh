#!/bin/bash
# Ejercicio:
# Gestión de tareas programadas

echo "Mostrando crontab del usuario actual"
crontab -l

# Editar crontab
# crontab -e

# Programar tarea con at
echo "echo 'Tarea ejecutada'" | at now + 2 minutes

# Mostrar cola
atq

read -r -p "ID tarea a eliminar: " ID
atrm "$ID"
