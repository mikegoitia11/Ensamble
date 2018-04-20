drop database if exists mike1;
# Creo la base de datos curso1
create database mike1;
SET SQL_SAFE_UPDATES = 0;

# Verifico las bases de datos del servidor
show databases;

use mike1;

drop table if exists clientes;
create table clientes
(
 id_cliente 	integer unsigned NOT NULL auto_increment,
 nombre 		varchar(40),
 apellido 		varchar(100),
 telefono 		varchar(30),
 cuit varchar (30),
 Direccion varchar(30),
 PRIMARY KEY  (id_cliente) 
);

create table facturas

(letra char,
numero integer,
fecha date,
monto double,
primary key (letra,numero)
); 

-- Se realizo una tabla para ingresar un cierto numero de articulos, con su codigo,nombre,precio y stock

create table articulos


(
id_codigo integer,
nombre varchar (50),
precio double,
stock integer,
primary key (id_codigo)
);

drop table if exists agenda;

create table agenda
(nombre varchar(30),
domicilio varchar(30)
);


   
show tables;






-- Datos de las Facturas  

insert into facturas (letra,numero,fecha,monto) values ('A',1,'2017-01-12',1000);
insert into facturas (letra,numero,fecha,monto) values ('B',2,'2017-02-11',1500);
insert into facturas (letra,numero,fecha,monto) values ('C',3,'2017-03-07',1300);
insert into facturas (letra,numero,fecha,monto) values ('D',4,'2018-04-08',1400);
insert into facturas (letra,numero,fecha,monto) values ('E',5,'2018-05-09',1700);
insert into facturas (letra,numero,fecha,monto) values ('f',6,'2017-07-05',1900);
insert into facturas (letra,numero,fecha,monto) values ('t',5,'2017-08-09',1800);
insert into facturas (letra,numero,fecha,monto) values ('g',5,'2016-05-09',1700);	
insert into facturas (letra,numero,fecha,monto) values ('y',6,'2015-09-08',1500); 
insert into facturas (letra,numero,fecha,monto) values ('a',8,'2014-09-05',1400);

select * from facturas;

-- Datos de los articulos

insert into articulos (id_codigo,nombre,precio,stock) values (125,'escoba',500,5);
insert into articulos (id_codigo,nombre,precio,stock) values (17,'secador',600,6);
insert into articulos (id_codigo,nombre,precio,stock) values (984,'limpiador',800,7);
insert into articulos (id_codigo,nombre,precio,stock) values (45,'desoderante',900,8);
insert into articulos (id_codigo,nombre,precio,stock) values (111,'esponja',1100,9);
insert into articulos (id_codigo,nombre,precio,stock) values (66,'toalla',1200,7);
insert into articulos (id_codigo,nombre,precio,stock) values (96,'desengrasante',1300,8);
insert into articulos (id_codigo,nombre,precio,stock) values (75,'lavandina',501,7);
insert into articulos (id_codigo,nombre,precio,stock) values (69,'canilla',5,15);
insert into articulos (id_codigo,nombre,precio,stock) values (55,'varilla',5,18);

select * from articulos;


insert into clientes (nombre, apellido,cuit,direccion) values ('Juan','Perez',000000,'Chacarita');
insert into clientes (nombre, apellido,cuit,direccion) values ('Luis','Salas',5000566,'Avellaneda');
insert into clientes (nombre, apellido,cuit,direccion) values ('Pedro','Goitia',4000065,'Santa'); 
insert into clientes (nombre, apellido,cuit,direccion) values ('Alejandro','Suarez',8421201,'Boca');
insert into clientes (nombre, apellido,cuit,direccion) values ('Juana','Hernandez',1002514,'Palermo');
insert into clientes (nombre, apellido,cuit,direccion) values ('Luisa','Perez',45646874,'Rivadavia');
insert into clientes (nombre, apellido,cuit,direccion) values ('Petra','Suarez',465452131,'Caminito');
insert into clientes (nombre, apellido,cuit,direccion) values ('Luisa','Torquemada',4121354,'Once');
insert into clientes (nombre, apellido,cuit,direccion) values ('Javier','Hernandez',645212315,'Costa Rica');
insert into clientes (nombre, apellido,cuit,direccion) values ('Toro','Perez',55642354,'Soler');

select * from clientes;

-- Compruebo mi Base de Datos

describe articulos;
describe facturas;
describe clientes;

-- Creo la tabla Agenda


show tables;

-- Inserto los valores

insert into agenda (nombre,domicilio) values ('Alberto Mores','Colon 123');
insert into agenda (nombre,domicilio) values ('Juan Torres','Avellaneda 135');

select * from agenda;
describe agenda;

select * from 
articulos 
where precio >100;

select * from
articulos where precio <20 and precio >40;
 
select * from articulos where precio between 40 and 60;

select * from articulos where precio =40 and stock>30;

select * from articulos where precio =12 and precio =30 and precio =20;

select * from articulos where precio not in (12,20,30);

select * from articulos where precio in (12,20,30);
 
select * from articulos order by precio desc, nombre desc;

select *, (precio*1.21) as IVA  from articulos;
 
select id_codigo,nombre,precio, 3 as cuotas, precio/3*1.05 as cuota, stock from articulos;
use mike1;
drop table if exists informatica;
create table informatica
(
Codigo integer, 
Nombre Varchar(20),
Descripcion varchar(30),
Precio Float,
Cantidad integer);

describe informatica;

insert into informatica (codigo,nombre,descripcion,precio,cantidad) values (12,'impresora','Hp multifuncinal',400,25);
insert into informatica (codigo,nombre,descripcion,precio,cantidad) values (15,'Impresora', 'Epson 1200',500,30);
insert into informatica (codigo,nombre,descripcion,precio,cantidad) values (17,'Teclado','Genius',1500,40);
insert into informatica (codigo,nombre,descripcion,precio,cantidad) values (19, 'Camara','samsung',800,85);
insert into informatica (codigo,nombre,descripcion,precio,cantidad) values (20,'mouse','sony',100,45);

select * from informatica;

select 	* from  informatica where nombre like '%impresora%';

select * from informatica where precio >=500;

select * from informatica where cantidad >30;

select nombre,descripcion from informatica where precio <100;

select * from informatica where descripcion like '%hp%';

select * from informatica where precio between 100 and 200;

select * from articulos where precio*1.21<100;

select * from articulos;

select * from articulos where precio*1.21 and stock<10;

select * from articulos where precio/3<50;

select * from clientes;

update clientes
set nombre= 'Jose'
where id_cliente=1;

select * from clientes where id_cliente=3;

update clientes
set nombre='pablo',apellido='fuentes', cuit='20-21053119-0'
where id_cliente=3;

select * from clientes where id_cliente=3;

update clientes
set cuit =''
where cuit is null;

select * from clientes where id_cliente;


delete from
clientes 
where 
apellido='perez';

select * from clientes where id_cliente;

delete from
clientes
where cuit like '%0';

Select * from articulos;
update articulos set precio=precio*1.20 <=50;

select * from articulos;

 update articulos set precio=precio*1.15 >50;
 
 select * from articulos;
 
 update articulos set precio=precio*95 >200;

delete from articulos where stock=0;


















        



