USE [master]
GO

/****** Object:  Database [Venta y Consumo de Cigarrillos]    Script Date: 06/05/2018 12:08:43 a. m. ******/
DROP DATABASE [Venta y Consumo de Cigarrillos]
GO

/****** Object:  Database [Venta y Consumo de Cigarrillos]    Script Date: 06/05/2018 12:08:43 a. m. ******/
CREATE DATABASE [Venta y Consumo de Cigarrillos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Venta y Consumo de Cigarrillos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Venta y Consumo de Cigarrillos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Venta y Consumo de Cigarrillos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Venta y Consumo de Cigarrillos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Venta y Consumo de Cigarrillos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET ARITHABORT OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET RECOVERY FULL 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET  MULTI_USER 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET QUERY_STORE = OFF
GO

USE [Venta y Consumo de Cigarrillos]
GO

ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [Venta y Consumo de Cigarrillos] SET  READ_WRITE 
GO

USE [Venta y Consumo de Cigarrillos]
GO

INSERT INTO [dbo].[Ventas]
           ([fecha_venta]
           ,[rfc_estanco]
           ,[marca]
           ,[filtro]
           ,[color]
           ,[clase]
           ,[mentol]
           ,[cantidad_vendida]
           ,[precio_venta])
     VALUES
           ('2018/03/30'
           ,'MOOA731006MX8'
           ,'Bohemios'
           ,'Con'
           ,'R'
           ,'Normal'
           ,'Sin'
           ,150
           ,30)

Select * from Ventas order by fecha_venta ASC;

GO

USE [Venta y Consumo de Cigarrillos]
GO

INSERT INTO [dbo].[Almacenes]
           ([rfc_estanco]
           ,[marca]
           ,[filtro]
           ,[color]
           ,[clase]
           ,[mentol]
           ,[unidades])
     VALUES
           ('MOOA731006MX8'
           ,'Bohemios'
           ,'Con'
           ,'R'
           ,'Normal'
           ,'Sin'
           ,150)

Select *
From Almacenes order by marca ASC

GO

USE [Venta y Consumo de Cigarrillos]
GO

INSERT INTO [dbo].[Cigarrillos]
           ([marca]
           ,[filtro]
           ,[color]
           ,[clase]
           ,[mentol]
           ,[nicotina]
           ,[alquitran]
           ,[precio_venta]
           ,[precio_costo])
     VALUES
           ('Bohemios'
           ,'Con'
           ,'R'
           ,'Normal'
           ,'Sin'
           ,1.2
           ,6.0
           ,30
           ,20)

Select *
	From Cigarrillos order by marca ASC


GO

USE [Venta y Consumo de Cigarrillos]
GO

INSERT INTO [dbo].[Compras]
           ([fecha_compra]
           ,[rfc_estanco]
           ,[marca]
           ,[filtro]
           ,[color]
           ,[clase]
           ,[mentol]
           ,[cantidad_comprada]
           ,[precio_compra])
     VALUES
           ('01/02/2018'
           ,'MOOA731006MX8'
           ,'Bohemios'
           ,'Con'
           ,'R'
           ,'Normal'
           ,'Sin'
           ,150
           ,30)

Update Compras

set fecha_compra = '2018/03/30'
where fecha_compra = '2018/03/13'

Select * From Compras order by fecha_compra ASC

GO

USE [Venta y Consumo de Cigarrillos]
GO

INSERT INTO [dbo].[Fabricantes]
           ([nombre_fabricante]
           ,[pais])
     VALUES
           ('Cigarros Grupo Gara�on'
           ,'M�xico')
		   ,('Air-Care de M�xico'
		   ,'M�xico')
		   ,('British American Tobacco M�xico, S.A. De C.V'
		   ,'M�xico')
		   ,('Philip Morris Mexico'
		   ,'M�xico')

Update Fabricantes
	set nombre_fabricante = 'Air-Care de M�xico'
	where nombre_fabricante = 'Air-Care'

Update Fabricantes
	set nombre_fabricante = 'British American Tobacco M�xico, S.A. De C.V'
	where nombre_fabricante = 'British American Tobacco'

Delete From Fabricantes
	where nombre_fabricante = ('Philip Morris Mexico')

Delete From Fabricantes
	where nombre_fabricante = ('Air-Care de M�xico')

INSERT INTO [dbo].[Fabricantes]
           ([nombre_fabricante]
           ,[pais])
     VALUES
           ('Philip Morris Mexico'
		   ,'M�xico')

Select*
From Fabricantes order by nombre_fabricante ASC;

GO


USE [Venta y Consumo de Cigarrillos]
GO

INSERT INTO [dbo].[Manufactura]
           ([marca]
           ,[nombre_fabricante]
           ,[carton]
           ,[embalaje])
     VALUES
           ('IQOS'
           ,'Philip Morris Mexico'
           ,10
           ,20)
		   ,('TEEPS'
           ,'Philip Morris Mexico'
           ,10
           ,20)
		   ,('MESH'
           ,'Philip Morris Mexico'
           ,10
           ,20)
		   ,('Marlboro'
           ,'Philip Morris Mexico'
           ,10
           ,20)
		   ,('Delicados'
           ,'Philip Morris Mexico'
           ,10
           ,20)
		   ,('Benson & Hedges'
           ,'Philip Morris Mexico'
           ,10
           ,20)
		   ,('Chesterfield'
           ,'Philip Morris Mexico'
           ,10
           ,20)
		   ,('Faros'
           ,'Philip Morris Mexico'
           ,10
           ,20)
		   ,('Montana Shots'
           ,'British American Tobacco M�xico, S.A. De C.V'
           ,10
           ,20)
		   ,('Fiesta'
           ,'British American Tobacco M�xico, S.A. De C.V'
           ,10
           ,20)
		   ,('Bohemios'
           ,'British American Tobacco M�xico, S.A. De C.V'
           ,10
           ,20)
		   ,('Gol'
           ,'British American Tobacco M�xico, S.A. De C.V'
           ,10
           ,20)
		   ,('Camel'
           ,'British American Tobacco M�xico, S.A. De C.V'
           ,10
           ,20)
		   ,('Lucky Strike'
           ,'British American Tobacco M�xico, S.A. De C.V'
           ,10
           ,20)
		   ,('Pall Mall'
           ,'British American Tobacco M�xico, S.A. De C.V'
           ,10
           ,20)
		   ,('Kent'
           ,'British American Tobacco M�xico, S.A. De C.V'
           ,10
           ,20)
		   ,('Gara�on'
           ,'Cigarros Grupo Gara�on'
           ,10
           ,20)
		   ,('Soberano'
           ,'Cigarros Grupo Gara�on'
           ,10
           ,20)
		   ,('Link'
           ,'Cigarros Grupo Gara�on'
           ,10
           ,20)
		   ,('Santorini'
           ,'Cigarros Grupo Gara�on'
           ,10
           ,20)


Select*
From Manufactura order by nombre_fabricante ASC;

GO

USE [Venta y Consumo de Cigarrillos]
GO

INSERT INTO [dbo].[Estancos_Distribuidor]
           ([rfc_estancos]
           ,[expendeduria]
           ,[codigopostal_estanco]
           ,[nombre_estanco]
           ,[calle_estanco]
           ,[numeroext_estanco]
           ,[numeroint_estanco]
           ,[ciudad_estanco]
           ,[estado_estanco])
     VALUES
           ('MOOA731006MX8'
           ,23872
           ,64104
           ,'OXXO'
           ,'Av. Aztl�n'
           ,9080
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MOOA9807064Y0'
           ,23462
           ,64140
           ,'OXXO'
           ,'Valle de Santa Luc�a'
           ,4273
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('GAMR890324TD1'
           ,12364
           ,64230
           ,'OXXO'
           ,'Prol Aztl�n'
           ,7909
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MEIR980317T3I'
           ,23462
           ,64140
           ,'OXXO'
           ,'Av. Aztl�n'
           ,7751
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('GURP980631PU2'
           ,48193
           ,64140
           ,'OXXO'
           ,'Av. Aztl�n'
           ,632
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MEOA731006MX8'
           ,09876
           ,64140
           ,'OXXO'
           ,'Solidaridad'
           ,7435
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MEOA9807064Y0'
           ,52950
           ,64250
           ,'OXXO'
           ,'Diecis�is de Septiembre'
           ,7070
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('GEMR890324TD1'
           ,13243
           ,64160
           ,'OXXO'
           ,'Diecis�is de Septiembre'
           ,6460
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MOIR980317T3I'
           ,48105
           ,64270
           ,'OXXO'
           ,'Av. Penitenciaria'
           ,381
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('GIRP980631PU2'
           ,63748
           ,64180
           ,'OXXO'
           ,'Zacatepec'
           ,101
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MAOA731006MX8'
           ,39062
           ,64460
           ,'SevenEleven'
           ,'Av. Rodrigo G�mez'
           ,1213
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MAOA9807064Y0'
           ,14432
           ,64190
           ,'SevenEleven'
           ,'Mar Caribe'
           ,107
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('GUMR890324TD1'
           ,17046
           ,64190
           ,'SevenEleven'
           ,'Av. Rodrigo G�mez'
           ,11
           ,3
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MUIR980317T3I'
           ,69884
           ,64190
           ,'SevenEleven'
           ,'Av. Adolfo Ruiz Cortines'
           ,101
           ,1
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('GARP980631PU2'
           ,10769
           ,64190
           ,'SevenEleven'
           ,'Av. Adolfo Ruiz Cortines'
           ,101
           ,2
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MIOA731006MX8'
           ,47260
           ,64460
           ,'SevenEleven'
           ,'Av. Sim�n Bol�var'
           ,1901
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MIOA9807064Y0'
           ,90613
           ,64460
           ,'SevenEleven'
           ,'Av. Matehuala'
           ,103
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('GOMR890324TD1'
           ,24727
           ,64460
           ,'SevenEleven'
           ,'Av. Prof. Mois�s S�enz'
           ,608
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('MAIR980317T3I'
           ,12306
           ,64460
           ,'SevenEleven'
           ,'Av. Dr. Eduardo Aguirre Peque�o'
           ,1772
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')
		   ,('GERP980631PU2'
           ,39706
           ,64460
           ,'SevenEleven'
           ,'Av. Prof. Mois�s S�enz'
           ,1667
           ,null
           ,'Monterrey'
           ,'Nuevo L�on')


Delete From Estancos_Distribuidor
	where rfc_estancos = 'MOOADDMMAAYMXY'

Update Estancos_Distribuidor
set expendeduria = 98761
where expendeduria = 9876

Update Estancos_Distribuidor
set expendeduria = 98352
where expendeduria = 12364

Update Estancos_Distribuidor
set calle_estanco = 'Av. Diecis�is de Septiembre'
where calle_estanco = 'Diecis�is de Septiembre'

Select *
	From Estancos_Distribuidor order by nombre_estanco ASC;

GO


