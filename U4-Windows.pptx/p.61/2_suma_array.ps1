$numeros = @(5, 12, 8, 20, 3, 15)
$suma = 0

foreach ($num in $numeros) {
    $suma += $num
}

Write-Host "La suma total es: $suma"
