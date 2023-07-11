-- Usar la base de datos
use sanatorio;

-- Insertar datos en la tabla institucion
insert into institucion (id,nombre, cuit, telefono, direccion, horario) values
(1,'Sanatorio Estrella','30-67546356',42765434,'San Martin 503','24 horas');

-- Insertar datos en la tabla especialidades
insert into especialidades (id_institucion, tipoEspecialidad) values
(1,'GASTROENTEROLOGIA'),
(1,'CARDIOLOGIA'),
(1,'PEDIATRIA'),
(1,'NEUMOLOGIA'),
(1,'ODONTOLOGIA'),
(1,'OFTALMOLOGIA'),
(1,'OTORRINOLARINGOLOGIA'),
(1,'ENDOCRINOLOGIA');

-- Insertar datos en la tabla doctores
insert into doctores (nombre,apellido,dia,diaTurno,idEspecialidad) values
('Mariano','Lopez','LUNES','MAÑANA',1),
('Oscar','Deluca','MARTES','MAÑANA',2),
('Carla','Morales','LUNES','MAÑANA',4),
('Micaela','Sanchez','JUEVES','TARDE',3),
('Martin','Perez','MIERCOLES','TARDE',4),
('Miranda','Melo','VIERNES','MAÑANA',5),
('Cesar','Cazula','SABADO','MAÑANA',6);

-- Insertar datos en la tabla pacientes
insert into pacientes(nombre,apellido,edad,dni,obra_social) values
('Julieta','Pascal',28,34876754,'vital'),
('Miguel','Diaz',24,41874534,'Ceramista'),
('Julian','Mendoza',18,44587594,'Borge'),
('Rodrigo','Palacio',12,45876745,'DIG'),
('Patricio','Ledezma',17,44987865,'Rido'),
('David','Merendez',32,27987657,'Vista'),
('Monica','Silva',29,34765434,'Naranja A'),
('Dante','Rios',31,26876754,'Conten'),
('Diana','Fernandez',25,35787654,'Derecha B'),
('Sandro','Galvan',24,36875643,'Izquierda H'),
('Sebastian','Molina',36,25432654,'Celeste D'),
('Brian','Gimenez',40,24765734,'Marmol SR');

-- Insertar datos en la tabla turnos
insert into turnos(idDoctor,idPaciente,fecha,horario) values
(6,1,'2021-06-04','11:00'),
(2,1,'2021-06-10','12:00'),
(2,2,'2021-06-09','08:00'),
(6,2,'2021-06-11','10:00'),
(1,3,'2021-06-07','09:00'),
(5,3,'2021-06-16','15:00'),
(3,4,'2021-06-14','11:00'),
(1,4,'2021-06-07','11:00'),
(5,5,'2021-06-16','15:00'),
(2,5,'2021-06-09','11:00'),
(2,6,'2021-06-10','12:00');