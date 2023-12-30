USE proyect_schema;

-- Crear la vista para mostrar datos específicos de la tabla clients
CREATE VIEW vista_clients AS
SELECT
  nombre AS nom_c,
  email AS em_c,
  numero AS num_c,
  direccion AS Dir_c,
  id_pedidos AS id_ped_c
FROM clients;


CREATE VIEW vista_horarios AS
SELECT 
id_equipo AS id_eq,
fecha_registro AS f_reg,
hora_entrada AS h_ent,
hora_salida AS h_sal,
responsable AS resp_eq
FROM horarios;

CREATE VIEW vista_presu AS
SELECT 
datos AS d_pres,
valor AS v_pres,
aprobado AS ok_pres
FROM presupuestos;

CREATE VIEW vista_proyect AS
SELECT 
nombre AS nom_proy,
descripcion AS des_proy,
fecha_inicio AS f_proy,
estado AS est_proy,
fecha_fin AS f_fin_proy
FROM proyectos;


CREATE VIEW vista_prov AS
SELECT 
nombre AS nom_prov,
cuit AS cu_prov,
numero AS num_prov ,
email AS em_prov 
FROM proveedores;

-- Consulta para la vista vista_clients
SELECT * FROM vista_clients;

-- Consulta para la vista vista_horarios
SELECT * FROM vista_horarios;

-- Consulta para la vista vista_presu
SELECT * FROM vista_presu;

-- Consulta para la vista vista_proyect
SELECT * FROM vista_proyect;

-- Consulta para la vista vista_prov
SELECT * FROM vista_prov;
  