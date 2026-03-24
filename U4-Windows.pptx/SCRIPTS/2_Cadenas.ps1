<#

$cadena = "abcdefghijklmnopqrstuvwxyz"
Get-Random -InputObject $cadena → selecciona un carácter aleatorio.
otra forma:
$cadena = "abcdefghijklmnopqrstuvwxyz"
$letra = $cadena[(Get-Random -Minimum 0 -Maximum $cadena.Length)]
Write-Host $letra
#>
<#

$numero = Read-Host "¿Cuántos caracteres quieres para tu contraseña?"


$caracteres = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"


$contraseña = ""
for ($i = 1; $i -le $numero; $i++) {
    $aleatorio = Get-Random -Minimum 0 -Maximum $caracteres.Length
    $contraseña += $caracteres[$aleatorio]
}


Write-Host "Tu contraseña de $numero caracteres es: $contraseña"
#>