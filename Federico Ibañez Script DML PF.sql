USE municipio_proyecto_final;
-- INSERCIÓN DE DATOS


-- Truncate a la tabla de auditoria.
TRUNCATE TABLE log_auditoria;


-- tabla ORGANOS_MUNICIPIO

TRUNCATE TABLE organos_municipio;

INSERT INTO organos_municipio ()
VALUES
	(01,"administracion ejecutivo",01),
    (02,"Secretaria de Salud",02),
    (03,"Secretaria de Turismo",03),
    (04,"Secretaria de Transporte",04),
    (05,"Consejo Deliberante",05),
    (06,"Secretaria de obras publicas",06),
    (07,"Secretaria de Educacion",07),
    (08,"Secretaria de mejoramiento social",08)
    ;







-- tabla PRESUPUESTO

TRUNCATE TABLE presupuesto;

INSERT INTO presupuesto ()
VALUES
	(202301,2023,34000000000,01,3000000000),
    (202302,2023,34000000000,02,4000000000),
    (202303,2023,34000000000,03,2000000000),
    (202304,2023,34000000000,04,3000000000),
    (202305,2023,34000000000,05,3000000000),
    (202306,2023,34000000000,06,6000000000),
    (202307,2023,34000000000,07,6000000000),
    (202308,2023,34000000000,08,5000000000)
    ;




-- TABLA PROVEEDORES

TRUNCATE TABLE proveedores;


INSERT INTO proveedores ()
VALUES
	(01,"Campana_Materiales","Distrubucion"),
    (02,"Maderera_Mariel","Distrubucion"),			
    (03,"Asesoria_Puerto_Nuevo", "Servicio"),
    (04,"Museo_ferroviario","Servicio"),
    (05,"Banda_homenaje_Charly_Garcia","Servicio"),
    (06,"insumos_medicos_Homisped", "Distrubucion"),
    (07,"consultoria_política_RealPolitik", "Servicio"),
    (08,"Metropol_colectivos","Distrubucion"),
    (09,"Libreria_mayorista","Distribucion"),
    (10,"Textil_Carmela","Distribucion"),			
	(11,"Verduleria_mayorista","Distribucion"),
    (12,"Hoteleria_Melco","Servicio"),			
    (13,"Medicamentos_Medicare", "Distribucion"),
    (14,"Constructora_corralon", "Servicio"),			
	(15,"Centro_cultural_Democracia","Servicio"),
    (16,"Industria_tecnotech","Servicio"),
    (17,"Cañerias_Metalcan","Servicio"),
    (18,"Casa_de_tecnologia_Coderdept","Distribucion")
	;





-- tabla TRANSACCIONES

TRUNCATE TABLE transacciones;

INSERT INTO transacciones ()
VALUES
	(001,"compra_materiales",500000,06,01, "2023-01-02"),
    (002,"compra_materiales",650000,06,02, "2023-01-05"),
    (003,"asesoria_financiera",400000,01,03, "2023-01-10"),
    (004,"subcontratacion_construccion",2000000,06,14, "2023-01-16"),
    (005,"compra_guardapolvos",500000,07,10, "2023-02-24"),
    (006,"compra_colectivos",500000000,04,08, "2023-03-03"),
    (007,"pasajes_viaje_estudiantil",100000,07,04, "2023-03-15"),
    (008,"compra_medicamentos",10000000,02,13, "2023-03-27"),
    (009,"pasajes_viaje_jubilados",500000,03,15, "2023-04-04"),
    (010,"hospedaje_viaje_jubilados",1000000,03,12, "2023-04-04"),
    (011,"espectaculo_banda_homenaje_viaje_jubilados",750000,03,05, "2023-04-04"),
    (012,"compra_pizarrones",600000,07,02, "2023-04-15"),
    (013,"compra_atriles_concejales",650000,05,02, "2023-04-15"),
    (014,"compra_insumos_medicos",2000000,02,06, "2023-04-23"),
    (015,"compra_utiles_escolares",1000000,07,09, "2023-05-03"),
    (016,"subcontratacion_reparaciones_cañerias",650000,01,17, "2023-05-14")
    ;
    



-- tabla OBRAS

TRUNCATE TABLE obras;

