-- Cual es el numero de telefono y la direccion del sanatorio?
select telefono, direccion
from institucion;

-- cuantas especialidades tiene el sanatorio?
select count(*) id_institucion
from especialidades;

-- Que medicos estan atendiendo en turno mañana?
select  nombre, apellido, diaTurno
from doctores
where  diaTurno like "%mañana%";

-- Que medicos estan atendiendo en turno tarde?
select  nombre, apellido, diaTurno
from doctores
where  diaTurno like "%tarde%";

-- cuales son las especializaciones, el nombre y apellido de los doctores?
select distinct nombre, apellido, tipoEspecialidad
from doctores 
join especialidades on doctores.idEspecialidad = especialidades.id;
 
-- Lista de nombre, apellido, edad y dni de los pacientes del doctor Mariano lopez
SELECT CONCAT_WS(" ", pacientes.nombre, pacientes.apellido) AS "Pacientes", edad, dni
FROM pacientes
JOIN turnos ON pacientes.id = turnos.idpaciente
JOIN doctores ON doctores.id = turnos.idDoctor
WHERE doctores.nombre = 'Mariano';

-- Lista de paciente con horario y fecha de la odontologa Miranda Melo 
SELECT CONCAT_WS(" ", pacientes.nombre, pacientes.apellido) AS "Pacientes", horario, fecha
FROM pacientes
JOIN turnos ON pacientes.id = turnos.idpaciente
JOIN doctores ON doctores.id = turnos.idDoctor
WHERE doctores.nombre = 'Miranda'; 

-- Cual es el listado de pacientes de neumologia?
SELECT pacientes.nombre, pacientes.apellido
FROM pacientes
JOIN turnos ON pacientes.id = turnos.idPaciente
JOIN doctores ON turnos.idDoctor = doctores.id
JOIN especialidades ON doctores.idEspecialidad = especialidades.id
WHERE especialidades.tipoEspecialidad = 'NEUMOLOGIA';

-- Quienes son medicos cardiologos?
select doctores.nombre, doctores.apellido
from doctores
join especialidades on doctores.idEspecialidad = especialidades.id
where especialidades.tipoEspecialidad = "cardiologia";

-- Que fecha y horario de atencion tiene el paciente Patricio Ledezma?
select turnos.fecha, turnos.horario
from turnos
join pacientes on turnos.idpaciente = pacientes.id
where pacientes.nombre = "Patricio" and pacientes.apellido = "ledezma"; 

-- Mostrar a los medicos y sus pacientes, con todos sus datos, con la fecha y horario de atencion 
SELECT doctores.nombre AS nombre_medico, doctores.apellido AS apellido_medico, doctores.dia AS dia_atencion, doctores.diaTurno AS turno_atencion,
       pacientes.nombre AS nombre_paciente, pacientes.apellido AS apellido_paciente, turnos.fecha, turnos.horario
FROM doctores
JOIN turnos  ON doctores.id = turnos.idDoctor
JOIN pacientes ON turnos.idPaciente = pacientes.id;