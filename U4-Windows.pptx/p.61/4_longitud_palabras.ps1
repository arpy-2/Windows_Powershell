$palabras = @("hola", "mundo", "PowerShell", "script", "ejercicio")

foreach ($palabra in $palabras) {
    Write-Host "$palabra : $($palabra.length) caracteres"
}