INSERT INTO obras ()
VALUES
	(001,1000000,06,"reparacion_colegio_San_Martin",01),
    (002,3000000,06,"construccion_plaza_eduardo_costa",01),
    (003,500000,01,"reparacion_cañerias_municipalidad",17),
    (004,500000000,06,"modernizacion_centro_jubilados",18),
    (005,750000,06,"reparacion_calle_Montesalvo",01),
    (006,500000,08,"puesta_bebederos_plaza_eduardo_costa",16),
    (007,4000000000,06,"construccion_viviendas_Balcarce",02),
    (008,1500000000,05,"remodelacion_consejo_deliberante",02),
    (009,10000000,06,"construccion_comedor_municipal",01),
    (010,4500000000,06,"reparacion_edificios_duplex_municipales",01),
    (011,100000000000,01,"pago_sueldo_empleados_estables",null)
	;





-- tabla EMPLEADOS

TRUNCATE TABLE empleados;

INSERT INTO empleados ()
VALUES
	(01,"Carlos","Monterosa",2000,06,001,"Maestro mayor de obras", 700000),
    (02,"Mario","Gutierrez",1984,02,011,"Sub secretario de Salud",650000),
    (03,"Norma", "Madero", 1977,06,002,"Arquitecto",675000),
    (04,"Mariano","Cordero",1988,01,011,"Asesor financiero",500000),
    (05,"Juan","Neura",1975,05,011,"contador publico",675000),
    (06,"Gustavo","Morel",1982,06,006,"obrero municipal",600000),
    (07,"Camila","Ferrero",1980,07,011,"Profesora de matematica",650000),
    (08,"Miguel","Di Fino",1979,05,011,"Asesor politico",600000),
    (09,"Maria","Cosera",1994,03,011,"Encargada hotelera",650000),
    (10,"Alejandra","Noria",1990,08,011,"Secretaria de mejoramiento social",775000),
    (11,"Patricia","Redondo",1986,04,011,"Colectivera",675000),
    (12,"Marcelo","Redrado",1989,06,009,"obrero municipal",600000),
    (13,"Federico","Ibañez",2002,01,011,"Asesor economia",750000),
    (14,"Leandra","Marineli",2000,07,011,"Secretaria de Economia",775000),
    (15,"Mariano","Estinaqui",1988,08,011,"Sociologo",675000)
    ;




-- TABLAS PUENTE


-- tabla puente EMPLEADOS ORGANOS

TRUNCATE TABLE puente_empleados_organos_municipio;
  
INSERT INTO puente_empleados_organos_municipio ()
VALUES
	(01,06),
    (02,02),
    (03,06),
    (04,01),
    (05,05),
    (06,06),
    (07,07),
    (08,05),
    (09,03),
    (10,08),
    (11,04),
    (12,06),
    (13,01),
    (14,07),
    (15,08)
    ;





-- tabla PUENTE TRANSACCIONES ORGANOS

TRUNCATE TABLE puente_transacciones_organos_municipio;

INSERT INTO puente_transacciones_organos_municipio ()
VALUES
	(001,06),
    (002,06),
    (003,01),
    (004,06),
    (005,07),
    (006,04),
    (007,07),
    (008,02),
    (009,03),
    (010,03),
    (011,03),
    (012,07),
    (013,05),
    (014,02),
    (015,07),
    (016,01)
    ;
    
    
    

-- tabla puente PROVEEDORES OBRAS

TRUNCATE TABLE puente_proveedores_obras;

INSERT INTO puente_proveedores_obras ()
VALUES
	(001,01),
    (002,01),
    (003,17),
    (004,18),
    (005,01),
    (006,16),
    (007,02),
    (008,02),
    (009,01),
    (010,01)
    ;
    


-- tabla puente OBRAS ORGANOS

TRUNCATE TABLE puente_obras_organos_municipio;

INSERT INTO puente_obras_organos_municipio ()
VALUES
	(001,06),
    (002,06),
    (003,01),
    (004,06),
    (005,06),
    (006,08),
    (007,06),
    (008,05),
    (009,06),
    (010,06)
    ;
    
    
    
-- tabla puente EMPLEADOS ORGANOS

TRUNCATE TABLE puente_empleados_obras;

INSERT INTO puente_empleados_obras ()
VALUES
	(001,01),
    (011,02),
    (002,03),
    (011,04),
    (011,05),
    (006,06),
    (011,07),
    (011,08),
    (011,09),
    (011,10),
    (011,11),
    (009,12),
    (011,13),
    (011,14),
    (011,15)
    ;