[int] $num=Read-Host "Escribe número"

for ($i=1; $i -le 10; $i++) {
    [int] $resultado=$num*$i
    Write-Host "$num x $i = $resultado"
}