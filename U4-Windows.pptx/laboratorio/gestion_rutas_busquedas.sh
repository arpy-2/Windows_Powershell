#!/bin/bash
# Ejercicio:
# Pedir una ruta al usuario y realizar distintas búsquedas de archivos
# mostrando información adicional del sistema y del usuario

echo "Usuario que ejecuta el script:"
whoami

echo "Fecha actual:"
date "+%d/%m/%Y %H:%M:%S"

while true; do
  read -r -p "Introduce una ruta válida: " RUTA
  if [ -d "$RUTA" ]; then
    break
  fi
  echo "Ruta no válida"
done

# Buscar archivos por nombre exacto
find "$RUTA" -name "test.txt" -print

# Buscar ignorando mayúsculas
find "$RUTA" -iname "*.log" -print0

# Buscar solo archivos
find "$RUTA" -type f

# Buscar por tamaño
find "$RUTA" -size +1M

# Buscar archivos vacíos
find "$RUTA" -empty

# Buscar por permisos
find "$RUTA" -perm 644

# Buscar por usuario y grupo
find "$RUTA" -user "$USER" -group "$USER"

	#!/bin/bash
# Ejercicio:
# Pedir una ruta al usuario y realizar distintas búsquedas de archivos
# mostrando información adicional del sistema y del usuario

echo "Usuario que ejecuta el script:"
whoami

echo "Fecha actual:"
date "+%d/%m/%Y %H:%M:%S"

while true; do
  read -r -p "Introduce una ruta válida: " RUTA
  if [ -d "$RUTA" ]; then
    break
  fi
  echo "Ruta no válida"
done

# Buscar archivos por nombre exacto
find "$RUTA" -name "test.txt" -print

# Buscar ignorando mayúsculas
find "$RUTA" -iname "*.log" -print0

# Buscar solo archivos
find "$RUTA" -type f

# Buscar por tamaño
find "$RUTA" -size +1M

# Buscar archivos vacíos
find "$RUTA" -empty

# Buscar por permisos
find "$RUTA" -perm 644

# Buscar por usuario y grupo
find "$RUTA" -user "$USER" -group "$USER"

# Buscar por tiempo de modificación
find "$RUTA" -mtime -1
find "$RUTA" -mmin -30

# Limitar profundidad
find "$RUTA" -maxdepth 2 -mindepth 1

# Uso de operadores lógicos
find "$RUTA" -type f -a -name "*.log"
find "$RUTA" -type f ! -name "*.tmp"
find "$RUTA" -name "*.log" -o -name "*.txt"

# Ejecutar comando automáticamente
find "$RUTA" -name "*.log" -exec stat -t {} \;

# Ejecutar pidiendo confirmación
find "$RUTA" -name "*.bak" -ok rm {} \;

echo "Ubicación del binario grep:"
whereis -b grep

echo "Archivos no binarios de grep:"
whereis -u grep

