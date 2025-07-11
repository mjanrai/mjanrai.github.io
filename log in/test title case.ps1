$name = "one.two.three"
$name | Out-File -FilePath H:\1.txt
#$name1 = (Get-Culture).TextInfo.ToTitleCase($name)
#$name1 | Out-File -FilePath H:\2.txt
#$name1 |Export-Csv -Path H:\3.csv

$name2 = Get-Culture
$name2 | Out-File -FilePath H:\2.txt
$name3 = $name2.TextInfo
$name3 | Out-File -FilePath H:\3.txt
$name4 = $name3.ToUpper("test")
$name4 | Out-File -FilePath H:\4.txt