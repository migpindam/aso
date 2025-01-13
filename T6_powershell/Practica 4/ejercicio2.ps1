[int] $edad=Read-Host "Cuántos años tienes?"
[int] $i=1

while ($i -le $edad) {
    Write-Host "$i"
    $i++
}