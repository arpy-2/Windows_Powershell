$contador = 0
$entrada = Read-Host "Introduce un número (escribe 'fin' para terminar)"

while ($entrada -ne "fin") {
    $contador++
    $entrada = Read-Host "Introduce un número (escribe 'fin' para terminar)"
}

Write-Host "Has introducido $contador números"
