create view view_Ventas
as
select cantidad_vendida 
from Ventas
select * from view_Ventas; 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create view view_rfcestancosCompras
as
Select Estancos_Distribuidor.rfc_estancos, Estancos_Distribuidor.expendeduria, Compras.rfc_estanco, Compras.precio_compra
from Estancos_Distribuidor
inner join Compras on Estancos_Distribuidor.rfc_estancos = Compras.rfc_estanco
select * from view_rfcestancosCompras
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create view view_rfcEstancosCompras0
as
Select Estancos_Distribuidor.rfc_estancos, Estancos_Distribuidor.expendeduria, Compras.rfc_estanco, Compras.precio_compra
from Estancos_Distribuidor
left join Compras on Estancos_Distribuidor.rfc_estancos = Compras.rfc_estanco
select * from view_rfcEstancosCompras0
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create view view_rfcEstancosCompras1
as
Select Estancos_Distribuidor.rfc_estancos, Estancos_Distribuidor.expendeduria, Compras.rfc_estanco, Compras.precio_compra
from Estancos_Distribuidor
right join Compras on Estancos_Distribuidor.rfc_estancos = Compras.rfc_estanco
select * from view_rfcEstancosCompras1
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create view view_rfcEstancosCompras2
as
Select Estancos_Distribuidor.rfc_estancos, Estancos_Distribuidor.expendeduria, Compras.rfc_estanco, Compras.precio_compra
from Estancos_Distribuidor
full join Compras on Estancos_Distribuidor.rfc_estancos = Compras.rfc_estanco
select * from view_rfcEstancosCompras2
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create view view_rfcEstancos
as
Select rfc_estancos from Estancos_Distribuidor group by rfc_estancos;
select * from view_rfcEstancos
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create view view_CPEstanco
as
Select codigopostal_estanco from Estancos_Distribuidor group by codigopostal_estanco;
select * from view_CPEstanco
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create view view_marca
as
Select marca from Cigarrillos group by marca;
select * from view_marca
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create view view_nombreFabricante
as
Select nombre_fabricante from Fabricantes group by nombre_fabricante;
select * from view_nombreFabricante
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Create view view_nombreFabricanteM
as
Select nombre_fabricante from Manufactura	group by nombre_fabricante;
select * from view_nombreFabricanteM
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
