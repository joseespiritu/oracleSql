/*para consultar tablas en la base primero
tenemos que iniciar la base de datos */
SELECT * FROM all_tables;

-- CREAR UNA TABLA
create table usuario(
idUsuario int,
nombre char(10),
fecha_nacimiento date,
telefono char(10),
salario number(6,2)
);

select * from usuario;
describe usuario;

create table empleado(
id_empleado int not null,
nombre varchar2(20),
direccion varchar2(50),
id_documento varchar2(10),
sueldo number(6,2),
fecha_nacimiento date
);

select * from empleado;
describe empleado;

--INSERTAR DATOS
insert into empleado values(004, 'Ana', 'Avenida principal 350', '1234567891',4000.00, to_date('10/03/1988','dd/mm/yyyy'));


-- EJEMPLO WHERE
 create table articulos(
  codigo number(5),
  nombre varchar2(20),
  descripcion varchar2(30),
  precio number(7,2)
 );

 insert into articulos values (1,'impresora','Epson Stylus C45',400.80);
 insert into articulos values (2,'impresora','Epson Stylus C85',500);
 insert into articulos values (3,'monitor','Samsung 14',800);
 insert into articulos values (4,'teclado','ingles Biswal',100);
 insert into articulos values (5,'teclado','español Biswal',90);
 insert into articulos values (6, 'mouse', 'Genius',20);
 insert into articulos values (7, 'mouse','teclado blanco', 30);
 insert into articulos values (8, 'Computadora','Dell', 2000);
 
select * from articulos;--consulta para la tabla de articulos
select * from articulos where nombre = 'impresora';
select nombre, descripcion from articulos;
select nombre, descripcion from articulos where nombre = 'mouse';


-- OPERADORES RELACIONES
select * from articulos where nombre = 'monitor';
select * from articulos where nombre != 'monitor';
select * from articulos where precio > 100; 
select * from articulos where precio < 100;
select * from articulos where precio >= 100;
select * from articulos where precio <= 100;


-- BORRADO DE DATOS EN TABLA
 create table agenda(
  apellido varchar2(30),
  nombre varchar2(20),
  domicilio varchar2(30),
  telefono varchar2(11)
 );

 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Alvarez','Alberto','Colon 123','4234567');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Salas','Susana','Gral. Paz 1234','4123456');
   
select * from agenda;
delete from agenda where nombre = 'Juan';
delete from agenda;


-- ACTUALIZACION DE REGISTRO
update articulos set nombre = 'impresora' where codigo = 2;
update articulos set nombre = 'computadora', precio='3000' where codigo = 8;
update articulos set precio = 1000;--cambia el registro de todos los datos







