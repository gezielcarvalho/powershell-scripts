##Pipe Formating
get-service | format-list displayname, status, requiredservices
get-service | sort-object -property status | format-table displayname, status, requiredservices
get-service | sort-object -property status | format-list displayname, status, requiredservices 

###Pipe OutPut
get-service | out-file .\services.txt
get-service | sort-object -property displayname | export-csv .\servicesOrder.csv ####-Delimiter ";"