$url= "https://jsonplaceholder.typicode.com/todos/1"
$status= wget $url -UseBasicParsing|% {$_.StatusCode}

if ($status -eq 200)
{
Write-Host "url exist"
}
else
{
write-Host "Invalid url"
}
