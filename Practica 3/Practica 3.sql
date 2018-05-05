USE [master]
GO

/****** Object:  Database [Venta y Consumo de Cigarrillos]    Script Date: 04/05/2018 11:59:32 p. m. ******/
DROP DATABASE [Venta y Consumo de Cigarrillos]
GO

/****** Object:  Database [Venta y Consumo de Cigarrillos]    Script Date: 04/05/2018 11:59:32 p. m. ******/
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

ALTER TABLE [dbo].[Almacenes] DROP CONSTRAINT [FK_Almacenes_Estancos]
GO

ALTER TABLE [dbo].[Almacenes] DROP CONSTRAINT [FK_Almacenes_Cigarrillos]
GO

/****** Object:  Table [dbo].[Almacenes]    Script Date: 04/05/2018 11:59:54 p. m. ******/
DROP TABLE [dbo].[Almacenes]
GO

/****** Object:  Table [dbo].[Almacenes]    Script Date: 04/05/2018 11:59:54 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Almacenes](
	[nif_estanco] [nvarchar](50) NOT NULL,
	[marca] [nvarchar](50) NOT NULL,
	[filtro] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[clase] [nvarchar](50) NOT NULL,
	[mentol] [nvarchar](50) NOT NULL,
	[unidades] [int] NOT NULL,
 CONSTRAINT [PK_Almacenes] PRIMARY KEY CLUSTERED 
(
	[nif_estanco] ASC,
	[marca] ASC,
	[filtro] ASC,
	[color] ASC,
	[clase] ASC,
	[mentol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Almacenes]  WITH CHECK ADD  CONSTRAINT [FK_Almacenes_Cigarrillos] FOREIGN KEY([marca], [filtro], [color], [clase], [mentol])
REFERENCES [dbo].[Cigarrillos] ([marca], [filtro], [color], [clase], [mentol])
GO

ALTER TABLE [dbo].[Almacenes] CHECK CONSTRAINT [FK_Almacenes_Cigarrillos]
GO

ALTER TABLE [dbo].[Almacenes]  WITH CHECK ADD  CONSTRAINT [FK_Almacenes_Estancos] FOREIGN KEY([nif_estanco])
REFERENCES [dbo].[Estancos] ([nif_estanco])
GO

ALTER TABLE [dbo].[Almacenes] CHECK CONSTRAINT [FK_Almacenes_Estancos]
GO


USE [Venta y Consumo de Cigarrillos]
GO

ALTER TABLE [dbo].[Cigarrillos] DROP CONSTRAINT [FK_Cigarrillos_Manufactura]
GO

/****** Object:  Table [dbo].[Cigarrillos]    Script Date: 05/05/2018 12:00:31 a. m. ******/
DROP TABLE [dbo].[Cigarrillos]
GO

/****** Object:  Table [dbo].[Cigarrillos]    Script Date: 05/05/2018 12:00:31 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cigarrillos](
	[marca] [nvarchar](50) NOT NULL,
	[filtro] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[clase] [nvarchar](50) NOT NULL,
	[mentol] [nvarchar](50) NOT NULL,
	[nicotina] [int] NOT NULL,
	[alquitran] [int] NOT NULL,
	[precio_venta] [money] NOT NULL,
	[precio_costo] [money] NOT NULL,
 CONSTRAINT [PK_Cigarrillos] PRIMARY KEY CLUSTERED 
(
	[marca] ASC,
	[filtro] ASC,
	[color] ASC,
	[clase] ASC,
	[mentol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cigarrillos]  WITH CHECK ADD  CONSTRAINT [FK_Cigarrillos_Manufactura] FOREIGN KEY([marca])
REFERENCES [dbo].[Manufactura] ([marca])
GO

ALTER TABLE [dbo].[Cigarrillos] CHECK CONSTRAINT [FK_Cigarrillos_Manufactura]
GO


USE [Venta y Consumo de Cigarrillos]
GO

ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_Compras_Almacenes]
GO

/****** Object:  Table [dbo].[Compras]    Script Date: 05/05/2018 12:01:02 a. m. ******/
DROP TABLE [dbo].[Compras]
GO

/****** Object:  Table [dbo].[Compras]    Script Date: 05/05/2018 12:01:02 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Compras](
	[fecha_compra] [date] NOT NULL,
	[nif_estanco] [nvarchar](50) NOT NULL,
	[marca] [nvarchar](50) NOT NULL,
	[filtro] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[clase] [nvarchar](50) NOT NULL,
	[mentol] [nvarchar](50) NOT NULL,
	[cantidad_comprada] [nvarchar](50) NOT NULL,
	[precio_compra] [money] NOT NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[fecha_compra] ASC,
	[nif_estanco] ASC,
	[marca] ASC,
	[filtro] ASC,
	[color] ASC,
	[clase] ASC,
	[mentol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Almacenes] FOREIGN KEY([nif_estanco], [marca], [filtro], [color], [clase], [mentol])
REFERENCES [dbo].[Almacenes] ([nif_estanco], [marca], [filtro], [color], [clase], [mentol])
GO

ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Almacenes]
GO


USE [Venta y Consumo de Cigarrillos]
GO

/****** Object:  Table [dbo].[Estancos]    Script Date: 05/05/2018 12:01:19 a. m. ******/
DROP TABLE [dbo].[Estancos]
GO

