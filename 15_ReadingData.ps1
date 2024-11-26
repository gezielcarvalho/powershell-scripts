# Define parameters
$serverInstance = 'JAYZEE\SQLEXPRESS22'
$database = 'test3'
$schemaName = 'dbo'
$tableName = 'Test_Table'

# Define the query
$query = "SELECT * FROM [$schemaName].[$tableName]"

# Use TrustServerCertificate in the connection string
$connectionString = "Server=$serverInstance;Database=$database;Integrated Security=True;TrustServerCertificate=True;"

# Execute the query and store the results
try {
    $result = Invoke-Sqlcmd -Query $query -ConnectionString $connectionString
    Write-Output $result
} catch {
    Write-Error "Error executing query: $_"
}
