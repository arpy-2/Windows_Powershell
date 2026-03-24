<#
Get-Help Get-Service
Stop-Service -Name Spooler
Ver estado
Get-Service Spooler
#>

<#
$servicio = Read-Host "Dime el servicio que quieres detenet"
Stop-Service -Name $servicio


Get-Service $servicio
Start-Service $servicio
Restart-Service $servicio
#>


<#
Write-Output "Fecha y hora actual: $(Get-Date)" 
Get-Process 
mkdir C:\Users\Alumno\Desktop\Backup 
Copy-Item C:\Users\Alumno\Documents\*.txt C:\Users\Alumno\Desktop\Backup\ 
Write-Output "Copia de seguridad realizada con éxito."
#>


<#
$ruta = "C:\Users\Alumno\Desktop\Backup"

# Buscar archivos .txt
$archivos = Get-ChildItem $ruta -Filter "*.txt"

# Si hay archivos, mostrarlos
if ($archivos) {
    Write-Host "Archivos .txt encontrados:"
    foreach ($archivo in $archivos) {
        Write-Host $archivo.Name
    }
}#>