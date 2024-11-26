[string] $SqlAuthLoginName = "sa" 
[string] $SqlAuthPassword = "yourStrong123Password" 

# Remember to replace `COMPUTER_NAME` with your SQL Server instance name 
# and `SQLEXPRESS22` with the appropriate instance name.
[string] $ConnectionString = "Server=COMPUTER_NAME\SQLEXPRESS22;Database=test3;User ID=$SqlAuthLoginName;Password=$SqlAuthPassword;Encrypt=false;TrustServerCertificate=False;Connection Timeout=30;"


$Connection = New-Object System.Data.SqlClient.SqlConnection
$Connection.ConnectionString = $ConnectionString
$Connection.Open();


$Command = $Connection.CreateCommand()
$Command.CommandText = 
"
INSERT INTO dbo.Test_Table (TestName)
VALUES ('Jack');
"
    
$reader = $Command.ExecuteReader()
$reader.HasRows
$Command.Dispose()
$Connection.Close()
