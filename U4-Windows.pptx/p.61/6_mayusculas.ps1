$cadenas = @("hola", "mundo", "powershell", "ejemplo")

foreach ($cadena in $cadenas) {
    Write-Host $cadena.ToUpper()
}
