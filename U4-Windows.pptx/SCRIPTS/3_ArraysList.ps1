<#
Estos son los correctos en PowerShell
if ( $a -eq $b ) { }     Igual
if ( $a -ne $b ) { }     Diferente
if ( $a -and $b ) { }    Y lógico
if ( $a -or $b ) { }     O lógico
#>


<#
$array_vario =@()
$variable= Read-Host "Dime algo para meter al array"
$array_vario+=$variable

Write-Host $array_vario.Length
Write-Host $array_vario

#>

<#
$lista= [System.Collections.ArrayList]@()
$lista.Add("erick")
$lista.Add("velasquez")
Write-Host $lista
$lista.Remove("erick")

$lista1=Read-Host "Dime el elemento que quieras eliminar"

While($lista -contains $lista1){
    $lista.Remove($lista1)
}
#>


<#
$array_vacio=@()

$count=Read-Host "Cuantos elementos quieres introducir"
for ($i = 1; $i -le $count; $i++) {
    $elemento=Read-Host "Dime un elemento para introducir"
    $array_vacio+=$elemento
}

foreach ($f in $array_vacio){
    Write-Host $f
}
#>