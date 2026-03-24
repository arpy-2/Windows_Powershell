$contraseña=Read-Host "Escribe tu contraseña"
if ($contraseña.Length -ge 8){
    Write-Host "Cumple con 8 caracteres o mas"
}else{
    Write-Host "Deben ser minimo 8 caracteres"
}