[int]$n1=read-Host "Dime un numero"
[int]$n2=read-Host "Dime un numero"

if($n1 -eq $n2){
    Write-Host "Son iguales"
}elseif($n1 -gt  $n2){
    Write-Host "$n1 es mayor que $n2"
}else{
    Write-Host "$n2 es mayor que $n1"
}