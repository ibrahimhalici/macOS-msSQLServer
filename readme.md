Link: [medium yazi link](https://ibrahim-halici.medium.com/macos-içerisinde-docker-ile-mssql-server-kullanmak-ve-veri-tabanı-kurtarmak-ac8b3ed0775b)



// konteyneri çalıştır volume ile

docker run  -e "MSSQL_SA_PASSWORD=FreePalestine+" -p 1433:1433 -v /Users/shared/msSQLdb/data:/var/opt/mssql/data -v /Users/shared/msSQLdb/log:/var/opt/mssql/log -v /Users/shared/msSQLdb/secrets:/var/opt/mssql/secrets --name mymssql  -d mymssql:latest

// konteyner terminaline bağlan ve veri tabanlarını listele

/opt/mssql-tools/bin/sqlcmd  -S localhost -U SA -P 'FreePalestine+' -Q "sp_databases"

// import islemini yapacak olan SQL dosyasini olusturmak icin import dosyasini kesfedici sql'i calistir

/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'FreePalestine+' -i /var/opt/mssql/data/backups/flonly.sql

// kurtarma işlemi sql 

/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'FreePalestine+' -i /var/opt/mssql/data/backups/restore.sql

// şifre değiştir

opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'FreePalestine+' -Q "ALTER LOGIN sa WITH PASSWORD = '+
FreePalestine+x2' UNLOCK"
