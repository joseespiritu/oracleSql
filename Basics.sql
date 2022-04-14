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
 
 select * from articulos;
select * from articulos where nombre = 'impresora';



