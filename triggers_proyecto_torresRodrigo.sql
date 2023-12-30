-- Agregar columna 'estado' a la tabla servicio
ALTER TABLE `servicio`
ADD COLUMN ` estado` TINYINT(1) DEFAULT 1; -- Por ejemplo, 1 para activo, 0 para inactivo

-- Agregar columna 'updated_by' a la tabla servicio
ALTER TABLE `servicio` 
 -- columna update_by muestra quien fue el ultimo encargado de realizar un cambio
ADD COLUMN `updated_by` VARCHAR(50) DEFAULT 'admin-m1',
-- columna updated_at se utiliza para realizar un seguimiento de la última vez que un registro fue actualizado
ADD COLUMN updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;




-- selecciono la tabla servicio para revisar los cambios
-- Vista lógica de servicios activos
CREATE OR REPLACE VIEW `view_servs_act` AS
SELECT id, nombre, descripcion, id_equipo, updated_by,updated_at
FROM `servicio`
WHERE estado = 1;
-- selecciono la vista de los servicios activos para comprobar el estado
select * from `view_servs_act`;



 -- Trigger Before: se activa antes de realizar una actualización en la tabla 'servicio'.
--              Asigna el usuario actual, la marca de tiempo actual y actualiza el campo 'estado'.
--              Nota: El campo 'estado' se actualiza con su propio valor

DELIMITER //
CREATE TRIGGER `before_actualizar_servicio`
BEFORE UPDATE ON `servicio`
FOR EACH ROW
SET NEW.updated_by = CURRENT_USER(), NEW.updated_at = NOW(), NEW.estado = NEW.estado;
//
DELIMITER ;



-- Trigger AFTER para registrar usuario, fecha y hora después de actualizar el servicio
DELIMITER //
CREATE TRIGGER `after_actualizar_servicio`
AFTER UPDATE ON `servicio`
FOR EACH ROW
INSERT INTO logs (accion, usuario, fecha, hora)
VALUES ('Actualización de servicio', CURRENT_USER(), CURDATE(), CURTIME());
//
DELIMITER ;


-- Tabla de bitácora
CREATE TABLE logs (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `accion` VARCHAR(100),
  `usuario` VARCHAR(50),
  `fecha` DATE,
  `hora `TIME
);


-- Trigger BEFORE para registrar usuario, fecha y hora antes de insertar en la tabla productos
DELIMITER //
CREATE TRIGGER `before_insertar_producto`
BEFORE INSERT ON logs
FOR EACH ROW
SET NEW.usuario = CURRENT_USER(), NEW.fecha = CURDATE(), NEW.hora = CURTIME();
//
DELIMITER ;


-- Trigger AFTER para registrar usuario, fecha y hora después de insertar en la tabla productos
DELIMITER //
CREATE TRIGGER `after_insertar_producto`
AFTER INSERT ON logs
FOR EACH ROW
INSERT INTO logs (accion, usuario, fecha, hora)
VALUES ('Producto insertado', CURRENT_USER(), CURDATE(), CURTIME());
//
DELIMITER ;

-- vuelvo a seleccionar la vista creada anteriormente para presenciar las modificaciones de cada trigger
select * from `view_servs_act`;



