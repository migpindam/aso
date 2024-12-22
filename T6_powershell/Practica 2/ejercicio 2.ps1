[int] $num1=Read-Host "Escribe un número"
[int] $num2=Read-Host "Escribe otro número"

[int] $suma=$num1+$num2
[int] $resta=$num1-$num2
[int] $multiplicacion=$num1*$num2
[double] $division=$num1/$num2
[int] $resto=$num1%$num2

Write-Host "Su suma es" $suma
Write-Host "Su resta es" $resta
Write-Host "Su multiplicación es" $multiplicacion
Write-Host "Su división es" $division
Write-Host "Su resto es" $resto