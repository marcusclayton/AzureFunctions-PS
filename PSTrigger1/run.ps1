<#$requestBody = Get-Content $req -Raw | ConvertFrom-Json
$name = $requestBody.name

if ($req_query_name) 
{
    $name = $req_query_name 
}

Out-File -Encoding Ascii -FilePath $res -inputObject "Hello $name"
#>

. "D:\home\site\wwwroot\AzureFunctions-PS\PSTrigger1\bin\Add-Numbers.ps1"

Add-Numbers 4 6