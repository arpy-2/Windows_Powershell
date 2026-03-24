[int]$N= Read-Host "Dime un numero"
for($i=1; $i-le $N; $i++){
    if($i%2 -eq 0){
        Write-Host $i
    }
}