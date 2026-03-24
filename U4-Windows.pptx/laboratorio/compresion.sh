#!/bin/bash
# Ejercicio:
# Comprimir y descomprimir archivos y directorios

read -r -p "Directorio a comprimir: " DIR

# Crear tar
tar -cvf backup.tar "$DIR"

# Ver contenido
tar -tvf backup.tar

# Crear tar.gz
tar -czvf backup.tar.gz "$DIR"

# Crear tar.bz2
tar -cjvf backup.tar.bz2 "$DIR"

# Extraer en otra ruta
mkdir -p restaurado
tar -xvf backup.tar -C restaurado

# gzip
gzip -k -v archivo.txt
gzip -d archivo.txt.gz

# bzip2
bzip2 -k -v archivo.txt
bunzip2 -k -v archivo.txt.bz2
