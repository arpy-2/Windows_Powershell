$nombre=Read-Host "Dime tu nombre"
if($nombre.Length -eq 0){
    Write-Host "Esta vacio"
}else{
    Write-Host "No esta vacio :D"
}