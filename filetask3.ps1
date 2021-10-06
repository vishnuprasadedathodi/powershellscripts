
#Task3

function task3($textfilepath )
{
$out= get-content -Path $textfilepath

Write-Host $out

foreach($item in $out)
{
 
New-Item -ItemType File -Path  D:\powershell_basics\task3 -Name ($item +".txt")
}
}

task3 D:\powershell_basics\task3.txt 