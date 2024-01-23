-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema proyect_schema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proyect_schema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proyect_schema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `proyect_schema` ;

-- -----------------------------------------------------
-- Table `proyect_schema`.`presupuestos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`presupuestos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `datos` TEXT NULL DEFAULT NULL,
  `valor` FLOAT NULL DEFAULT NULL,
  `aprobado` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`pedidos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(30) NOT NULL,
  `id_presupuesto` INT NULL DEFAULT NULL,
  `id_cliente` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `pedidos_ibfk_1` (`id_presupuesto` ASC) VISIBLE,
  INDEX `pedidos_ibfk_2` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `pedidos_ibfk_1`
    FOREIGN KEY (`id_presupuesto`)
    REFERENCES `proyect_schema`.`presupuestos` (`id`),
  CONSTRAINT `pedidos_ibfk_2`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `proyect_schema`.`clients` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`clients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NOT NULL,
  `email` VARCHAR(30) NOT NULL,
  `numero` VARCHAR(12) NULL DEFAULT NULL,
  `direccion` VARCHAR(20) NULL DEFAULT NULL,
  `id_pedidos` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `clients_ibfk_1` (`id_pedidos` ASC) VISIBLE,
  CONSTRAINT `clients_ibfk_1`
    FOREIGN KEY (`id_pedidos`)
    REFERENCES `proyect_schema`.`pedidos` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`ventas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NULL DEFAULT NULL,
  `id_presupuestos` INT NULL DEFAULT NULL,
  `id_cobros` INT NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `ventas_ibfk_1` (`id_cliente` ASC) VISIBLE,
  INDEX `ventas_ibfk_2` (`id_presupuestos` ASC) VISIBLE,
  INDEX `ventas_ibfk_3` (`id_cobros` ASC) VISIBLE,
  CONSTRAINT `ventas_ibfk_1`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `proyect_schema`.`clients` (`id`),
  CONSTRAINT `ventas_ibfk_2`
    FOREIGN KEY (`id_presupuestos`)
    REFERENCES `proyect_schema`.`presupuestos` (`id`),
  CONSTRAINT `ventas_ibfk_3`
    FOREIGN KEY (`id_cobros`)
    REFERENCES `proyect_schema`.`cobros` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`cobros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`cobros` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_ventas` INT NULL DEFAULT NULL,
  `datos` TEXT NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `cobros_ibfk_1` (`id_ventas` ASC) VISIBLE,
  CONSTRAINT `cobros_ibfk_1`
    FOREIGN KEY (`id_ventas`)
    REFERENCES `proyect_schema`.`ventas` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`consumibles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`consumibles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `descripcion` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`equipos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`equipos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) NULL DEFAULT NULL,
  `lider` VARCHAR(20) NULL DEFAULT NULL,
  `especialidad` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`horarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`horarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_equipo` INT NULL DEFAULT NULL,
  `fecha_registro` DATE NULL DEFAULT NULL,
  `hora_entrada` TIME NULL DEFAULT NULL,
  `hora_salida` TIME NULL DEFAULT NULL,
  `responsable` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `_idx` (`id_equipo` ASC) VISIBLE,
  CONSTRAINT `id_equipos`
    FOREIGN KEY (`id_equipo`)
    REFERENCES `proyect_schema`.`equipos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`logs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`logs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `accion` VARCHAR(100) NULL DEFAULT NULL,
  `usuario` VARCHAR(50) NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `hora` TIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 44
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`pedido_proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`pedido_proveedores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `pedido` TEXT NULL DEFAULT NULL,
  `pago` VARCHAR(20) NULL DEFAULT '$400',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`proveedores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(20) NULL DEFAULT NULL,
  `cuit` VARCHAR(20) NULL DEFAULT NULL,
  `numero` VARCHAR(20) NULL DEFAULT NULL,
  `email` VARCHAR(50) NULL DEFAULT NULL,
  `id_pedido_proveedores` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_pedido_proveedores`
    FOREIGN KEY (`id`)
    REFERENCES `proyect_schema`.`pedido_proveedores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`proyectos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`proyectos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(40) NOT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  `fecha_inicio` DATE NULL DEFAULT NULL,
  `estado` TINYINT(1) NULL DEFAULT NULL,
  `fecha_fin` DATE NULL DEFAULT NULL,
  `id_consumibles` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `proyectos_ibfk_2` (`id_consumibles` ASC) VISIBLE,
  CONSTRAINT `proyectos_ibfk_1`
    FOREIGN KEY (`id_consumibles`)
    REFERENCES `proyect_schema`.`consumibles` (`id`),
  CONSTRAINT `proyectos_ibfk_2`
    FOREIGN KEY (`id_consumibles`)
    REFERENCES `proyect_schema`.`consumibles` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`servicio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`servicio` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NULL DEFAULT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  `id_equipo` INT NULL DEFAULT NULL,
  `estado` TINYINT(1) NULL DEFAULT '1',
  `updated_by` VARCHAR(50) NULL DEFAULT 'admin-m1',
  ` estado` TINYINT(1) NULL DEFAULT '1',
  `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `servicio_ibfk_1` (`id_equipo` ASC) VISIBLE,
  CONSTRAINT `servicio_ibfk_1`
    FOREIGN KEY (`id_equipo`)
    REFERENCES `proyect_schema`.`equipos` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 41
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proyect_schema`.`tareas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`tareas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NULL DEFAULT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  `clasificacion` VARCHAR(30) NULL DEFAULT NULL,
  `id_equipo` INT NULL DEFAULT NULL,
  `id_proyecto` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `tareas_ibfk_1` (`id_equipo` ASC) VISIBLE,
  INDEX `tareas_ibfk_2` (`id_proyecto` ASC) VISIBLE,
  CONSTRAINT `tareas_ibfk_1`
    FOREIGN KEY (`id_equipo`)
    REFERENCES `proyect_schema`.`equipos` (`id`),
  CONSTRAINT `tareas_ibfk_2`
    FOREIGN KEY (`id_proyecto`)
    REFERENCES `proyect_schema`.`proyectos` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `proyect_schema` ;

-- -----------------------------------------------------
-- Placeholder table for view `proyect_schema`.`servicios_activos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`servicios_activos` (`id` INT, `nombre` INT, `descripcion` INT, `id_equipo` INT);

