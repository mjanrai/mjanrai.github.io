#get the location for user. had issue with using Where-Object, didn't troubleshoot since this worked. using "*" and "?"  here to do similar
#$drive = Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##pptfo.net#??data#HOMEDRIVE*
#if($drive){ $drive = Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##pptfo.net#??data#homedrive* }
#$drive = Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##pptfo.net#??data#HOMEDRIVE*
#$name = "upper"
#if($drive){ $drive = Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##pptfo.net#??data#homedrive*
#$name = "lower"}
Out-File -FilePath H:\time.txt
$drive = Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##pptfo.net#lidata#homedrive#Terence.Hill
$drive | Export-Csv -Path H:\lower.csv
$drive = Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\MountPoints2\##pptfo.net#**data#HOMEDRIVE*
$drive | Export-Csv -Path H:\upper.csv

#get the current environment user name. then change it to be first letter upper case
$name = Get-Date

#$name = [Environment]::USERNAME
#$name = (Get-Culture).TextInfo.ToTitleCase($text)
#get-date to troubleshoot if script ran

#set new
$newh = @{
    Path = $drive.PSPath
    Name = "_LabelFromReg"
    PropertyType = 'String'
    Value = $name
}
   
#call the functions
New-ItemProperty -Force @newh