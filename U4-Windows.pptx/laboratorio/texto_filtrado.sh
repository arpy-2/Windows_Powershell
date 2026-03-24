#!/bin/bash
# Ejercicio:
# Analizar un archivo de texto usando filtros y contadores

while true; do
  read -r -p "Archivo de texto: " FILE
  if [ -f "$FILE" ]; then
    break
  fi
done

# Mostrar primeras líneas
head -n 10 "$FILE"

# Mostrar primeros bytes
head -c 50 "$FILE"

# Mostrar últimas líneas
tail -n 5 "$FILE"

# Mostrar últimos bytes
tail -c 30 "$FILE"

# Seguir archivo hasta que termine un proceso
sleep 5 &
PID=$!
tail --pid="$PID" -f "$FILE"

# Buscar ignorando mayúsculas
grep -i "error" "$FILE"

# Excluir coincidencias
grep -v "INFO" "$FILE"

# Mostrar número de línea
grep -n "ERROR" "$FILE"

# Contar coincidencias
grep -c "ERROR" "$FILE"

# Mostrar solo nombres de archivos
grep -l "ERROR" "$FILE"

# Coincidencia exacta
grep -x "root" "$FILE"

# Buscar recursivo
grep -r "ERROR" .

# Expresión regular
grep -E "[0-9]{2}/[0-9]{2}/[0-9]{4}" "$FILE"

# Palabra exacta
grep -w "user" "$FILE"

# Contexto
grep -A 2 "ERROR" "$FILE"
grep -B 2 "ERROR" "$FILE"
grep -C 2 "ERROR" "$FILE"

# Ordenar numéricamente
sort -n "$FILE"

# Ordenar al revés
sort -r "$FILE"

# Eliminar duplicados
sort -u "$FILE"

# Ordenar por columna
sort -k 2 "$FILE"

# Cambiar separador
sort -t ":" -k 1 "$FILE"

# Ignorar mayúsculas
sort -f "$FILE"

# Guardar salida en archivo
sort "$FILE" -o ordenado.txt

# Contadores
wc -l "$FILE"
wc -w "$FILE"
wc -c "$FILE"
wc -m "$FILE"
