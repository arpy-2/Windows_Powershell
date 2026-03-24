[int] $numero=Read-Host "Dime un numero"
if($numero%2-eq 0){
    Write-Host "Es par"
}else{
    Write-Host "Es impar"
}