$numero = [int](Read-Host "Introduce un número (negativo para salir)")

while ($numero -ge 0) {
    Write-Host "Has introducido: $numero"
    $numero = [int](Read-Host "Introduce un número (negativo para salir)")
}

Write-Host "Programa terminado"
