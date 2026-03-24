$suma = 0
$numero = [int](Read-Host "Introduce un número (0 para salir)")

while ($numero -ne 0) {
    $suma += $numero
    $numero = [int](Read-Host "Introduce un número (0 para salir)")
}

Write-Host "La suma total es: $suma"
