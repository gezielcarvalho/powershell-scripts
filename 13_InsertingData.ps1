$InputData = @(
    (New-Object PSObject -Property @{ Name = "Jack1" }),
    (New-Object PSObject -Property @{ Name = "Jack2" }),
    (New-Object PSObject -Property @{ Name = "Jack3" })
)

# Remember to replace `COMPUTER_NAME` with your SQL Server instance name 
# and `SQLEXPRESS22` with the appropriate instance name.
Write-SqlTableData -ServerInstance 'COMPUTER_NAME\SQLEXPRESS22' -Database 'test3' -TableName 'Test_Table' -SchemaName 'dbo' -InputData $InputData -Verbose
