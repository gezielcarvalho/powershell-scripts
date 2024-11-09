[string] $SqlAuthLoginName = "sa" 
[string] $SqlAuthPassword = "yourStrong123Password" 

# Remember to replace `COMPUTER_NAME` with your SQL Server instance name 
# and `SQLEXPRESS22` with the appropriate instance name.
[string] $ConnectionString = "Server=JAYZEE\SQLEXPRESS22;Database=test3;User ID=$SqlAuthLoginName;Password=$SqlAuthPassword;Encrypt=false;TrustServerCertificate=False;Connection Timeout=30;"

$Connection = New-Object System.Data.SqlClient.SqlConnection
$Connection.ConnectionString = $ConnectionString
$Connection.Open();


$Command = $Connection.CreateCommand()
$Command.CommandText = 
"
CREATE TABLE Test_Table4
(c1 INT,
c2 VARCHAR(50)
)
"
    
$reader = $Command.ExecuteReader()
$reader.HasRows
$Command.Dispose()
$Connection.Close()
