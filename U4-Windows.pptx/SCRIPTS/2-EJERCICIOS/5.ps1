[int]$N= Read-Host "Dime un numero"
[int]$contador=0
for($i=1; $i-le $N; $i++){
    if($i%3 -eq 0){
    $contador++
    }
}
Write-Host "Existen $contador multiplos de 3"