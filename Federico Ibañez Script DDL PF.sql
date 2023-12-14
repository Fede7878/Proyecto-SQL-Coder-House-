-- ULTIMO

DROP SCHEMA IF EXISTS `Municipio_Proyecto_Final`;
CREATE SCHEMA IF NOT EXISTS `Municipio_Proyecto_Final`;
USE `Municipio_Proyecto_Final`;



CREATE TABLE `empleados`
  (
	`empleado_id`  INT auto_increment  NOT NULL ,
	`nombre` VARCHAR(30) DEFAULT NULL,
	`apellido` VARCHAR(30) DEFAULT NULL,
	`anio_nacimiento` SMALLINT DEFAULT NULL,
	`organo_trabajo` INT DEFAULT NULL,
	`obra_asignada` INT DEFAULT NULL,
	`puesto` VARCHAR(50) DEFAULT NULL,
	`salario_por_mes` INT DEFAULT NULL,
	UNIQUE INDEX `ak_empleados` (`empleado_id`, `anio_nacimiento`),
	PRIMARY KEY (`empleado_id`)
    );
    
    
    
CREATE TABLE `organos_municipio`
  (
	`id_organo` INT,
	`nombre_organo` VARCHAR(50),
	`presupuesto_asignado` INT,
	PRIMARY KEY (`id_organo`)
  );
  
  
  
CREATE TABLE `puente_empleados_organos_municipio`
  (
	`empleado_id` INT,
	`id_organo`   INT,
	CONSTRAINT `pk_puente_empleados_organos_municipio` PRIMARY KEY (`empleado_id`,`id_organo`),
    FOREIGN KEY (empleado_id) REFERENCES empleados (empleado_id),
    FOREIGN KEY (id_organo) REFERENCES organos_municipio (id_organo)
  );
  
  

CREATE TABLE `obras`
  (
	`obra_id` INT auto_increment,
	`presupuesto_asignado` BIGINT,
	`organo_obra` INT,
	`tipo_obra` VARCHAR(60),
	`proveedores` INT,
	PRIMARY KEY (`obra_id`)
  );



CREATE TABLE `puente_empleados_obras`
  (
	`obra_id` INT,
	`empleado_id` INT,
	CONSTRAINT `pk_puente_empleados_obras` PRIMARY KEY (`obra_id`, `empleado_id`),
    FOREIGN KEY (empleado_id) REFERENCES empleados (empleado_id),
    FOREIGN KEY (obra_id) REFERENCES obras (obra_id)
  );



CREATE TABLE `puente_obras_organos_municipio`
  (
	`obra_id` INT,
	`id_organo` INT,
	CONSTRAINT `pk_puente_obras_organos_municipio` PRIMARY KEY (`obra_id`,`id_organo`),
	FOREIGN KEY (obra_id) REFERENCES obras (obra_id),
    FOREIGN KEY (id_organo) REFERENCES organos_municipio (id_organo)
  );



CREATE TABLE `proveedores`
  (
	`proveedor_id` INT auto_increment,
	`nombre_proveedor` VARCHAR(50),
	`tipo_proveedor`   VARCHAR(60),
	PRIMARY KEY (`proveedor_id`)
  );



CREATE TABLE `puente_proveedores_obras`
  (
	`obra_id` INT,
	`proveedor_id` INT,
	CONSTRAINT `pk_puente_proveedores_obras` PRIMARY KEY (`obra_id`, `proveedor_id`),
	FOREIGN KEY (obra_id) REFERENCES obras (obra_id),
    FOREIGN KEY (proveedor_id) REFERENCES proveedores (proveedor_id)
  );
  
  
  
CREATE TABLE `transacciones`
  (
	`transaccion_id` INT auto_increment,
	`tipo_transaccion` VARCHAR(50),
	`monto_transaccion` INT,
	`organo_contratante` INT,
	`cliente_contratista` INT,
	`fecha_transaccion` DATE,
	PRIMARY KEY (`transaccion_id`),
	UNIQUE INDEX `ak_transaccion` (`transaccion_id`, `monto_transaccion`),
	FOREIGN KEY (cliente_contratista) REFERENCES proveedores (proveedor_id)
  );



