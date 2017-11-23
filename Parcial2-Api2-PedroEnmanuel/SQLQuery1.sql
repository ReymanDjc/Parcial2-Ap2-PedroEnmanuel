create table Presupuestos(
PresupuestoId int identity(1,1) primary key, 
Descripcion varchar(100), 
Fecha date,
Monto decimal,
CategoriaId int );

create table PresupuestoDetalle(
Id int identity(1,1) primary key, 
PresupuestoId int,
Descripcion varchar(100), 
Meta decimal,
Logrado decimal);