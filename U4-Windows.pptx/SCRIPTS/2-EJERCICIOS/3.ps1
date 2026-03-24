[int]$N= Read-Host "Dime un numero"
for($i=1; $i-le 10; $i++){
    Write-Host "$i * $N = "($i*$N)
}