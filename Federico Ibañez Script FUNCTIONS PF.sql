USE municipio_proyecto_final;

SELECT * FROM empleados;


-- FUNCTION fn_salario_neto
	-- FUNCIÓN QUE MUESTRA EL SALARIO POR MES EN NETO PARA UN EMPLEADO, INTRODUCIENDO UN ID Y LA CANTIDAD QUE SE DESCUENTA

-- CONSULTA
	SELECT salario_por_mes -30000 AS Neto
	-- , salario_por_mes
	-- , empleado_id
	FROM empleados
	WHERE empleado_id = 5
	;

-- FUNCION

DROP FUNCTION IF EXISTS fn_salario_neto;

DELIMITER //
CREATE FUNCTION fn_salario_neto (
								p_descuento INT, 
								p_empleado_id INT
                                )
RETURNS INT
DETERMINISTIC
BEGIN
	
    DECLARE v_salario_neto INT;
    SET v_salario_neto =
		(SELECT salario_por_mes - p_descuento AS Neto
        FROM empleados
        WHERE empleado_id = p_empleado_id);
	RETURN v_salario_neto;

END //
DELIMITER ;


SELECT fn_salario_neto (30000,5) AS salario_neto;




-- FUNCTION fn_clasif_transaccion
	-- FUNCIÓN QUE MUESTRA LA CLASIFICACIÓN DEL MONTO DE UNA TRANSACCIÓN INTRODUCIENDO ESE MISMO MONTO



DROP FUNCTION IF EXISTS fn_clasif_transaccion;

DELIMITER //
CREATE FUNCTION fn_clasif_transaccion ( p_transaccion_id INT)
RETURNS VARCHAR (10)
DETERMINISTIC

BEGIN
	CASE
		WHEN p_transaccion_id >= 9000000
		THEN RETURN "alta";
		WHEN p_transaccion_id >= 2000000
		THEN RETURN "media";
		WHEN p_transaccion_id < 2000000
		THEN RETURN "baja";
	END CASE;
END // DELIMITER ;


SELECT fn_clasif_transaccion (2000005) AS clasificacion_transaccion;