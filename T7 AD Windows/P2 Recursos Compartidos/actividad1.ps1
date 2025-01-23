New-Item C:\ASO -ItemType directory

New-SmbShare -Path C:\ASO -Name aso

Grant-SmbShareAccess -Name aso -AccountName Administrador -AccessRight Full

Grant-SmbShareAccess -Name aso -AccountName profesores -AccessRight Full

Grant-SmbShareAccess -Name aso -AccountName alumnos -AccessRight Read

Revoke-SmbShareAccess -Name aso -AccountName Todos 