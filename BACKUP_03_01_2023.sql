-- EN ESTE BACKUP SE GUARDARON LAS TABLAS, TRIGGERS, STORE PROCEDURES Y FUNCIONES DE EL PROYECT_SCHEMA. LAS TABLAS INCLUIDAS DEL PROYECTO SON: 
-- TABLA CLIENTES, TABLA COBROS, TABLA CONSUMIBLES, TABLA EQUIPOS, TABLA EQUIPOS, TABLA HORARIOS, TABLA HORARIOS, TABLA LOGS, TABLA PEDIDO_PROVEEDORES, TABLA PEDIDOS, TABLA PRESUPUESTOS, TABLA PROVEEDORES
-- TABLA PROYECTOS, TABLA SERVICIO, TABLA TAREAS, TABLA VENTAS 

-- STORE PROCEDURES: ActualizarRegistros Y OrdenarTabla

-- FUNCTIONS: INSERTAR_CLIENTE 


-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: proyect_schema
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Cliente1','cliente1@email.com','1234567890','Nueva Direccion',1),(2,'Cliente2','cliente2@email.com','2345678901','Calle B, Ciudad Y',2),(3,'Cliente3','cliente3@email.com','3456789012','Calle C, Ciudad Z',3),(4,'Cliente4','cliente4@email.com','4567890123','Calle D, Ciudad W',4),(5,'Cliente5','cliente5@email.com','5678901234','Calle E, Ciudad V',5),(6,'Cliente6','cliente6@email.com','6789012345','Calle F, Ciudad U',6),(7,'Cliente7','cliente7@email.com','7890123456','Calle G, Ciudad T',7),(8,'Cliente8','cliente8@email.com','8901234567','Calle H, Ciudad S',8),(9,'Cliente9','cliente9@email.com','9012345678','Calle I, Ciudad R',9),(10,'Cliente10','cliente10@email.com','0123456789','Calle J, Ciudad Q',10);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cobros`
--

