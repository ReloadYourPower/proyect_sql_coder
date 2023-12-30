-- Definición de la primera función: insertar_cliente
DELIMITER //
CREATE FUNCTION insertar_cliente(p_nombre VARCHAR(30), p_email VARCHAR(30), p_numero VARCHAR(12), p_direccion VARCHAR(20), p_id_pedidos INT)
RETURNS INT
DETERMINISTIC
NO SQL
BEGIN
    -- Declaración de variable para almacenar el nuevo ID del cliente
    DECLARE nuevo_id_cliente INT;

    -- Inserción de datos en la tabla 'clients'
    INSERT INTO clients (nombre, email, numero, direccion, id_pedidos) VALUES (p_nombre, p_email, p_numero, p_direccion, p_id_pedidos);
    
    -- Obtención del último ID insertado
    SET nuevo_id_cliente = LAST_INSERT_ID();

    -- Devolución del nuevo ID del cliente
    RETURN nuevo_id_cliente;
END //
DELIMITER ;

-- Comentario para la función 'insertar_cliente':
-- Esta función se utiliza para insertar un nuevo cliente en la tabla 'clients' con los parámetros proporcionados.
-- Objetivo: Agregar un nuevo cliente y obtener su ID correspondiente.

-- Definición de la segunda función: insertar_proveedor
DELIMITER //
CREATE FUNCTION insertar_proveedor(p_nombre VARCHAR(20), p_cuit VARCHAR(20), p_numero VARCHAR(20), p_email VARCHAR(50), p_id_pedido_proveedores INT)
RETURNS INT
DETERMINISTIC
NO SQL
BEGIN
    -- Declaración de variable para almacenar el nuevo ID del proveedor
    DECLARE nuevo_id_proveedor INT;

    -- Inserción de datos en la tabla 'proveedores'
    INSERT INTO proveedores (nombre, cuit, numero, email, id_pedido_proveedores) VALUES (p_nombre, p_cuit, p_numero, p_email, p_id_pedido_proveedores);
    
    -- Obtención del último ID insertado
    SET nuevo_id_proveedor = LAST_INSERT_ID();

    -- Devolución del nuevo ID del proveedor
    RETURN nuevo_id_proveedor;
END //
DELIMITER ;

-- Comentario para la función 'insertar_proveedor':
-- Esta función se utiliza para insertar un nuevo proveedor en la tabla 'proveedores' con los parámetros proporcionados.
-- Objetivo: Agregar un nuevo proveedor y obtener su ID correspondiente.

