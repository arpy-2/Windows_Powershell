do {
    Write-Host "1. Opción 1"
    Write-Host "2. Opción 2"
    Write-Host "3. Salir"
    $opcion = Read-Host "Elige una opción"
    
    if ($opcion -eq "1") {
        Write-Host "Has elegido la opción 1"
    } elseif ($opcion -eq "2") {
        Write-Host "Has elegido la opción 2"
    } elseif ($opcion -eq "3") {
        Write-Host "Saliendo..."
    } else {
        Write-Host "Opción no válida"
    }
} while ($opcion -ne "3")