CREATE TABLE `puente_transacciones_organos_municipio`
  (
	`transaccion_id` INT,
	`id_organo` INT,
	CONSTRAINT `pk_puente_transacciones_organos_municipio` PRIMARY KEY (`transaccion_id`, `id_organo`),
    FOREIGN KEY (transaccion_id) REFERENCES transacciones (transaccion_id),
    FOREIGN KEY (id_organo) REFERENCES organos_municipio (id_organo)
  );
  
  
  
CREATE TABLE `presupuesto`
  (
	`id_presupuesto` INT auto_increment,
    `anio_presupuesto` SMALLINT,
	`total_presupuesto` BIGINT,
	`asignacion_organo` INT,
	`monto_presupuesto_organo` BIGINT,
	PRIMARY KEY (`id_presupuesto`),
	FOREIGN KEY (asignacion_organo) REFERENCES organos_municipio (id_organo)
  ); 
  
  
  

-- CREACIÓN DE TRIGGERS
-- CREACIÓN DE TRIGGERS
-- CREACIÓN DE TRIGGERS
-- CREACIÓN DE TRIGGERS
-- CREACIÓN DE TRIGGERS
-- CREACIÓN DE TRIGGERS




-- CREACIÓN TABLA AUDITORIA

USE municipio_proyecto_final;

DROP TABLE IF EXISTS log_auditoria;
CREATE TABLE IF NOT EXISTS log_auditoria 
	(
		id_log INT AUTO_INCREMENT,
        accion VARCHAR (10),
        tabla VARCHAR (50),
		camponuevo_campoviejo VARCHAR (300),
        usuario VARCHAR (50),
        fecha_accion DATE,
        PRIMARY KEY (id_log)
	)
;

-- CREACIÓN TRIGGERS
-- 1- trigger INSERT de auditoria transacciones
-- Sirve para completar la tabla auditoria en caso de que se inserte un nuevo registro
	
    DROP TRIGGER IF EXISTS trg_log_transacciones_insert
    
    DELIMITER //
		CREATE TRIGGER trg_log_transacciones_insert
		AFTER INSERT ON municipio_proyecto_final.transacciones
		FOR EACH ROW
		BEGIN
    
			INSERT INTO log_auditoria (accion, tabla, camponuevo_campoviejo, usuario, fecha_accion)
			VALUES ('insert', 'transacciones', CONCAT('new id:  ', NEW.transaccion_id, '  ,new monto: ', NEW.monto_transaccion) ,current_user(),now() ) ;
    
		END //
    DELIMITER ;
    
	
-- 2- trigger DELETE de auditoria transacciones
-- Sirve para completar la tabla auditoria en caso de que se elimine algún registro

	
    DROP TRIGGER IF EXISTS trg_log_transacciones_delete
    
    DELIMITER //
		CREATE TRIGGER trg_log_transacciones_delete
        BEFORE DELETE ON municipio_proyecto_final.transacciones
        FOR EACH ROW
        BEGIN
			INSERT INTO log_auditoria (accion, tabla, camponuevo_campoviejo, usuario, fecha_accion)
            VALUES ('delete', 'transacciones', CONCAT('old id:', OLD.transaccion_id, '  old monto: ',OLD. monto_transaccion) ,current_user(), now());
		END // 
        DELIMITER ;



-- 3- trigger UPDATE de auditoria transacciones
-- Sirve para completar la tabla auditoria en caso de que se modifique algún registro

	DROP TRIGGER IF EXISTS trg_log_transacciones_update
    
    DELIMITER //
    CREATE TRIGGER trg_log_transacciones_update
    BEFORE UPDATE ON municipio_proyecto_final.transacciones
    FOR EACH ROW
    BEGIN
		INSERT INTO log_auditoria (accion, tabla, camponuevo_campoviejo, usuario, fecha_accion)
        VALUES ('update', 'transacciones', CONCAT('old id: ',OLD.transaccion_id,'  old monto: ',OLD.monto_transaccion,' |  new id: ',NEW.transaccion_id,'  new monto: ',monto_transaccion)
        ,current_user(), now()) ;
	END //
    DELIMITER ;
    