do {
    $respuesta = Read-Host "¿Quieres continuar? (S/N)"
    $respuesta = $respuesta.ToUpper()
    
    if ($respuesta -ne "S" -and $respuesta -ne "N") {
        Write-Host "Respuesta no válida. Introduce S o N"
    }
} while ($respuesta -ne "S" -and $respuesta -ne "N")

Write-Host "Respuesta válida: $respuesta"
