USE municipio_proyecto_final;

-- -- VIEW vw_count_empleados_por_organo


select * from empleados;
select * from organos_municipio;


CREATE VIEW vw_count_empleados_por_organo AS
SELECT 
	org.nombre_organo,
	count(e.empleado_id) as cantidad
FROM empleados AS e
JOIN organos_municipio AS org
ON e.organo_trabajo = org.id_organo
GROUP BY org.nombre_organo
;

SELECT * FROM vw_count_empleados_por_organo;




-- VIEW vw_obras_por_organo


CREATE VIEW vw_obras_por_organo AS
SELECT 
	org.nombre_organo,
	count(obr.obra_id) AS cantidad_obras, 
	sum(obr.presupuesto_asignado) AS total_presupuesto
FROM obras AS obr 
JOIN organos_municipio AS org
ON org.id_organo = obr.organo_obra
GROUP BY org.nombre_organo 
;


SELECT * FROM vw_obras_por_organo;





-- VIEW vw_proveedores


SELECT * FROM transacciones;
SELECT * FROM proveedores;


CREATE VIEW vw_proveedores AS
SELECT 
	pro.nombre_proveedor, 
	pro.tipo_proveedor, 
    SUM(tra.monto_transaccion) monto_total
FROM proveedores AS pro
JOIN transacciones AS tra
ON pro.proveedor_id = tra.cliente_contratista
GROUP BY pro.nombre_proveedor,pro.tipo_proveedor
ORDER BY monto_total DESC;



SELECT * FROM vw_proveedores;




-- VIEW vw_transacciones_por_organo


SELECT * FROM transacciones;
SELECT * FROM organos_municipio;


CREATE VIEW vw_transacciones_por_organo AS 
SELECT 
	org.nombre_organo,
    count(tra.transaccion_id) AS cantidad_transacciones,
    sum(tra.monto_transaccion) AS monto_total
FROM transacciones AS tra
JOIN organos_municipio AS org
ON tra.organo_contratante = org.id_organo
GROUP BY org.nombre_organo
ORDER BY cantidad_transacciones DESC,monto_total DESC
;


SELECT * FROM vw_transacciones_por_organo;




-- VIEW vw_empleados_debajo_salario_minimo 


SELECT * FROM empleados;
SELECT * FROM organos_municipio;


CREATE VIEW vw_empleados_debajo_salario_minimo AS
SELECT 
	emp.nombre,
    emp.apellido,
    org.nombre_organo,
    emp.puesto,
    emp.salario_por_mes
FROM empleados AS emp
JOIN organos_municipio AS org
ON emp.organo_trabajo = org.id_organo
WHERE emp.salario_por_mes < 675000
ORDER BY salario_por_mes
;

SELECT * FROM vw_empleados_debajo_salario_minimo;