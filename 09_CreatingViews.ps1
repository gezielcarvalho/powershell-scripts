# Remember to replace `COMPUTER_NAME` with your SQL Server instance name 
# and `SQLEXPRESS22` with the appropriate instance name.
# Set the path context to the local, default instance of SQL Server.  
Set-Location SQLSERVER:\SQL\COMPUTER_NAME\SQLEXPRESS22\Databases\

$db = get-item test3  
  
# Define a View object variable by supplying the parent database, view name and schema in the constructor.   
$myview  = New-Object -TypeName Microsoft.SqlServer.Management.SMO.View -argumentlist $db, "Test_View", "dbo"  
  
# Set the TextHeader and TextBody property to define the view.   
$myview.TextHeader = "CREATE VIEW [dbo].[Test_View] AS"  
$myview.TextBody ="SELECT Name from Test_Table"
  
# Create the view on the instance of SQL Server.   
$myview.Create()  
  
# Remove the view.   
# $myview.Drop();

Set-Location c