-- -----------------------------------------------------
-- Placeholder table for view `proyect_schema`.`v_servicios_activos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`v_servicios_activos` (`id` INT, `nombre` INT, `descripcion` INT, `id_equipo` INT);

-- -----------------------------------------------------
-- Placeholder table for view `proyect_schema`.`view_servs_act`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`view_servs_act` (`id` INT, `nombre` INT, `descripcion` INT, `id_equipo` INT, `updated_by` INT, `updated_at` INT);

-- -----------------------------------------------------
-- Placeholder table for view `proyect_schema`.`vista_clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`vista_clients` (`nom_c` INT, `em_c` INT, `num_c` INT, `Dir_c` INT, `id_ped_c` INT);

-- -----------------------------------------------------
-- Placeholder table for view `proyect_schema`.`vista_horarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`vista_horarios` (`id_eq` INT, `f_reg` INT, `h_ent` INT, `h_sal` INT, `resp_eq` INT);

-- -----------------------------------------------------
-- Placeholder table for view `proyect_schema`.`vista_presu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`vista_presu` (`d_pres` INT, `v_pres` INT, `ok_pres` INT);

-- -----------------------------------------------------
-- Placeholder table for view `proyect_schema`.`vista_prov`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`vista_prov` (`nom_prov` INT, `cu_prov` INT, `num_prov` INT, `em_prov` INT);

