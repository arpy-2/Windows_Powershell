$numero = [int](Read-Host "Introduce un número")

if ($numero % 2 -eq 0) {
    Write-Host "Es par"
} else {
    Write-Host "Es impar"
}
