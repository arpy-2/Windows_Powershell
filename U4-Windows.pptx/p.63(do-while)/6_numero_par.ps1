do {
    $numero = [int](Read-Host "Introduce un número par")
    
    if ($numero % 2 -ne 0) {
        Write-Host "El número no es par"
    }
} while ($numero % 2 -ne 0)

Write-Host "Número par válido: $numero"
