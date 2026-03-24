do {
    $ruta = Read-Host "Introduce una ruta"
    
    if (-not (Test-Path $ruta)) {
        Write-Host "La ruta no existe"
    }
} while (-not (Test-Path $ruta))

Write-Host "Ruta válida: $ruta"
