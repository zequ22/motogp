--CREAR BD
create database MOTOGP

--USAR BD
use MOTOGP

--CREACION DE TABLAS
create table Marcas(
marca nvarchar(60) primary key,
origen nvarchar(60))

create table Equipos(
equipo nvarchar(60) primary key,
colores nvarchar(60),
marca nvarchar(60) foreign key references Marcas(marca))

create table Pilotos(
id_piloto int identity primary key,
nro_piloto int UNIQUE,
nombre nvarchar(60),
apellido nvarchar(60),
nacionalidad nvarchar(60),
equipo nvarchar(60) foreign key references Equipos(equipo))

--PERMISO PARA DIAGRAMA
alter authorization on database::MOTOGP to SA

--CARGA DE DATOS
insert into Marcas
values ('Honda','Japon'),('Yamaha','Japon'),('KTM','Austria'),('Ducati','Italia'),('Suzuki','Japon'),('Aprilia','Italia')

insert into Equipos
values ('Repsol','Naranja, Blanco y Rojo','Honda'),('Monster','Azul y Negro','Yamaha'),('Lenovo','Rojo','Ducati'),('Ecstar','Azul','Suzuki'),('Pramac','Azul, Blanco y Rojo','Ducati')

insert into Pilotos
values (93,'Marc','Marquez','España','Repsol'),(20,'Fabio','Quartararo','Francia','Monster'),(63,'Francesco','Bagnaia','Italia','Lenovo'),(43,'Jack','Miller','Australia','Lenovo'),(42,'Alex','Rins','España','Ecstar'),(89,'Jorge','Martin','España','Pramac'),(5,'Johann','Zarco','Francia','Pramac')

select * from Pilotos