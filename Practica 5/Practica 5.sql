USE [master]
GO

/****** Object:  Database [Venta y Consumo de Cigarrillos]    Script Date: 06/05/2018 12:22:18 a. m. ******/
DROP DATABASE [Venta y Consumo de Cigarrillos]
GO

/****** Object:  Database [Venta y Consumo de Cigarrillos]    Script Date: 06/05/2018 12:22:18 a. m. ******/
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

Select * From Cigarrillos
where marca = 'Bohemios';

Select * From Estancos_Distribuidor
where nombre_estanco = 'OXXO';

Select * From Estancos_Distribuidor
where nombre_estanco = 'SevenEleven';

Select * From Estancos_Distribuidor
where calle_estanco = 'Av. Aztlán';

Select * From Estancos_Distribuidor
where codigopostal_estanco = '64140';

Select rfc_estancos from Estancos_Distribuidor group by rfc_estancos;
Select codigopostal_estanco from Estancos_Distribuidor group by codigopostal_estanco;
Select marca from Cigarrillos group by marca;
Select nombre_fabricante from Fabricantes group by nombre_fabricante;
Select nombre_fabricante from Manufactura	group by nombre_fabricante;

Select count (rfc_estancos) from Estancos_Distribuidor;
Select count (codigopostal_estanco) from Estancos_Distribuidor;
Select count (marca) from Cigarrillos;
Select count (nombre_fabricante) from Fabricantes;
Select count (nombre_fabricante) from Manufactura;

Select marca, sum(precio_compra)
from Compras
group by marca
having sum(precio_compra) < 150;

Select marca, sum(precio_compra)
from Compras
group by marca
having sum(precio_compra) > 10;

Select marca, sum(precio_compra)
from Compras
group by marca
having sum(precio_compra) = 30;

Select marca, sum(precio_compra)
from Compras
group by marca
having sum(precio_compra) > 30;

Select marca, sum(precio_compra)
from Compras
group by marca
having sum(precio_compra) >=30;

Select top 3 * from Estancos_Distribuidor;
select top 3 * from Compras where precio_compra = 30;
Select top 5 * from Estancos_Distribuidor where expendeduria >=25999;
Select top 10 * from Estancos_Distribuidor where codigopostal_estanco < 64200;
Select top 2 * from Fabricantes;
