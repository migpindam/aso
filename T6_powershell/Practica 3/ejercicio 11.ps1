[int]  $edad=Read-Host "Cuántos años tienes"

if ($edad -lt 4) {
    Write-Host "Precio: 0€"
} elseif ($edad -ge 4 -and $edad -lt 18) {
    Write-Host "Precio: 5€"
} else {
    Write-Host "Precio: 10€"
}
