Write-Output "1 - Creating a function that returns an object"
function a {
    $value = Get-Item -Path "C:\"
    $value
}
Write-Output "2 - Declaring a variable and assigning a value"
$Value = "bla"
Write-Output "3 - Calling the variable"
$Value
Write-Output "4 - Calling the function"
a
Write-Output "5 - Calling the variable again"
$Value
Write-Output "6 - Assigning a new value to the variable"
$Value = "something else"
Write-Output "7 - Calling the variable again"
$value

