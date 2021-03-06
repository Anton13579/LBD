BACKUP DATABASE [Venta y Consumo de Cigarrillos] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\Venta y Consumo de Cigarrillos.bak' WITH  DESCRIPTION = N'Primera Copia de seguridad Practica 1', NOFORMAT, NOINIT,  NAME = N'Venta y Consumo de Cigarrillos-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'Venta y Consumo de Cigarrillos' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'Venta y Consumo de Cigarrillos' )
if @backupSetId is null begin raiserror(N'Verify failed. Backup information for database ''Venta y Consumo de Cigarrillos'' not found.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Backup\Venta y Consumo de Cigarrillos.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO
