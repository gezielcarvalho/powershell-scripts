﻿[string] $SqlAuthLoginName = "sa" #$SqlAuthCredential.GetNetworkCredential().UserName
[string] $SqlAuthPassword = "yourStrong123Password" #$SqlAuthCredential.GetNetworkCredential().Password

[string] $ConnectionString = "Server=localhost;Database=master;User ID=$SqlAuthLoginName;Password=$SqlAuthPassword;Encrypt=false;TrustServerCertificate=False;Connection Timeout=30;"

$Connection = New-Object System.Data.SqlClient.SqlConnection
$Connection.ConnectionString = $ConnectionString
$Connection.Open();


$Command = $Connection.CreateCommand()
$Command.CommandText = 
"
select @@SERVERNAME
"
    
$reader = $Command.ExecuteReader()
$reader.HasRows
$Command.Dispose()
$Connection.Close()
