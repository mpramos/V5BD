create table if not exists Movie(
    Identificacion INTEGER PRIMARY KEY,
    titulo TEXT,
    director TEXT,
    anio INTEGER,
    duracion_minutos INTEGER
)
insert into Movie values(1,'Historia del juguete','Juan Lasseter',1995,81)
INSERT INTO movie VALUES (2, 'La vida de un bicho', 'Juan Lasseter', 1998, 95);
INSERT INTO movie VALUES (3, 'Toy Story 2', 'Juan Lasseter', 1999, 93);
INSERT INTO movie VALUES (4, 'Monstruos inc.', 'Pete Docter', 2001, 92);
INSERT INTO movie VALUES (5, 'Buscando a Nemo', 'Andres Stanton', 2003, 107);
INSERT INTO movie VALUES (6, 'Los Increíbles', 'pájaro brad', 2004, 116);
INSERT INTO movie VALUES (7, 'Carros', 'Juan Lasseter', 2006, 117);
INSERT INTO movie VALUES (8, 'Ratatouille', 'pájaro brad', 2007, 115);
INSERT INTO movie VALUES (9, 'WALL-E', 'Andres Stanton', 2008, 104);
INSERT INTO movie VALUES (10, 'Arriba', 'Pete Docter', 2009, 101);
INSERT INTO movie VALUES (11, 'Toy Story 3', 'Lee Unkrich', 2010, 103);
INSERT INTO movie VALUES (12, 'coches 2', 'Juan Lasseter', 2011, 120);
INSERT INTO movie VALUES (13, 'Corajudo', 'Brenda Chapman', 2012, 102);
INSERT INTO movie VALUES (14, 'Monsters University', 'Daniel Scanlon', 2013, 110);

select * from Movie



create table Taquillas(
    id_pelicula int primary key,
    clasificacion decimal(3,1),
    ventas_locales bigint,
    ventas_internacionales bigint
)
insert into Taquillas(id_pelicula,clasificacion,ventas_locales,ventas_internacionales) 
values 
  		(5 , 8.2 , 380843261 , 555900000),
        (14 , 7.4 , 268492764 , 475066843),
        (8 , 8 , 206445654 , 417277164),
        (12, 6.4 , 191452396 , 368400000),
        (3 , 7.9 , 245852179 , 239163000),
        (6 , 8 , 261441092 , 370001000 ),
        (9, 8.5 , 223808164 , 297503696),
        (11 , 8.4 , 415004880 , 648167031),
        (1 , 8.3 , 191796233 , 170162503),
        (7 , 7.2 , 244082982 , 217900167),
        (10 , 8.3 , 293004164 , 438338580),
        (4 , 8.1 , 289916256 , 272900000),
        (2 , 7.2 , 162798565 , 200600000),
        (13 , 7.2 , 237283207 , 301700000)
select * from Taquillas
create table Empleado(
    Role TEXT,
    Nombre TEXT,
    Edificio TEXT,
    Años_empleado TEXT
)
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Becky A.', '1e', 4);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Dan B.', '1e', 2);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Sharon F.', '1e', 6);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Dan M.', '1e', 4);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Malcom S.', '1e', 1);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'tylar s.', '2w', 2);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'Sherman D.', '2w', 8);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'Jacob J.', '2w', 6);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'Lilia A.', '2w', 7);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'Brandon J.', '2w', 7);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Gerente', 'Scott K.', '1e', 9);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Gerente', 'Shirlee M.', '1e', 3);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Gerente', 'Daria O.', '2w', 6);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Gerente', 'Daria O.', '2w', 6);
INSERT INTO Empleado (Role, Nombre, Edificio, Años_empleado) VALUES ('Gerente', 'Juana O.', NULL, 6);

select * from Empleado

create table Edificio(
	Nombre_Del_Edificio TEXT PRIMARY KEY,
	Capacidad INTEGER
)
insert into Edificio(Nombre_Del_Edificio,Capacidad) values('1e', 24);
insert into Edificio(Nombre_Del_Edificio,Capacidad) values('1s', 32);
insert into Edificio(Nombre_Del_Edificio,Capacidad) values('2e', 16);
insert into Edificio(Nombre_Del_Edificio,Capacidad) values('2w', 20);

