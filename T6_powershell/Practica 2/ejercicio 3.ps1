[double] $horas=Read-Host "Horas trabajadas"
[double] $coste=Read-Host "Coste por hora"

[double] $salario=$horas*$coste

Write-Host "Debemos pagarle" $salario