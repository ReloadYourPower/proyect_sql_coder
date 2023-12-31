-- Crear usuarios con diferentes permisos

-- Usuario 1
CREATE USER 'rODRIADM'@'localhost' IDENTIFIED BY '14-07-2023';
-- Conceder permisos de lectura, escritura y eliminación sobre todas las tablas
GRANT SELECT, INSERT, DELETE ON proyect_schema.* TO 'rODRIADM'@'localhost';

-- Usuario 2
CREATE USER 'user121'@'localhost' IDENTIFIED BY 'password1';
GRANT SELECT ON proyect_schema.* TO 'user121'@'localhost';

-- Usuario 3
CREATE USER 'user12'@'localhost' IDENTIFIED BY 'password2';
GRANT INSERT ON proyect_schema.* TO 'user12'@'localhost';

-- Usuario 4
CREATE USER 'user3'@'localhost' IDENTIFIED BY 'password3';
GRANT UPDATE ON proyect_schema.* TO 'user3'@'localhost';

-- Usuario 5
CREATE USER 'user4'@'localhost' IDENTIFIED BY 'password4';
GRANT DELETE ON proyect_schema.* TO 'user4'@'localhost';

-- Usuario 6
CREATE USER 'user56'@'localhost' IDENTIFIED BY 'password5';
GRANT SELECT, INSERT ON proyect_schema.* TO 'user56'@'localhost';

-- Usuario 7
CREATE USER 'user68'@'localhost' IDENTIFIED BY 'password6';
GRANT SELECT, UPDATE ON proyect_schema.* TO 'user68'@'localhost';

-- Usuario 8
CREATE USER 'user73'@'localhost' IDENTIFIED BY 'password7';
GRANT SELECT, DELETE ON proyect_schema.* TO 'user73'@'localhost';

-- Usuario 9
CREATE USER 'user8'@'localhost' IDENTIFIED BY 'password8';
GRANT ALL PRIVILEGES ON proyect_schema.* TO 'user8'@'localhost';
-- Modifico la contraseña de algunos usuarios

ALTER USER 'user73'@'localhost' IDENTIFIED BY 'NEW-PASS--WORD';
ALTER USER 'user8'@'localhost' IDENTIFIED BY 'NEW-PASS--21';
ALTER USER 'user68'@'localhost' iDENTIFIED BY 'USER68-NEW-PASS';


-- RENOMBRO ALGUNOS USUARIOS 
RENAME USER 'user56'@'localhost' TO 'newuser56'@'localhost';
RENAME USER 'user73'@'localhost' TO 'user73new'@'localhost';
RENAME USER 'user12'@'localhost' TO 'newnameuser12'@'localhost';

-- Borro algunos usuarios
DROP USER 'user121'@'localhost';

use mysql;
SHOW GRANTS FOR 'newnameuser12'@'localhost';
