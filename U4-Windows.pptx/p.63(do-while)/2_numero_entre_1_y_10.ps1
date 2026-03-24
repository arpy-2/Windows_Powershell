do {
    $numero = [int](Read-Host "Introduce un número entre 1 y 10")
    
    if ($numero -lt 1 -or $numero -gt 10) {
        Write-Host "Número fuera de rango"
    }
} while ($numero -lt 1 -or $numero -gt 10)

Write-Host "Número válido: $numero"s
