
--Clase 10 ejercicio 1
select * from usuario 
where nombreusuario = 'tcasazza'
go
--Clase 10 ejercicio 2

select * from usuario
where nombreusuario = 'tcasazza' AND contraseña = 'asd.456'
go
--consulta incorrecta
select * from usuario
where nombreusuario = 'tcasazza' AND contraseña = 'contraseñaincorrecta'
go
--Clase 10 ejercicio 3
select * from producto
where id = 1
go
--Clase 10 ejercicio 4
insert into usuario (nombre,apellido,nombreusuario,contraseña,mail)
values ('nergal','behemont','nergal123','nergalBehemont123','nergal@gmail.com')
go
--Clase 10 ejercicio 5
insert into producto
(descripciones,costo,precioventa,stock,idusuario)
values('medias sanas',50,100,1,2)
go
--Clase 11
--Obtener todos los productos vendidos 
select p.descripciones as 'productos' , pv.stock as 'ventas'  
from producto as p
inner join productovendido as pv
on p.id = pv.idproducto
go
--Agrego producto terminado en 'ina'
insert into producto (descripciones,costo,precioventa,stock,idusuario)
VALUES ('Harina',24000,30000,10,1)
go
--Agrego las ventas del producto terminado en 'ina'
insert into ProductoVendido(Stock,IdProducto,IdVenta)
values(25000,44,9)
go
--Obtener ventas mayores o igual a 10000 y que termine con 'ina'
select p.descripciones as 'Descripcion'
from producto as p
inner join productovendido as pv
on p.id = pv.idproducto
where p.precioventa >= 10000 and p.descripciones like '%ina'
go
--Insertar 20 productos de aceite girasol
insert into producto (Descripciones,Costo,PrecioVenta,Stock,IdUsuario)
values ('Aceite de girasol cocinero',350,500,20,1)
go
--Modificar el usuraio Tobias

update usuario
set contraseña = 'contraseña'
where id = 1
go
--Borrar usuario Perez

delete from usuario
where id = 2
go
--Poner en 0 el stock de los buzos en la tabla producto
update producto
set stock = 0
where descripciones = 'buzo'
go
--Eliminar el producto Musculosa
delete from producto
where descripciones = 'musculosa'
go
--Obtener los nombres de usuario que cargaron los productos
select u.nombreusuario as 'Nombre de usuario que cargaron productos'
from usuario as u
inner join producto as p
on u.id = p.idusuario
go