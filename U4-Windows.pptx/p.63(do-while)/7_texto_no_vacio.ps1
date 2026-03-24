do {
    $texto = Read-Host "Introduce un texto (no puede estar vacío)"
    
    if ($texto -eq "") {
        Write-Host "El texto no puede estar vacío"
    }
} while ($texto -eq "")

Write-Host "Texto válido: $texto"
