



<#
New-LocalUser -Name "Juan123" 
-Password (ConvertTo-SecureString "MiClaveSegura" -AsPlainText -Force) 
-FullName "Juan Pérez" 
-Description "Usuario de prueba"

Add-LocalGroupMember -Group "Administradores" -Member "Juan123"
Remove-LocalGroupMember -Group "SoporteTI" -Member "Juan123"


Disable-LocalUser -Name "Juan123"
Enable-LocalUser -Name "Juan123"
#>
Remove-LocalUser -Name "Juan123"
