-- Desactivo el autocomitt
SELECT @@autocommit;
SET AUTOCOMMIT = 0;
-- agrego a la tabla clientes un lote de clientes y agrego un savepoint
-- Establecer el punto de guardado inicial
SAVEPOINT inicio;

-- Generar clientes con datos aleatorios
INSERT INTO clients (id, nombre, email, numero, direccion)
VALUES
    (11, 'Cliente11', 'cliente1@example.com', '123456789', 'Calle A, Ciudad'),
    (12, 'Cliente12', 'cliente2@example.com', '987654321', 'Calle B, Ciudad');
    -- Puedes agregar más filas con datos aleatorios aquí...

-- Establecer el punto de guardado a la mitad del proceso
SAVEPOINT mitad;

-- Continuar generando clientes con datos aleatorios
INSERT INTO clients (id, nombre, email, numero, direccion)
VALUES
    (13, 'Cliente13', 'cliente3@example.com', '555555555', 'Calle C, Ciudad'),
    (14, 'Cliente14', 'cliente4@example.com', '111111111', 'Calle D, Ciudad');

-- Establecer el punto de guardado al final del proceso
SAVEPOINT fin;


-- ELimino dos registros de la tabla clientes 
START TRANSACTION;
DELETE FROM clients
WHERE id = 2 AND id = 3;



 
-- genero una transaccion  
START TRANSACTION;
UPDATE clients SET
nombre = 'gerardo'
WHERE id =1;

-- Verifico los cambios realizados en la tabla clientes
SELECT * FROM clients;

 -- ROLLBACK TO mitad;
 -- COMMIT;
 
 -- iNICIO UNA TRANSACCION EN LA SEGUNDA TABLA
 -- Establecer el punto de guardado inicial
SAVEPOINT inicio2;

-- Generar proveedores con datos aleatorios
INSERT INTO proveedores (id, nombre, cuit, numero, email)
VALUES
    (11, 'Proveedor11', '12345678901', '987654321', 'proveedor11@example.com'),
    (12, 'Proveedor12', '98765432109', '143456789', 'proveedor12@example.com'),
    (13, 'Proveedor13', '98765432459', '593456789', 'proveedor13@example.com'),
    (14, 'Proveedor14', '98765432789', '223456789', 'proveedor14@example.com');
    -- Puedes agregar más filas con datos aleatorios aquí...

-- Establecer el punto de guardado a la mitad del proceso
SAVEPOINT mitad2;

-- Continuar generando proveedores con datos aleatorios
INSERT INTO proveedores (id, nombre, cuit, numero, email)
VALUES
    (15, 'Proveedor15', '55555555555', '111111111', 'proveedor15@example.com'),
    (16, 'Proveedor16', '11111111111', '555555546', 'proveedor16@example.com'),
    (17, 'Proveedor17', '11111111123', '555555555', 'proveedor17@example.com'),
    (18, 'Proveedor18', '98765444109', '123456778', 'proveedor18@example.com');
    -- Puedes agregar más filas con datos aleatorios aquí...

-- Establecer el punto de guardado al final del proceso
SAVEPOINT fin2;

RELEASE SAVEPOINT mitad2;