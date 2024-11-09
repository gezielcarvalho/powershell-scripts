# Navigate to the SQL Server instance path

# Remember to replace `COMPUTER_NAME` with your SQL Server instance name 
# and `SQLEXPRESS22` with the appropriate instance name.

Set-Location SQLSERVER:\SQL\COMPUTER_NAME\SQLEXPRESS22

# Get the server object
$srv = Get-Item SQLSERVER:\SQL\COMPUTER_NAME\SQLEXPRESS22

# Create a new database
$db = New-Object -TypeName Microsoft.SqlServer.Management.Smo.Database -ArgumentList $srv, "Test3"
$db.Create()

# Reference the database and display the date when it was created.
$db = $srv.Databases["Test3"]
$db.CreateDate

# Drop the database
$db.Drop()

Set-Location C:
