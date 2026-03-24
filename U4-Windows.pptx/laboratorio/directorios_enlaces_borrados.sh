#!/bin/bash
# Ejercicio:
# Crear estructura de directorios, enlaces simbólicos y eliminarlos de forma controlada

while true; do
  read -r -p "Nombre del directorio base: " BASE
  if [ -n "$BASE" ]; then
    break
  fi
done

# Crear directorio con permisos
mkdir -m 755 "$BASE"

# Crear subdirectorios automáticamente
mkdir -p "$BASE"/sub1/sub2

# Crear enlace simbólico
ln -s "$BASE" enlace_$BASE

# Preguntar antes de sobrescribir enlace
ln -si "$BASE" enlace_$BASE

# Mostrar información del directorio
stat -x "$BASE"

read -r -p "¿Eliminar estructura? (s/n): " RESP
if [ "$RESP" = "s" ]; then
  rm -ri "$BASE"
  rm -i enlace_$BASE
fi
