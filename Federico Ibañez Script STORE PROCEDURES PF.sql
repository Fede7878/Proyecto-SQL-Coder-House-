SELECT * FROM EMPLEADOS;

DROP PROCEDURE IF EXISTS sp_salarios;

DELIMITER //

CREATE PROCEDURE sp_salarios (
								IN Salario_empleado INT,
                                IN Salario_minimo INT
                                )
	
    BEGIN
		DECLARE v_salario_empleado INT;
        DECLARE v_salario_minimo INT;
    
        
        
       
        
        IF Salario_empleado < Salario_minimo THEN
			SELECT Salario_minimo, Salario_empleado, "por debajo del salario minimo" AS estado;
            
				ELSEIF Salario_empleado > Salario_minimo THEN
					SELECT Salario_empleado, Salario_minimo, "por encima del salario minimo" AS estado;
                    
						ELSEIF Salario_empleado = Salario_minimo THEN
							SELECT Salario_empleado, Salario_minimo, "ambos salarios son iguales" as estado;
								
                                ELSE SELECT Salario_empleado, Salario_minimo;
		END IF;
		
	END // 
	DELIMITER ;
	
   CALL sp_salarios (20000,30000);
   
   
   
   
   
   SELECT * FROM EMPLEADOS;
   
   SELECT anio_nacimiento, YEAR(current_date()) - 60 FROM empleados;
   

DROP PROCEDURE IF EXISTS clasif_edad;

DELIMITER //
CREATE PROCEDURE clasif_edad
							(
							IN anio_nacimiento INT,
                            IN edad_jubilatoria INT
							)
   
BEGIN
	
    DECLARE cant_anios_dif INT;
    DECLARE minimo_anios INT;
		
        SET minimo_anios =
			YEAR(current_date()) - edad_jubilatoria;
    
		IF anio_nacimiento > minimo_anios THEN 
			SELECT  minimo_anios, "NO en edad de jubilación"  ;
				
                ELSEIF anio_nacimiento < minimo_anios THEN
					SELECT minimo_anios, "en edad de jubilación" FROM empleados;
						
                        ELSE SELECT "-";
		END IF;
END //
DELIMITER ;

CALL clasif_edad ("2005", "1987")


                
	
    
   
   
   