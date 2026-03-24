$N = [int](Read-Host "Introduce un número")
$contador = 0

for ($i = 1; $i -le $N; $i++) {
    if ($i % 3 -eq 0) {
        $contador++
    }
}

Write-Host "Entre 1 y $N hay $contador múltiplos de 3"
