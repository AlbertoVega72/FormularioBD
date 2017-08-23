##Creación de la BD
create database formu;
##Selección de la BD
use formu;

##Creación de la tabla
create table tablita(
Nombre nvarchar(15), 
ApellidoP nvarchar(15), 
ApellidoM nvarchar(15), 
Escuela nvarchar(15)
);

##Eliminar rastro del proceso a crear para evitar inconsistencias
drop procedure if exists guardaAlumno;

delimiter **
##Creación del proceso
create procedure guardaAlumno(in neim nvarchar(15),in neimP nvarchar(15),in neimM nvarchar(15),in scul nvarchar(15))
begin
declare msj nvarchar(20);
	insert into tablita(Nombre, ApellidoP, ApellidoM, Escuela)
    values (neim, neimP, neimM, scul);
	set msj = 'kmara';

end; **
delimiter ;