-- -----------------------------------------------------
-- Placeholder table for view `proyect_schema`.`vista_proyect`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyect_schema`.`vista_proyect` (`nom_proy` INT, `des_proy` INT, `f_proy` INT, `est_proy` INT, `f_fin_proy` INT);

-- -----------------------------------------------------
-- procedure ActualizarRegistros
-- -----------------------------------------------------

DELIMITER $$
USE `proyect_schema`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarRegistros`(
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
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure OrdenarTabla
-- -----------------------------------------------------

DELIMITER $$
USE `proyect_schema`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `OrdenarTabla`(
    IN tabla_nombre VARCHAR(50),
    IN campo_orden VARCHAR(50),
    IN ordenamiento VARCHAR(10)
)
BEGIN
    SET @query = CONCAT('SELECT * FROM ', tabla_nombre, ' ORDER BY ', campo_orden, ' ', ordenamiento);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- function insertar_cliente
-- -----------------------------------------------------

DELIMITER $$
USE `proyect_schema`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `insertar_cliente`(p_nombre VARCHAR(30), p_email VARCHAR(30), p_numero VARCHAR(12), p_direccion VARCHAR(20), p_id_pedidos INT) RETURNS int
    NO SQL
    DETERMINISTIC
BEGIN
    DECLARE nuevo_id_cliente INT;

    INSERT INTO clients (nombre, email, numero, direccion, id_pedidos) VALUES (p_nombre, p_email, p_numero, p_direccion, p_id_pedidos);
    SET nuevo_id_cliente = LAST_INSERT_ID();

    RETURN nuevo_id_cliente;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `proyect_schema`.`servicios_activos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyect_schema`.`servicios_activos`;
USE `proyect_schema`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyect_schema`.`servicios_activos` AS select `proyect_schema`.`servicio`.`id` AS `id`,`proyect_schema`.`servicio`.`nombre` AS `nombre`,`proyect_schema`.`servicio`.`descripcion` AS `descripcion`,`proyect_schema`.`servicio`.`id_equipo` AS `id_equipo` from `proyect_schema`.`servicio` where (`proyect_schema`.`servicio`.`estado` = 1);

-- -----------------------------------------------------
-- View `proyect_schema`.`v_servicios_activos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyect_schema`.`v_servicios_activos`;
USE `proyect_schema`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyect_schema`.`v_servicios_activos` AS select `proyect_schema`.`servicio`.`id` AS `id`,`proyect_schema`.`servicio`.`nombre` AS `nombre`,`proyect_schema`.`servicio`.`descripcion` AS `descripcion`,`proyect_schema`.`servicio`.`id_equipo` AS `id_equipo` from `proyect_schema`.`servicio`;

-- -----------------------------------------------------
-- View `proyect_schema`.`view_servs_act`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyect_schema`.`view_servs_act`;
USE `proyect_schema`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyect_schema`.`view_servs_act` AS select `proyect_schema`.`servicio`.`id` AS `id`,`proyect_schema`.`servicio`.`nombre` AS `nombre`,`proyect_schema`.`servicio`.`descripcion` AS `descripcion`,`proyect_schema`.`servicio`.`id_equipo` AS `id_equipo`,`proyect_schema`.`servicio`.`updated_by` AS `updated_by`,`proyect_schema`.`servicio`.`updated_at` AS `updated_at` from `proyect_schema`.`servicio` where (`proyect_schema`.`servicio`.`estado` = 1);

-- -----------------------------------------------------
-- View `proyect_schema`.`vista_clients`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyect_schema`.`vista_clients`;
USE `proyect_schema`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyect_schema`.`vista_clients` AS select `proyect_schema`.`clients`.`nombre` AS `nom_c`,`proyect_schema`.`clients`.`email` AS `em_c`,`proyect_schema`.`clients`.`numero` AS `num_c`,`proyect_schema`.`clients`.`direccion` AS `Dir_c`,`proyect_schema`.`clients`.`id_pedidos` AS `id_ped_c` from `proyect_schema`.`clients`;

-- -----------------------------------------------------
-- View `proyect_schema`.`vista_horarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyect_schema`.`vista_horarios`;
USE `proyect_schema`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyect_schema`.`vista_horarios` AS select `proyect_schema`.`horarios`.`id_equipo` AS `id_eq`,`proyect_schema`.`horarios`.`fecha_registro` AS `f_reg`,`proyect_schema`.`horarios`.`hora_entrada` AS `h_ent`,`proyect_schema`.`horarios`.`hora_salida` AS `h_sal`,`proyect_schema`.`horarios`.`responsable` AS `resp_eq` from `proyect_schema`.`horarios`;

-- -----------------------------------------------------
-- View `proyect_schema`.`vista_presu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyect_schema`.`vista_presu`;
USE `proyect_schema`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyect_schema`.`vista_presu` AS select `proyect_schema`.`presupuestos`.`datos` AS `d_pres`,`proyect_schema`.`presupuestos`.`valor` AS `v_pres`,`proyect_schema`.`presupuestos`.`aprobado` AS `ok_pres` from `proyect_schema`.`presupuestos`;

-- -----------------------------------------------------
-- View `proyect_schema`.`vista_prov`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyect_schema`.`vista_prov`;
USE `proyect_schema`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyect_schema`.`vista_prov` AS select `proyect_schema`.`proveedores`.`nombre` AS `nom_prov`,`proyect_schema`.`proveedores`.`cuit` AS `cu_prov`,`proyect_schema`.`proveedores`.`numero` AS `num_prov`,`proyect_schema`.`proveedores`.`email` AS `em_prov` from `proyect_schema`.`proveedores`;

-- -----------------------------------------------------
-- View `proyect_schema`.`vista_proyect`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proyect_schema`.`vista_proyect`;
USE `proyect_schema`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `proyect_schema`.`vista_proyect` AS select `proyect_schema`.`proyectos`.`nombre` AS `nom_proy`,`proyect_schema`.`proyectos`.`descripcion` AS `des_proy`,`proyect_schema`.`proyectos`.`fecha_inicio` AS `f_proy`,`proyect_schema`.`proyectos`.`estado` AS `est_proy`,`proyect_schema`.`proyectos`.`fecha_fin` AS `f_fin_proy` from `proyect_schema`.`proyectos`;
USE `proyect_schema`;

DELIMITER $$
USE `proyect_schema`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `proyect_schema`.`after_insertar_producto`
AFTER INSERT ON `proyect_schema`.`logs`
FOR EACH ROW
INSERT INTO logs (accion, usuario, fecha, hora)
VALUES ('Producto insertado', CURRENT_USER(), CURDATE(), CURTIME())$$

USE `proyect_schema`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `proyect_schema`.`before_insertar_producto`
BEFORE INSERT ON `proyect_schema`.`logs`
FOR EACH ROW
SET NEW.usuario = CURRENT_USER(), NEW.fecha = CURDATE(), NEW.hora = CURTIME()$$

USE `proyect_schema`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `proyect_schema`.`before_update_logs`
BEFORE UPDATE ON `proyect_schema`.`logs`
FOR EACH ROW
SET NEW.usuario = IFNULL(NEW.usuario, CURRENT_USER()),
    NEW.fecha = IFNULL(NEW.fecha, CURDATE()),
    NEW.hora = IFNULL(NEW.hora, CURTIME())$$

USE `proyect_schema`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `proyect_schema`.`after_actualizar_servicio`
AFTER UPDATE ON `proyect_schema`.`servicio`
FOR EACH ROW
INSERT INTO logs (accion, usuario, fecha, hora)
VALUES ('Actualización de servicio', CURRENT_USER(), CURDATE(), CURTIME())$$

USE `proyect_schema`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `proyect_schema`.`before_actualizar_servicio`
BEFORE UPDATE ON `proyect_schema`.`servicio`
FOR EACH ROW
SET NEW.updated_by = CURRENT_USER(), NEW.updated_at = NOW(), NEW.estado = NEW.estado$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
