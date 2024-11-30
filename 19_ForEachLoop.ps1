$folders = Get-ChildItem -Path "C:\"
$folders | ForEach-Object {
    [string] $Path = "C:\" + $_.Name 
    Get-ChildItem -Path $Path
}