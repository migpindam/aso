[string] $nombre=Read-Host "Escribe nombre"
[int] $numero=Read-Host "Escribe número"
[int] $i=1

while ($i -le $numero) {
    Write-Host "$nombre"
    $i++
}