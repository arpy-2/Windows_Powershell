$N = [int](Read-Host "Introduce un número")
$suma = 0

for ($i = 1; $i -le $N; $i++) {
    $suma += $i
}

Write-Host "La suma del 1 al $N es: $suma"
