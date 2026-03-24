$N = [int](Read-Host "Introduce un número")
$linea = ""

for ($i = 0; $i -lt $N; $i++) {
    $linea += "*"
}

Write-Host $linea
