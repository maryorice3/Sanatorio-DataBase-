-- Crear la base de datos
drop database if exists sanatorio;
create database sanatorio;

-- Usar la base de datos
use sanatorio;

-- Crear la tabla institucion
create table institucion(
	id int auto_increment primary key, -- FK con especialidades
	nombre varchar (30) not null,
	cuit varchar (15) not null,
	telefono int,
	direccion varchar (50) not null,
	horario varchar (10) not null
);

-- Crear la tabla doctores
create table doctores(
	id int auto_increment primary key, -- FK turnos
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	dia enum ('LUNES','MARTES','MIERCOLES','JUEVES','VIERNES','SABADO','DOMINGO'),
	diaTurno enum ('MAÑANA','TARDE'),
	idEspecialidad int not null
);

-- Crear la tabla especialidades
create table especialidades(
	id int auto_increment primary key,
        id_institucion int,
	tipoEspecialidad enum ('GASTROENTEROLOGIA','CARDIOLOGIA','PEDIATRIA','NEUMOLOGIA','ODONTOLOGIA','OFTALMOLOGIA','OTORRINOLARINGOLOGIA','ENDOCRINOLOGIA')
);

-- Crear la tabla turnos
create table turnos(
    id int auto_increment primary key,
    idDoctor int, -- KF doctor (id)
    idPaciente int, -- KF pacientes (id)
    fecha varchar (10),
    horario varchar(5)
);

-- Crear la tabla pacientes
create table pacientes(
	id int auto_increment primary key,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	edad int,
	dni int,
	obra_social varchar (30) not null
);

-- alteramos las tablas y las relacionamos
alter table turnos
    add constraint FK_Doctor_Id
    foreign key(idDoctor)
    references doctores(id);

alter table turnos
    add constraint FK_Paciente_Id
    foreign key(idPaciente)
    references pacientes(id);
    
alter table especialidades
    add constraint FK_institucion_Id
    foreign key(id_institucion)
    references institucion(id);
    
alter table doctores
    add constraint FK_Especialidades_Id
    foreign key(idEspecialidad)
    references especialidades(id);