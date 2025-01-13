function menu {
    Write-Host ""
    Write-Host "*****MENÚ DE OPCIONES*****"
    Write-Host ""
    Write-Host "     a) Crear carpeta"
    Write-Host "     b) Crear nuevo fichero"
    Write-Host "     c) Cambiar nombre a fichero o carpeta"
    Write-Host "     d) Borrar archivo o carpeta"
    Write-Host "     e) Verificar si existe"
    Write-Host "     f) Mostrar contenido de directorio"
    Write-Host "     g) Mostrar fecha y hora"
    Write-Host "     x) Salir"
    Write-Host ""
}

do {
    
    menu

    [string] $opcion=Read-Host "Opción"

    switch ($opcion) {
        a {
            [string] $carpeta=Read-Host "Escribe nombre de carpeta"
            New-Item $carpeta -ItemType directory
        }
        b {
            [string] $fichero=Read-Host "Escribe nombre de fichero"
            New-Item $fichero -ItemType file
        }
        c {
            [string] $objeto=Read-Host "Nombre original"
            [string] $nombre=Read-Host "Nuevo nombre"
            Rename-Item $objeto $nombre
        }
        d {
            [string] $objeto=Read-Host "Qué quieres borrar"
            Remove-Item $objeto -Recurse
        }
        e {
            [string] $objeto=Read-Host "Qué quieres comprobar si existe"
            if (Test-Path $objeto) {
                Write-Host "Existe"
            } else {
                Write-Host "No existe"
            }
        }
        f {
            [string] $objeto=Read-Host "Directorio"
            Get-ChildItem $objeto
        }
        g {
            Get-Date
        }
    }

} while ($opcion -ne "x")