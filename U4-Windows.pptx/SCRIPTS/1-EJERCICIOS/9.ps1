do{
    [int]$nota=Read-Host "Dime tu nota"
    switch ($nota){
        {$_ -in 0..4}{
            Write-Host "Desaprobado"
            break
        }
        {$_ -in 5..10}{
            Write-Host "Aprobado"
            break
        }
        Default{
            Write-Host "Numero incorrecto"
        }
    }
}while($nota-lt 0 -or $nota -gt 10)