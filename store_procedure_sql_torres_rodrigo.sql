-- Creación del primer stored procedure para ordenar tabla
DELIMITER //
CREATE PROCEDURE OrdenarTabla(
    IN tabla_nombre VARCHAR(50),
    IN campo_orden VARCHAR(50),
    IN ordenamiento VARCHAR(10)
)
BEGIN
    SET @query = CONCAT('SELECT * FROM ', tabla_nombre, ' ORDER BY ', campo_orden, ' ', ordenamiento);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

-- Creación del segundo stored procedure para actualizar registros
DELIMITER //
CREATE PROCEDURE ActualizarRegistros(
    IN tabla_nombre VARCHAR(50),
    IN campo_actualizar VARCHAR(50),
    IN nuevo_valor VARCHAR(255),
    IN condicion VARCHAR(255)
)
BEGIN
    SET @query = CONCAT('UPDATE ', tabla_nombre, ' SET ', campo_actualizar, ' = ''', nuevo_valor, ''' WHERE ', condicion);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

-- Llamada al stored procedure para ordenar la tabla 'clients' por el campo 'nombre' de manera ascendente
CALL OrdenarTabla('clients', 'nombre', 'ASC');

-- Llamada al stored procedure para actualizar el campo 'direccion' en la tabla 'clients' para el registro con id = 1
CALL ActualizarRegistros('clients', 'direccion', 'Nueva Direccion', 'id = 1');