LOCK TABLES `cobros` WRITE;
/*!40000 ALTER TABLE `cobros` DISABLE KEYS */;
INSERT INTO `cobros` VALUES (1,1,'Pago recibido','2023-01-15'),(2,2,'Transacción exitosa','2023-02-20'),(3,3,'Cobro pendiente','2023-03-25'),(4,4,'Confirmado el pago','2023-04-10'),(5,5,'Pago parcial recibido','2023-05-05'),(6,6,'Cobro exitoso','2023-06-12'),(7,7,'Transacción completada','2023-07-18'),(8,8,'Pago pendiente','2023-08-22'),(9,9,'Cobro confirmado','2023-09-30'),(10,10,'Transacción fallida','2023-10-05');
/*!40000 ALTER TABLE `cobros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `consumibles`
--

LOCK TABLES `consumibles` WRITE;
/*!40000 ALTER TABLE `consumibles` DISABLE KEYS */;
INSERT INTO `consumibles` VALUES (1,'Tinta para impresora'),(2,'Papel de calidad premium'),(3,'Teclado inalámbrico'),(5,'Mouse ergonómico'),(6,'Monitor LED de 24 pulgadas'),(7,'Auriculares con cancelación de ruido'),(8,'Lámpara LED de escritorio'),(9,'Baterías recargables AAA'),(10,'Alfombrilla para ratón con soporte para muñeca'),(11,'Adaptador USB-C a HDMI');
/*!40000 ALTER TABLE `consumibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Equipo A','LíderA','EspecialidadA'),(2,'Equipo B','LíderB','EspecialidadB'),(3,'Equipo C','LíderC','EspecialidadC'),(4,'Equipo D','LíderD','EspecialidadD'),(5,'Equipo E','LíderE','EspecialidadE'),(6,'Equipo F','LíderF','EspecialidadF'),(7,'Equipo G','LíderG','EspecialidadG'),(8,'Equipo H','LíderH','EspecialidadH'),(9,'Equipo I','LíderI','EspecialidadI'),(10,'Equipo J','LíderJ','EspecialidadJ');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,NULL,NULL,'08:00:00','14:00:00','Federico'),(2,NULL,NULL,'08:00:00','14:00:00','Federico'),(3,NULL,NULL,'08:00:00','14:00:00','Federico'),(4,NULL,NULL,'08:00:00','14:00:00','Federico'),(5,NULL,NULL,'08:00:00','14:00:00','Federico'),(6,NULL,NULL,'08:00:00','14:00:00','Federico'),(7,NULL,NULL,'08:00:00','14:00:00','Federico'),(8,NULL,NULL,'08:00:00','14:00:00','Federico'),(9,NULL,NULL,'08:00:00','14:00:00','Federico'),(10,NULL,NULL,'08:00:00','14:00:00','Federico');
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (4,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(5,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(6,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(7,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(8,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(9,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(10,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(11,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(12,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(13,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(14,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(15,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(16,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(17,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(18,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(19,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(20,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(21,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(22,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(23,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(24,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(25,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(26,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(27,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(28,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(29,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(30,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(31,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(32,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(33,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(34,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(35,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(36,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(37,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(38,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(39,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(40,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(41,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(42,'Actualización de servicio','root@localhost','2023-12-30','14:55:29'),(43,'Actualización de servicio','root@localhost','2023-12-30','14:55:29');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insertar_producto` BEFORE INSERT ON `logs` FOR EACH ROW SET NEW.usuario = CURRENT_USER(), NEW.fecha = CURDATE(), NEW.hora = CURTIME() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insertar_producto` AFTER INSERT ON `logs` FOR EACH ROW INSERT INTO logs (accion, usuario, fecha, hora)
VALUES ('Producto insertado', CURRENT_USER(), CURDATE(), CURTIME()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_logs` BEFORE UPDATE ON `logs` FOR EACH ROW SET NEW.usuario = IFNULL(NEW.usuario, CURRENT_USER()),
    NEW.fecha = IFNULL(NEW.fecha, CURDATE()),
    NEW.hora = IFNULL(NEW.hora, CURTIME()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `pedido_proveedores`
--

LOCK TABLES `pedido_proveedores` WRITE;
/*!40000 ALTER TABLE `pedido_proveedores` DISABLE KEYS */;
INSERT INTO `pedido_proveedores` VALUES (1,'Pedido1','$400'),(2,'Pedido2','$400'),(3,'Pedido3','$400'),(4,'Pedido4','$400'),(5,'Pedido5','$400'),(6,'Pedido6','$400'),(7,'Pedido7','$400'),(8,'Pedido8','$400'),(9,'Pedido9','$400'),(10,'Pedido10','$400');
/*!40000 ALTER TABLE `pedido_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Pedido1',1,1),(2,'Pedido2',2,2),(3,'Pedido3',3,3),(4,'Pedido4',4,4),(5,'Pedido5',5,5),(6,'Pedido6',6,6),(7,'Pedido7',7,7),(8,'Pedido8',8,8),(9,'Pedido9',9,9),(10,'Pedido10',10,10);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `presupuestos`
--

LOCK TABLES `presupuestos` WRITE;
/*!40000 ALTER TABLE `presupuestos` DISABLE KEYS */;
INSERT INTO `presupuestos` VALUES (1,'Presupuesto1',1000,1),(2,'Presupuesto2',1500,0),(3,'Presupuesto3',1200,1),(4,'Presupuesto4',800,0),(5,'Presupuesto5',2000,1),(6,'Presupuesto6',1800,0),(7,'Presupuesto7',900,1),(8,'Presupuesto8',1100,0),(9,'Presupuesto9',1300,1),(10,'Presupuesto10',1600,0);
/*!40000 ALTER TABLE `presupuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Proveedor1','CUIT1','1234567890','proveedor1@email.com',NULL),(2,'Proveedor2','CUIT2','2345678901','proveedor2@email.com',NULL),(3,'Proveedor3','CUIT3','3456789012','proveedor3@email.com',NULL),(4,'Proveedor4','CUIT4','4567890123','proveedor4@email.com',NULL),(5,'Proveedor5','CUIT5','5678901234','proveedor5@email.com',NULL),(6,'Proveedor6','CUIT6','6789012345','proveedor6@email.com',NULL),(7,'Proveedor7','CUIT7','7890123456','proveedor7@email.com',NULL),(8,'Proveedor8','CUIT8','8901234567','proveedor8@email.com',NULL),(9,'Proveedor9','CUIT9','9012345678','proveedor9@email.com',NULL),(10,'Proveedor10','CUIT10','0123456789','proveedor10@email.com',NULL);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (1,'Proyecto1','Descripción1','2023-01-01',1,'2023-03-31',NULL),(2,'Proyecto2','Descripción2','2023-02-01',0,'2023-04-30',NULL),(3,'Proyecto3','Descripción3','2023-03-01',1,'2023-05-31',NULL),(4,'Proyecto4','Descripción4','2023-04-01',0,'2023-06-30',NULL),(5,'Proyecto5','Descripción5','2023-05-01',1,'2023-07-31',NULL),(6,'Proyecto6','Descripción6','2023-06-01',0,'2023-08-31',NULL),(7,'Proyecto7','Descripción7','2023-07-01',1,'2023-09-30',NULL),(8,'Proyecto8','Descripción8','2023-08-01',0,'2023-10-31',NULL),(9,'Proyecto9','Descripción9','2023-09-01',1,'2023-11-30',NULL),(10,'Proyecto10','Descripción10','2023-10-01',0,'2023-12-31',NULL);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Servicio1','Descripción1',1,1,'admin-m1',1,'2023-12-30 18:26:59'),(2,'Servicio2','Descripción2',2,1,'admin-m1',1,'2023-12-30 18:26:59'),(3,'Servicio3','Descripción3',3,1,'admin-m1',1,'2023-12-30 18:26:59'),(4,'Servicio4','Descripción4',4,1,'admin-m1',1,'2023-12-30 18:26:59'),(5,'Servicio5','Descripción5',5,1,'admin-m1',1,'2023-12-30 18:26:59'),(6,'Servicio6','Descripción6',6,1,'admin-m1',1,'2023-12-30 18:26:59'),(7,'Servicio7','Descripción7',7,1,'admin-m1',1,'2023-12-30 18:26:59'),(8,'Servicio8','Descripción8',8,1,'admin-m1',1,'2023-12-30 18:26:59'),(9,'Servicio9','Descripción9',9,1,'admin-m1',1,'2023-12-30 18:26:59'),(10,'Servicio10','Descripción10',10,1,'admin-m1',1,'2023-12-30 18:26:59'),(11,'Servicio1','Descripción1',1,1,'admin-m1',1,'2023-12-30 18:26:59'),(12,'Servicio2','Descripción2',2,1,'admin-m1',1,'2023-12-30 18:26:59'),(13,'Servicio3','Descripción3',3,1,'admin-m1',1,'2023-12-30 18:26:59'),(14,'Servicio4','Descripción4',4,1,'admin-m1',1,'2023-12-30 18:26:59'),(15,'Servicio5','Descripción5',5,1,'admin-m1',1,'2023-12-30 18:26:59'),(16,'Servicio6','Descripción6',6,1,'admin-m1',1,'2023-12-30 18:26:59'),(17,'Servicio7','Descripción7',7,1,'admin-m1',1,'2023-12-30 18:26:59'),(18,'Servicio8','Descripción8',8,1,'admin-m1',1,'2023-12-30 18:26:59'),(19,'Servicio9','Descripción9',9,1,'admin-m1',1,'2023-12-30 18:26:59'),(20,'Servicio10','Descripción10',10,1,'admin-m1',1,'2023-12-30 18:26:59'),(21,'Servicio1','Descripción1',1,1,'admin-m1',1,'2023-12-30 18:26:59'),(22,'Servicio2','Descripción2',2,1,'admin-m1',1,'2023-12-30 18:26:59'),(23,'Servicio3','Descripción3',3,1,'admin-m1',1,'2023-12-30 18:26:59'),(24,'Servicio4','Descripción4',4,1,'admin-m1',1,'2023-12-30 18:26:59'),(25,'Servicio5','Descripción5',5,1,'admin-m1',1,'2023-12-30 18:26:59'),(26,'Servicio6','Descripción6',6,1,'admin-m1',1,'2023-12-30 18:26:59'),(27,'Servicio7','Descripción7',7,1,'admin-m1',1,'2023-12-30 18:26:59'),(28,'Servicio8','Descripción8',8,1,'admin-m1',1,'2023-12-30 18:26:59'),(29,'Servicio9','Descripción9',9,1,'admin-m1',1,'2023-12-30 18:26:59'),(30,'Servicio10','Descripción10',10,1,'admin-m1',1,'2023-12-30 18:26:59'),(31,'Servicio1','Descripción1',1,1,'admin-m1',1,'2023-12-30 18:26:59'),(32,'Servicio2','Descripción2',2,1,'admin-m1',1,'2023-12-30 18:26:59'),(33,'Servicio3','Descripción3',3,1,'admin-m1',1,'2023-12-30 18:26:59'),(34,'Servicio4','Descripción4',4,1,'admin-m1',1,'2023-12-30 18:26:59'),(35,'Servicio5','Descripción5',5,1,'admin-m1',1,'2023-12-30 18:26:59'),(36,'Servicio6','Descripción6',6,1,'admin-m1',1,'2023-12-30 18:26:59'),(37,'Servicio7','Descripción7',7,1,'admin-m1',1,'2023-12-30 18:26:59'),(38,'Servicio8','Descripción8',8,1,'admin-m1',1,'2023-12-30 18:26:59'),(39,'Servicio9','Descripción9',9,1,'admin-m1',1,'2023-12-30 18:26:59'),(40,'Servicio10','Descripción10',10,1,'admin-m1',1,'2023-12-30 18:26:59');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_actualizar_servicio` BEFORE UPDATE ON `servicio` FOR EACH ROW SET NEW.updated_by = CURRENT_USER(), NEW.updated_at = NOW(), NEW.estado = NEW.estado */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_actualizar_servicio` AFTER UPDATE ON `servicio` FOR EACH ROW INSERT INTO logs (accion, usuario, fecha, hora)
VALUES ('Actualización de servicio', CURRENT_USER(), CURDATE(), CURTIME()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping data for table `tareas`
--

LOCK TABLES `tareas` WRITE;
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,1,1,'cliente1@email.com'),(2,2,2,2,'cliente2@email.com'),(3,3,3,3,'cliente3@email.com'),(4,4,4,4,'cliente4@email.com'),(5,5,5,5,'cliente5@email.com'),(6,6,6,6,'cliente6@email.com'),(7,7,7,7,'cliente7@email.com'),(8,8,8,8,'cliente8@email.com'),(9,9,9,9,'cliente9@email.com'),(10,10,10,10,'cliente10@email.com'),(11,1,1,1,'cliente1@email.com'),(12,2,2,2,'cliente2@email.com'),(13,3,3,3,'cliente3@email.com'),(14,4,4,4,'cliente4@email.com'),(15,5,5,5,'cliente5@email.com'),(16,6,6,6,'cliente6@email.com'),(17,7,7,7,'cliente7@email.com'),(18,8,8,8,'cliente8@email.com'),(19,9,9,9,'cliente9@email.com'),(20,10,10,10,'cliente10@email.com');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyect_schema'
--

--
-- Dumping routines for database 'proyect_schema'
--
/*!50003 DROP FUNCTION IF EXISTS `insertar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insertar_cliente`(p_nombre VARCHAR(30), p_email VARCHAR(30), p_numero VARCHAR(12), p_direccion VARCHAR(20), p_id_pedidos INT) RETURNS int
    NO SQL
    DETERMINISTIC
BEGIN
    DECLARE nuevo_id_cliente INT;

    INSERT INTO clients (nombre, email, numero, direccion, id_pedidos) VALUES (p_nombre, p_email, p_numero, p_direccion, p_id_pedidos);
    SET nuevo_id_cliente = LAST_INSERT_ID();

    RETURN nuevo_id_cliente;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ActualizarRegistros` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OrdenarTabla` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-03 10:57:05
