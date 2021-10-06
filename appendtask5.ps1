$list=Get-ChildItem -Path D:\powershell_basics\prudentialTraining
Write-Host $list 

$ps1list=Get-ChildItem -Path D:\powershell_basics\prudentialTraining -Recurse|where {$_.extension -eq ".ps1"}

if( Test-Path D:\powershell_basics\append.ps1 )
{
Remove-Item D:\powershell_basics\append.ps1
}
New-Item -ItemType File -Path D:\powershell_basics -Name append.ps1

function appendfile($path)
{

foreach($item in $ps1list)
{
 $content=Get-Content -Path $item
 
 Add-Content -Path $path -Value $content 

}
}
appendfile D:\powershell_basics\append.ps1