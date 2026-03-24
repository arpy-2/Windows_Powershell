$N = [int](Read-Host "Introduce un número")

for ($i = 1; $i -le $N; $i++) {
    if ($i % 2 -eq 0) {
        Write-Host $i
    }
}
