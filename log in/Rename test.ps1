$drive = Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##pptfo.net#??data#HOMEDRIVE*
$name = [Environment]::USERNAME
# .toTitleCase not working in environment
#$name = (Get-Culture).TextInfo.ToTitleCase($text)

$newh = @{
    Path = $drive.PSPath
    Name = "_LabelFromReg"
    PropertyType = 'String'
    Value = $name
}
 
New-ItemProperty -Force @newh