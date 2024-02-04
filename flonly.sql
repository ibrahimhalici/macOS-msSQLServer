USE [master];

GO

    
RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/data/backups/AdventureWorksLT2022.bak'

GO