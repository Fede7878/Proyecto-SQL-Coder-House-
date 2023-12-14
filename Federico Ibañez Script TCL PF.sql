USE municipio_proyecto_final;


-- ACTIVIDAD 1


SET @@foreign_key_checks = 0;
SET @@autocommit = 0;

-- SELECT * FROM transacciones;

START TRANSACTION;
	DELETE FROM transacciones WHERE transaccion_id = 13;
	DELETE FROM transacciones WHERE transaccion_id = 9;
	DELETE FROM transacciones WHERE transaccion_id = 2;
    DELETE FROM transacciones WHERE transaccion_id = 16;


-- SELECT * FROM transacciones WHERE transaccion_id = 13;
-- ROLLBACK
-- COMMIT





-- ACTIVIDAD 2





-- SELECT * FROM empleados;

START TRANSACTION;
INSERT INTO empleados (empleado_id, nombre, apellido, anio_nacimiento, organo_trabajo, obra_asignada, puesto, salario_por_mes) 
	VALUES (16,"Marcela", "Antonieta",1945,7,11,"Reclutadora",700000);
INSERT INTO empleados (empleado_id, nombre, apellido, anio_nacimiento, organo_trabajo, obra_asignada, puesto, salario_por_mes) 
	VALUES (17,"Ricardo", "Rodriguez",1955,6,10,"obrero municipal",600000);
INSERT INTO empleados (empleado_id, nombre, apellido, anio_nacimiento, organo_trabajo, obra_asignada, puesto, salario_por_mes) 
	VALUES (18,"German", "Martinez",1970,6,10,"obrero municipal",600000);
INSERT INTO empleados (empleado_id, nombre, apellido, anio_nacimiento, organo_trabajo, obra_asignada, puesto, salario_por_mes) 
	VALUES (19,"Alfredo", "Boca",1968,1,11,"Secretario económico",750000);

SAVEPOINT empleados1;

INSERT INTO empleados (empleado_id, nombre, apellido, anio_nacimiento, organo_trabajo, obra_asignada, puesto, salario_por_mes) 
	VALUES (20,"Jazmin", "Merinina",1972,1,11,"Secretaria",700000);
INSERT INTO empleados (empleado_id, nombre, apellido, anio_nacimiento, organo_trabajo, obra_asignada, puesto, salario_por_mes) 
	VALUES (21,"Pablo", "Carrizo",1975,1,11,"Secretario de planeamiento",800000);
INSERT INTO empleados (empleado_id, nombre, apellido, anio_nacimiento, organo_trabajo, obra_asignada, puesto, salario_por_mes) 
	VALUES (22,"Esteban", "Edul",1982,1,11,"Secretario de comunicaciones",800000);
INSERT INTO empleados (empleado_id, nombre, apellido, anio_nacimiento, organo_trabajo, obra_asignada, puesto, salario_por_mes) 
	VALUES (23,"Joaquin", "Carbello",1985,1,11,"Secretario de Informática",800000);

SAVEPOINT empleados2;
    
-- ROLLBACK to empleados1;
-- COMMIT