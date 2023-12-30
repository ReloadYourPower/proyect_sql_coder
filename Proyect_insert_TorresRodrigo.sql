use proyect_schema;

INSERT INTO clients (nombre, email, numero, direccion) VALUES
('Cliente1', 'cliente1@email.com', '1234567890', 'Calle A, Ciudad X'),
('Cliente2', 'cliente2@email.com', '2345678901', 'Calle B, Ciudad Y'),
('Cliente3', 'cliente3@email.com', '3456789012', 'Calle C, Ciudad Z'),
('Cliente4', 'cliente4@email.com', '4567890123', 'Calle D, Ciudad W'),
('Cliente5', 'cliente5@email.com', '5678901234', 'Calle E, Ciudad V'),
('Cliente6', 'cliente6@email.com', '6789012345', 'Calle F, Ciudad U'),
('Cliente7', 'cliente7@email.com', '7890123456', 'Calle G, Ciudad T'),
('Cliente8', 'cliente8@email.com', '8901234567', 'Calle H, Ciudad S'),
('Cliente9', 'cliente9@email.com', '9012345678', 'Calle I, Ciudad R'),
('Cliente10', 'cliente10@email.com', '0123456789', 'Calle J, Ciudad Q');
select *from clients;

INSERT INTO cobros (id, datos, fecha) VALUES
(1, 'Pago recibido', '2023-01-15'),
(2, 'Transacción exitosa', '2023-02-20'),
(3, 'Cobro pendiente', '2023-03-25'),
(4, 'Confirmado el pago', '2023-04-10'),
(5, 'Pago parcial recibido', '2023-05-05'),
(6, 'Cobro exitoso', '2023-06-12'),
(7, 'Transacción completada', '2023-07-18'),
(8, 'Pago pendiente', '2023-08-22'),
(9, 'Cobro confirmado', '2023-09-30'),
(10, 'Transacción fallida', '2023-10-05');
select *from cobros;

INSERT INTO consumibles (id,descripcion) VALUES
(1,'Tinta para impresora'),
(2,'Papel de calidad premium'),
(3,'Teclado inalámbrico'),
(5,'Mouse ergonómico'),
(6,'Monitor LED de 24 pulgadas'),
(7,'Auriculares con cancelación de ruido'),
(8,'Lámpara LED de escritorio'),
(9,'Baterías recargables AAA'),
(10,'Alfombrilla para ratón con soporte para muñeca'),
(11,'Adaptador USB-C a HDMI');
select *from consumibles;

INSERT INTO equipos (id,nombre, lider, especialidad) VALUES
(1,'Equipo A', 'LíderA', 'EspecialidadA'),
(2,'Equipo B', 'LíderB', 'EspecialidadB'),
(3,'Equipo C', 'LíderC', 'EspecialidadC'),
(4,'Equipo D', 'LíderD', 'EspecialidadD'),
(5,'Equipo E', 'LíderE', 'EspecialidadE'),
(6,'Equipo F', 'LíderF', 'EspecialidadF'),
(7,'Equipo G', 'LíderG', 'EspecialidadG'),
(8,'Equipo H', 'LíderH', 'EspecialidadH'),
(9,'Equipo I', 'LíderI', 'EspecialidadI'),
(10,'Equipo J', 'LíderJ', 'EspecialidadJ');
select *from equipos;


INSERT INTO pedido_proveedores (id,pedido, pago) VALUES
(1,'Pedido1', '$400'),
(2,'Pedido2', '$400'),
(3,'Pedido3', '$400'),
(4,'Pedido4', '$400'),
(5,'Pedido5', '$400'),
(6,'Pedido6', '$400'),
(7,'Pedido7', '$400'),
(8,'Pedido8', '$400'),
(9,'Pedido9', '$400'),
(10,'Pedido10', '$400');
select *from pedido_proveedores;

INSERT INTO pedidos (id,descripcion) VALUES
(1,'Pedido1'),
(2,'Pedido2'),
(3,'Pedido3'),
(4,'Pedido4'),
(5,'Pedido5'),
(6,'Pedido6'),
(7,'Pedido7'),
(8,'Pedido8'),
(9,'Pedido9'),
(10,'Pedido10');
select *from pedidos;




