#Crear una tabla persona sin primary key y solamente con dos campos: id y nombre
CREATE TABLE `persona` (
`id` int NOT NULL,
`nombre` varchar(45) NOT NULL
);

#Inserte datos siguiendo un orden no secuencial para el id.
INSERT INTO persona (id, nombre) VALUES (5, 'Ashe');
INSERT INTO persona (id, nombre) VALUES (2, 'Annie');
INSERT INTO persona (id, nombre) VALUES (10, 'Ivern');
INSERT INTO persona (id, nombre) VALUES (9, 'Tristana');
INSERT INTO persona (id, nombre) VALUES (1, 'Azir');
INSERT INTO persona (id, nombre) VALUES (6, 'Kaisa');
INSERT INTO persona (id, nombre) VALUES (4, 'Lissandra');

#Consulte los datos para visualizar el orden de registros.
SELECT * FROM persona;

#Agregue una clave primaria para el campo id.
alter table persona add constraint pk_id primary key(id);

#Consulte los datos para visualizar el orden de registros.
select * from persona;
