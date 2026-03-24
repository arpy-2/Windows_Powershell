$numero = [int](Read-Host "Introduce un número (0 para salir)")
$mayor = $numero

while ($numero -ne 0) {
    if ($numero -gt $mayor) {
        $mayor = $numero
    }
    $numero = [int](Read-Host "Introduce un número (0 para salir)")
}

Write-Host "El número mayor introducido es: $mayor"