INSERT INTO presupuestos (id,datos, valor, aprobado) VALUES
(1,'Presupuesto1', 1000.00, 1),
(2,'Presupuesto2', 1500.00, 0),
(3,'Presupuesto3', 1200.00, 1),
(4,'Presupuesto4', 800.00, 0),
(5,'Presupuesto5', 2000.00, 1),
(6,'Presupuesto6', 1800.00, 0),
(7,'Presupuesto7', 900.00, 1),
(8,'Presupuesto8', 1100.00, 0),
(9,'Presupuesto9', 1300.00, 1),
(10,'Presupuesto10', 1600.00, 0);
select *from presupuestos;   


INSERT INTO proveedores (id,nombre, cuit, numero, email) VALUES
(1,'Proveedor1', 'CUIT1', '1234567890', 'proveedor1@email.com'),
(2,'Proveedor2', 'CUIT2', '2345678901', 'proveedor2@email.com'),
(3,'Proveedor3', 'CUIT3', '3456789012', 'proveedor3@email.com'),
(4,'Proveedor4', 'CUIT4', '4567890123', 'proveedor4@email.com'),
(5,'Proveedor5', 'CUIT5', '5678901234', 'proveedor5@email.com'),
(6,'Proveedor6', 'CUIT6', '6789012345', 'proveedor6@email.com'),
(7,'Proveedor7', 'CUIT7', '7890123456', 'proveedor7@email.com'),
(8,'Proveedor8', 'CUIT8', '8901234567', 'proveedor8@email.com'),
(9,'Proveedor9', 'CUIT9', '9012345678', 'proveedor9@email.com'),
(10,'Proveedor10', 'CUIT10', '0123456789', 'proveedor10@email.com');
select *from proveedores; 

INSERT INTO proyectos (nombre, descripcion, fecha_inicio, estado, fecha_fin) VALUES
('Proyecto1', 'Descripción1', '2023-01-01', 1, '2023-03-31'),
('Proyecto2', 'Descripción2', '2023-02-01', 0, '2023-04-30'),
('Proyecto3', 'Descripción3', '2023-03-01', 1, '2023-05-31'),
('Proyecto4', 'Descripción4', '2023-04-01', 0, '2023-06-30'),
('Proyecto5', 'Descripción5', '2023-05-01', 1, '2023-07-31'),
('Proyecto6', 'Descripción6', '2023-06-01', 0, '2023-08-31'),
('Proyecto7', 'Descripción7', '2023-07-01', 1, '2023-09-30'),
('Proyecto8', 'Descripción8', '2023-08-01', 0, '2023-10-31'),
('Proyecto9', 'Descripción9', '2023-09-01', 1, '2023-11-30'),
('Proyecto10', 'Descripción10', '2023-10-01', 0, '2023-12-31');

SELECT * FROM proyectos;

INSERT INTO servicio (nombre, descripcion, id_equipo) VALUES
('Servicio1', 'Descripción1', 1),
('Servicio2', 'Descripción2', 2),
('Servicio3', 'Descripción3', 3),
('Servicio4', 'Descripción4', 4),
('Servicio5', 'Descripción5', 5),
('Servicio6', 'Descripción6', 6),
('Servicio7', 'Descripción7', 7),
('Servicio8', 'Descripción8', 8),
('Servicio9', 'Descripción9', 9),
('Servicio10', 'Descripción10', 10);
select * from servicio;
-- Altera la tabla para cambiar la longitud de la columna 'email'
ALTER TABLE ventas
MODIFY COLUMN email varchar(50);
-- Inserta datos en la tabla 'ventas'
INSERT INTO ventas (id_cliente, id_presupuestos, id_cobros, email) VALUES
(1, 1, 1, 'cliente1@email.com'),
(2, 2, 2, 'cliente2@email.com'),
(3, 3, 3, 'cliente3@email.com'),
(4, 4, 4, 'cliente4@email.com'),
(5, 5, 5, 'cliente5@email.com'),
(6, 6, 6, 'cliente6@email.com'),
(7, 7, 7, 'cliente7@email.com'),
(8, 8, 8, 'cliente8@email.com'),
(9, 9, 9, 'cliente9@email.com'),
(10, 10, 10, 'cliente10@email.com');
select *from ventas;







