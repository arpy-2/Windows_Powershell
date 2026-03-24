[int]$N= Read-Host "Dime un numero"
[int]$sumatorio=0
for($i=1; $i-le $N; $i++){
    $sumatorio=$i+ $sumatorio
}
Write-Host $sumatorio