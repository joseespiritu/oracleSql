--CREACION DEL USUARIO
CREATE USER miusuario IDENTIFIED BY laclave
default tablespace system
temporary tablespace temp
quota unlimited on system;

--PRIVILEGIOS DE USUARIO
grant create session to miusuario;
grant create table to miusuario;
grant create view to miusuario;
grant create procedure to miusuario;
grant create sequence to miusuario;

--PRIVILEGIO ADMINISTRAR TABLAS
grant all on nombretabla to miusuario;
revoke all on nombretabla from miusuario;

--ELIMINAR USUARIO
drop user miusuario cascade;
