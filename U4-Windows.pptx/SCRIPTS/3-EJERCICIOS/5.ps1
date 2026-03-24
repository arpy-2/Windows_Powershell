$numeros=@()
[int]$tamaño=Read-Host "Dime el tamaño del array"
for($i=1; $i -le $tamaño; $i++){
    do{
        $numero=Read-Host "Introduce el numero"
        if ($numero -lt 0 -or $numero -gt 10){
            Write-Host "Tiene que ser una nota entre 0 - 10"
        } 
    }while($numero -lt 0 -or $numero -gt 10)
    $numeros+=$numero
}
[int]$contador=0
foreach($c in $numeros){
    if($c -ge 5){
        $contador++
    }
}
Write-Host "Existen $contador aprobados"