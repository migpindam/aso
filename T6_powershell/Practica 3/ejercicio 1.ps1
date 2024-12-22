[int] $num=Read-Host "Dame un número"

[int] $modulo=$num%2

if ($modulo -eq 0){
    Write-Host "El número es par"
}else {
    Write-Host "El número es impar"
}