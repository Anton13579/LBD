-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Antonio
-- Create date: 06/Marzo/2018
-- Description:	Regresa Marcas y Fabricantes
-- =============================================
CREATE PROCEDURE PrimerProcedure 
	-- Add the parameters for the stored procedure here
	@marca nvarchar(50) = null, 
	@nombre_fabricante nvarchar(50) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT marca, nombre_fabricante
	from Manufactura
	where marca = @marca AND nombre_fabricante = @nombre_fabricante;
END
GO

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Antonio
-- Create date: 2018
-- Description:	Cantidades Compradas
-- =============================================
CREATE PROCEDURE ComprasCantidad
	-- Add the parameters for the stored procedure here
	@Compras int = 0, 
	@p2 int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT cantidad_comprada
	from Compras
END
GO

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Antonio
-- Create date: 06/Marzo/2018
-- Description:	Obtener Paises
-- =============================================
CREATE PROCEDURE Paises 
	-- Add the parameters for the stored procedure here
	@pais nvarchar(50) = null, 
	@nombre_fabricante nvarchar(50) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT pais, nombre_fabricante
	From Fabricantes
	Where pais = @pais AND nombre_fabricante = @nombre_fabricante;
		
END
GO

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Antonio
-- Create date: 06/Marzo/2018
-- Description:	Marcas en Almacen
-- =============================================
CREATE PROCEDURE MA 
	-- Add the parameters for the stored procedure here
	@marca nvarchar(50) = 0, 
	@p2 int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT marca
	from Almacenes
END
GO
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Antonio
-- Create date: 06/05/2018
-- Description:	Cantidad de Ventas
-- =============================================
CREATE PROCEDURE CVentas 
	-- Add the parameters for the stored procedure here
	@ventas int = 0, 
	@p2 int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT cantidad_vendida
	from Ventas
END
GO

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

-- ================================================
-- Template generated from Template Explorer using:
-- Create Inline Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Antonio
-- Create date: 06/Marzo/2018
-- Description:	PrimeraFuncion
-- =============================================
CREATE FUNCTION FirstFunction 
(	
	-- Add the parameters for the function here
	@valor1 int, 
	@valor2 int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT Compras.cantidad_comprada, Compras.precio_compra, SUM(cantidad_comprada+precio_compra) as 'Total'
	From Compras
	where cantidad_comprada = @valor1 and precio_compra = @valor2
	Group by Compras.cantidad_comprada, Compras.precio_compra
)
GO

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

-- ================================================
-- Template generated from Template Explorer using:
-- Create Inline Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Antonio
-- Create date: 06/Marzo/2018
-- Description:	PrimeraFuncion
-- =============================================
CREATE FUNCTION SecondFunction 
(	
	-- Add the parameters for the function here
	@valor1 int, 
	@valor2 int
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT Compras.cantidad_comprada, Compras.precio_compra, SUM(cantidad_comprada+precio_compra) as 'Total'
	From Compras
	where cantidad_comprada = @valor1 and precio_compra = @valor2
	Group by Compras.cantidad_comprada, Compras.precio_compra
)
GO

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

USE [Venta y Consumo de Cigarrillos]
GO

/****** Object:  Trigger [InsertarCompra]    Script Date: 06/05/2018 06:39:19 p. m. ******/
DROP TRIGGER [dbo].[InsertarCompra]
GO

/****** Object:  Trigger [dbo].[InsertarCompra]    Script Date: 06/05/2018 06:39:20 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[InsertarCompra] 
   ON  [dbo].[Compras]
   AFTER 
   INSERT
AS
BEGIN
	Select * from inserted 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

END
GO

ALTER TABLE [dbo].[Compras] ENABLE TRIGGER [InsertarCompra]
GO


-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------

USE [Venta y Consumo de Cigarrillos]
GO

/****** Object:  Trigger [InsertarCompra]    Script Date: 06/05/2018 06:39:19 p. m. ******/
DROP TRIGGER [dbo].[InsertarCompra]
GO

/****** Object:  Trigger [dbo].[InsertarCompra]    Script Date: 06/05/2018 06:39:20 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[DeletedCompra] 
   ON  [dbo].[Compras]
   AFTER 
   INSERT
AS
BEGIN
	Select * from deleted 
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

END
GO

ALTER TABLE [dbo].[Compras] ENABLE TRIGGER [InsertarCompra]
GO


