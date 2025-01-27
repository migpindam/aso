# CREAMOS LA CARPETA C:\Empresa_users

New-Item C:\Empresa_users -ItemType directory

$departamentos = import-CSV C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"

$empleados = import-CSV C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"



# CREAMOS LAS SUBCARPETAS PRIVADAS

foreach ($dato in $empleados) {

    $nombre = $($dato.nombre)

    $apellido = $($dato.apellido)

    $carpeta = "$nombre.$apellido"

    New-Item C:\Empresa_users\$carpeta -ItemType directory

}



# COMPARTIMOS LA CARPETA Empresa_users

New-SmbShare -Path C:\Empresa_users -name usuarios$

    Grant-SmbShareAccess -Name usuarios$ -AccountName Administrador -AccessRight Full
        
    Grant-SmbShareAccess -Name usuarios$ -AccountName Todos -AccessRight Change



# ASIGNAMOS PERMISOS NTFS A CARPETA Empresa_users (Admnistrador - FullControl / Todos - ReadAndExecute)

$acl = Get-Acl -Path C:\Empresa_users

    $acl.SetAccessRuleProtection($true,$false)

    $p_administrador = @('Administrador', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')

        $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $p_administrador

        $acl.SetAccessRule($ace)

    $p_todos = @('Todos', 'ReadAndExecute', 'ContainerInherit, ObjectInherit', 'None', 'Allow')

        $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $p_todos

        $acl.SetAccessRule($ace)

$acl | Set-Acl -Path C:\Empresa_users



# ASIGNAMOS PERMISOS NTFS A CARPETAS PRIVADAS (Administrador - FullControl / Usuario - modify)

foreach ($dato in $empleados) {

    $nombre = $($dato.nombre)

    $apellido = $($dato.apellido)

    $carpeta = "$nombre.$apellido"

    $acl = Get-Acl -Path C:\Empresa_users\$carpeta
        
        $acl.SetAccessRuleProtection($true,$false)

# Los de Administrador

        $p_administrador = @('Administrador', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')

            $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $p_administrador

            $acl.SetAccessRule($ace)

# Los del usuario

        foreach ($valor in $empleados) {

            if (($($valor.nombre) -eq $nombre) -and ($($valor.apellido) -eq $apellido)) {

                $name = $($dato.nombre).ToLower()

                $surname = $($dato.apellido).ToLower()

                $login = "$name.$surname"
            
                $p_usuario = @("$login", 'Modify', 'ContainerInherit, ObjectInherit', 'None', 'Allow')

                    $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $p_usuario

                    $acl.SetAccessRule($ace)

            }
            
        }
        
        $acl | Set-Acl -Path C:\Empresa_users\$carpeta

    }


    # UNIDAD Z:

    foreach ($dato in $empleados) {

        $name = $($dato.nombre)

        $surname = $($dato.apellido)

        $carpeta = "$name.$surname"
        
        $nombre = $($dato.nombre).ToLower()

        $apellido = $($dato.apellido).ToLower()

        $usuario = "$nombre.$apellido"

        Set-ADUser -Identity $usuario -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\EMPRESA\usuarios$\$carpeta"

    }