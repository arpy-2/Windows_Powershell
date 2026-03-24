$palabra = Read-Host "Introduce una palabra"

for ($i = 0; $i -lt $palabra.length; $i++) {
    Write-Host "Posición $i : $($palabra[$i])"
}
