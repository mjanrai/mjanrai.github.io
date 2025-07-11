$drive = Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##pptfo.net#??data#HOMEDRIVE*
$name = [Environment]::USERNAME
#$name = (Get-Culture).TextInfo.ToTitleCase($name) .toTitleCase() not working

if($name -eq "elena.salvatore"){$name = "Eleanor.Salvatore"}

$newh = @{
    Path = $drive.PSPath
    Name = "_LabelFromReg"
    PropertyType = 'String'
    Value = $name
}
 
New-ItemProperty -Force @newh