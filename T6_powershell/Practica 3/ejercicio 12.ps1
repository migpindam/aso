[string] $vegetariana=Read-Host "Quieres pizza vegetariana? (si/no)"

if ($vegetariana -ieq "si") {
    [string] $ing=Read-Host "Qué ingrediente quieres? (pimiento/tofu)"
    if ($ing -ieq "pimiento" -or $ing -eq "tofu") {
        Write-Host "Pizza de $ing, tomate y mozzarella añadida al carrito"
    } else {
        Write-Host "Ingrediente no disponible"
    }
} elseif ($vegetariana -ieq "no") {
    [string] $ing=Read-Host "Qué ingrediente quieres? (peperoni/jamon/salmon)"
    if ($ing -ieq "peperoni" -or $ing -eq "jamon" -or $ing -eq "salmon") {
        Write-Host "Pizza de $ing, tomate y mozzarella añadida al carrito"
    } else {
        Write-Host "Ingrediente no disponible"
    }
} else {
    Write-Host "Opción no soportada"
}