/****** Object:  Table [dbo].[Estancos]    Script Date: 05/05/2018 12:01:19 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Estancos](
	[nif_estanco] [nvarchar](50) NOT NULL,
	[expendeduria] [int] NOT NULL,
	[codigopostal_estanco] [int] NOT NULL,
	[nombre_estanco] [nvarchar](50) NOT NULL,
	[direccion_estanco] [nvarchar](50) NOT NULL,
	[localidad_estanco] [nvarchar](50) NOT NULL,
	[provincia_estanco] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Estancos_1] PRIMARY KEY CLUSTERED 
(
	[nif_estanco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [Venta y Consumo de Cigarrillos]
GO

/****** Object:  Table [dbo].[Fabricantes]    Script Date: 05/05/2018 12:01:33 a. m. ******/
DROP TABLE [dbo].[Fabricantes]
GO

/****** Object:  Table [dbo].[Fabricantes]    Script Date: 05/05/2018 12:01:33 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Fabricantes](
	[nombre_fabricante] [nvarchar](50) NOT NULL,
	[pais] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Fabricantes] PRIMARY KEY CLUSTERED 
(
	[nombre_fabricante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [Venta y Consumo de Cigarrillos]
GO

ALTER TABLE [dbo].[Manufactura] DROP CONSTRAINT [FK_Manufactura_Fabricantes]
GO

ALTER TABLE [dbo].[Manufactura] DROP CONSTRAINT [DF_Manufactura_embalaje]
GO

ALTER TABLE [dbo].[Manufactura] DROP CONSTRAINT [DF_Manufactura_carton]
GO

/****** Object:  Table [dbo].[Manufactura]    Script Date: 05/05/2018 12:02:07 a. m. ******/
DROP TABLE [dbo].[Manufactura]
GO

/****** Object:  Table [dbo].[Manufactura]    Script Date: 05/05/2018 12:02:07 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Manufactura](
	[marca] [nvarchar](50) NOT NULL,
	[nombre_fabricante] [nvarchar](50) NOT NULL,
	[carton] [int] NOT NULL,
	[embalaje] [int] NOT NULL,
 CONSTRAINT [PK_Manufactura] PRIMARY KEY CLUSTERED 
(
	[marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Manufactura] ADD  CONSTRAINT [DF_Manufactura_carton]  DEFAULT ((10)) FOR [carton]
GO

ALTER TABLE [dbo].[Manufactura] ADD  CONSTRAINT [DF_Manufactura_embalaje]  DEFAULT ((20)) FOR [embalaje]
GO

ALTER TABLE [dbo].[Manufactura]  WITH CHECK ADD  CONSTRAINT [FK_Manufactura_Fabricantes] FOREIGN KEY([nombre_fabricante])
REFERENCES [dbo].[Fabricantes] ([nombre_fabricante])
GO

ALTER TABLE [dbo].[Manufactura] CHECK CONSTRAINT [FK_Manufactura_Fabricantes]
GO


USE [Venta y Consumo de Cigarrillos]
GO

ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Almacenes]
GO

/****** Object:  Table [dbo].[Ventas]    Script Date: 05/05/2018 12:02:26 a. m. ******/
DROP TABLE [dbo].[Ventas]
GO

/****** Object:  Table [dbo].[Ventas]    Script Date: 05/05/2018 12:02:26 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ventas](
	[fecha_venta] [date] NOT NULL,
	[nif_estanco] [nvarchar](50) NOT NULL,
	[marca] [nvarchar](50) NOT NULL,
	[filtro] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[clase] [nvarchar](50) NOT NULL,
	[mentol] [nvarchar](50) NOT NULL,
	[cantidad_vendida] [nvarchar](50) NOT NULL,
	[precio_venta] [money] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[fecha_venta] ASC,
	[nif_estanco] ASC,
	[marca] ASC,
	[filtro] ASC,
	[color] ASC,
	[clase] ASC,
	[mentol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Almacenes] FOREIGN KEY([nif_estanco], [marca], [filtro], [color], [clase], [mentol])
REFERENCES [dbo].[Almacenes] ([nif_estanco], [marca], [filtro], [color], [clase], [mentol])
GO

ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Almacenes]
GO


