[int] $edad=Read-Host "¿Cuántos años tienes?"

if ($edad -ge 18){
    Write-Host "Eres mayor de edad"
}else {
    Write-Host "Eres menor de edad"
}