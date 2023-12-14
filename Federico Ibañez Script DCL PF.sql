-- CREACIÓN DE USUARIOS

USE municipio_proyecto_final;


--  usuario MARIO RONDON, con permiso solo de lectura
--  usuario MARIO RONDON, con permiso solo de lectura
--  usuario MARIO RONDON, con permiso solo de lectura
--  usuario MARIO RONDON, con permiso solo de lectura



-- DROP USER IF EXISTS mrondon@localhost;
-- CREATE USER IF NOT EXISTS mrondon@localhost;


-- GRANT SELECT ON municipio_proyecto_final.* TO mrondon@localhost;

SHOW GRANTS FOR mrondon@localhost;


--  usuario LAURA TOLEDO, con permisos de lectura, inserción y modificación
--  usuario LAURA TOLEDO, con permisos de lectura, inserción y modificación
--  usuario LAURA TOLEDO, con permisos de lectura, inserción y modificación
--  usuario LAURA TOLEDO, con permisos de lectura, inserción y modificación


-- DROP USER IF EXISTS ltoledo@localhost;
-- CREATE USER IF NOT EXISTS ltoledo@localhost;

-- GRANT SELECT, INSERT, UPDATE ON municipio_proyecto_final.* TO ltoledo@localhost;

SHOW GRANTS FOR ltoledo@localhost;


