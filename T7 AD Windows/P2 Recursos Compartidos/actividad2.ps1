# Creamos la estructura de directoriosNew-Item C:\Empresa -ItemType directory
$departamentos=import-CSV C:\Users\Administrador\Desktop\departamentos.csv -Delimiter ";"
$empleados=import-CSV C:\Users\Administrador\Desktop\empleados.csv -Delimiter ";"
foreach ($dato in $departamentos) {
    New-Item C:\Empresa\$($dato.departamento) -ItemType directory
}# Compartimos Empresa
New-SmbShare -Path C:\Empresa -name empresa
    Grant-SmbShareAccess -Name empresa -AccountName Administrador -AccessRight Full     Grant-SmbShareAccess -Name empresa -AccountName Todos -AccessRight Change# Definimos permisos NTFS# De Empresa    
$acl = Get-Acl -Path C:\Empresa
    $acl.SetAccessRuleProtection($true,$false)
    $p_administrador = @('Administrador', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
        $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $p_administrador
        $acl.SetAccessRule($ace)
    $p_todos = @('Todos', 'ReadAndExecute', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
        $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $p_todos
        $acl.SetAccessRule($ace)
$acl | Set-Acl -Path C:\Empresa
# NTFS de cada directorio de departamento
foreach ($dato in $departamentos) {
    $acl = Get-Acl -Path C:\Empresa\$($dato.departamento)
        $acl.SetAccessRuleProtection($true,$false)        # Para Administrador
        $p_administrador = @('Administrador', 'FullControl', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
            $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $p_administrador
            $acl.SetAccessRule($ace)#>
        foreach ($valor in $departamentos) {
            $grupo=$($valor.departamento).ToLower()            # Para el grupo tocayo
            if ($($valor.departamento) -eq $($dato.departamento)) {                $p_grupo = @("g.$grupo", 'Modify', 'ContainerInherit, ObjectInherit', 'None', 'Allow')            # Para el resto de grupos
            } else {
                $p_grupo = @("g.$grupo", 'Read', 'ContainerInherit, ObjectInherit', 'None', 'Allow')
            }
            $ace = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $p_grupo
            $acl.SetAccessRule($ace)
        }
    $acl | Set-Acl -Path C:\Empresa\$($dato.departamento)
}