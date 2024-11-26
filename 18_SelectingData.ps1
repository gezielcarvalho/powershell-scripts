[string] $SqlAuthLoginName = "sa" 
[string] $SqlAuthPassword = "yourStrong123Password" 

# Remember to replace `COMPUTER_NAME` with your SQL Server instance name 
# and `SQLEXPRESS22` with the appropriate instance name.
[string] $ConnectionString = "Server=COMPUTER_NAME\SQLEXPRESS22;Database=master;User ID=$SqlAuthLoginName;Password=$SqlAuthPassword;Encrypt=false;TrustServerCertificate=False;Connection Timeout=30;"

$Connection = New-Object System.Data.SqlClient.SqlConnection
$Connection.ConnectionString = $ConnectionString
$Connection.Open();


$Command = $Connection.CreateCommand()
$Command.CommandText = 
"
select *
from Test3.dbo.Test_Table
where Name = @a1
"

$Command.Parameters.AddWithValue("@a1", "Jack")

$reader = $Command.ExecuteReader()

while ($reader.Read())
{
    Write-Output $reader.item("Name")
}

$Command.Dispose()
$Connection.Close()
