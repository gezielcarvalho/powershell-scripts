# Remember to replace `COMPUTER_NAME` with your SQL Server instance name 
# and `SQLEXPRESS22` with the appropriate instance name.
Read-SqlTableData -serverInstance 'COMPUTER_NAME\SQLEXPRESS22' -database Test3 -TableName Test_Table -SchemaName dbo 