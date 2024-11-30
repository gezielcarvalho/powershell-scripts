$values = import-csv  -Path "C:\data\process.csv"
$values | Select-Object -First 10 | Out-GridView