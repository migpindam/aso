$usuarios=import-CSV usuarios.csv

foreach ($dato in $usuarios) {
    Write-Host "Usuario: $($dato.nombre) $($dato.apellidos) $($dato.grupo)"
}