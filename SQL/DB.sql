CREATE DATABASE  IF NOT EXISTS `pruebatecnica` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pruebatecnica`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: pruebatecnica
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_clientes` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `cuit` varchar(15) NOT NULL,
  PRIMARY KEY (`id_clientes`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Conrado','Els','20-41322631-8'),(2,'Gaston','Felix','10-1422331-1'),(3,'Diego','Fredes','18-33897672-3'),(4,'Agustin','Benedetti','12-23988590-2'),(5,'Angel','Flores','27-12344099-9'),(6,'Fabian','Molina','15-43987398-6');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `codigo` varchar(15) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `id_rubro` bigint NOT NULL,
  PRIMARY KEY (`codigo`,`id_rubro`),
  KEY `fk_productos_rubros1_idx` (`id_rubro`),
  CONSTRAINT `fk_productos_rubros1` FOREIGN KEY (`id_rubro`) REFERENCES `rubros` (`id_rubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('AMOLA','Amoladora','2022-05-23',5),('GOT','Game of Thrones',DATE(NOW()),1),('EPNEM','Este problema no es mio',CURDATE(),1),('BARB','Barbie','2022-10-13',10),('COCIN','Cocina','2022-09-30',4),('COSTI','Costillar','2023-07-27',9),('DQUI','Don Quijote',CURDATE(),1),('ECDV','El Codigo Da Vinci',CURDATE(),1),('HELAD','Heladera','2021-03-22',4),('HPOT','Harry Potter','2023-07-27',1),('JDG','Tu a Londres, Yo a California','2023-07-27',1),('LAVAR','Lavarropa','2022-03-23',4),('LB','Biblia','2023-07-27',1),('MANGU','Manguera','2022-01-23',2),('MAXS','Max Steel','2022-03-13',10),('NARN','Narnia','2023-07-27',1),('OLL','Olla','2023-03-13',13),('PLAT','Plato','2022-03-28',13),('RYF','A todo Gas','2023-07-27',1),('SSTP','Soñando, soñando... triunfé patinando','2023-07-27',1),('TAZ','Taza','2020-03-23',13),('TIERF','Tierra fertil','2023-02-02',2);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubros`
--

DROP TABLE IF EXISTS `rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubros` (
  `id_rubro` bigint NOT NULL AUTO_INCREMENT,
  `rubro` varchar(25) NOT NULL,
  PRIMARY KEY (`id_rubro`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubros`
--

LOCK TABLES `rubros` WRITE;
/*!40000 ALTER TABLE `rubros` DISABLE KEYS */;
INSERT INTO `rubros` VALUES (1,'Libreria'),(2,'Jardineria'),(3,'Pinturas'),(4,'Electrodomesticos'),(5,'Herramientas'),(6,'Electricidad'),(7,'Verduleria'),(8,'Higiene'),(9,'Carniceria'),(10,'Jugueteria'),(11,'Mecanico'),(13,'Bazar');
/*!40000 ALTER TABLE `rubros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` bigint NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `cantidad` bigint NOT NULL,
  `precio_unitario` double NOT NULL,
  `codigo_producto` varchar(15) NOT NULL,
  `id_cliente` bigint NOT NULL,
  PRIMARY KEY (`id_venta`,`codigo_producto`,`id_cliente`),
  KEY `fk_ventas_productos_idx` (`codigo_producto`),
  KEY `fk_ventas_clientes1_idx` (`id_cliente`),
  CONSTRAINT `fk_ventas_clientes1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_clientes`),
  CONSTRAINT `fk_ventas_productos` FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2023-02-20',1,22000,'AMOLA',1),(2,'2023-03-19',1,33500.5,'LAVAR',1),(3,'2023-03-19',1,33500.5,'LAVAR',1),(4,'2023-01-22',2,4000,'MAXS',1),(5,'2023-06-22',3,20000,'OLL',1),(6,'2023-07-10',4,3500.7,'TIERF',1),(7,'2023-07-12',2,3500.7,'TIERF',2),(8,'2023-06-04',6,467,'PLAT',2),(9,'2023-04-23',6,500.23,'TAZ',2),(10,'2023-07-20',1,3100.6,'ECDV',2),(11,'2023-07-12',1,68250.35,'HELAD',2),(12,'2023-03-01',2,3500.7,'TIERF',3),(13,'2022-12-23',4,500.23,'TAZ',3),(14,'2023-01-03',1,4000,'MAXS',3),(15,'2023-01-08',1,68250.35,'HELAD',3),(16,'2023-02-02',1,89599.9,'COCIN',3),(17,'2023-07-16',1,3500.7,'TIERF',4),(18,'2023-07-18',1,33500.5,'LAVAR',4),(19,'2023-05-23',1,2400.3,'LB',4),(20,'2023-03-01',2,68250.35,'HELAD',4),(21,'2023-04-06',5,500.23,'TAZ',4),(22,'2023-07-27',2,3500.7,'TIERF',5),(23,'2023-02-18',1,20000,'OLL',5),(24,'2023-07-23',2,500.23,'TAZ',5),(25,'2022-09-10',1,2199.8,'MANGU',5),(26,'2022-12-25',1,3150.9,'BARB',5),(27,'2023-07-18',1,43000.5,'PLAT',1),(28,'2023-08-02',1,2000.5,'OLL',2),(29,'2023-08-01',1,2300,'HPOT',3),(30,'2023-07-03',1,1200.9,'COCIN',3),(31,'2023-07-06',1,399.8,'HELAD',3),(32,'2023-08-01',1,12455.8,'LAVAR',2),(33,'2023-02-03',1,45765.8,'BARB',4),(34,'2023-07-12',1,35890.7,'TAZ',5),(35,'2023-04-03',1,1005.5,'MAXS',4),(36,'2023-07-27',2,2230,'PLAT',1),(37,'2023-07-27',2,2230,'PLAT',1),(38,'2023-07-27',1,2230,'COSTI',1);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pruebatecnica'
--

--
-- Dumping routines for database 'pruebatecnica'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-27 18:31:06
