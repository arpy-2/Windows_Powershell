$N = [int](Read-Host "Introduce un número")

for ($i = 1; $i -le 10; $i++) {
    $resultado = $N * $i
    Write-Host "$N x $i = $resultado"
}
