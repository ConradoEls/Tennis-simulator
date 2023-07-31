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
INSERT INTO `productos` VALUES ('AMOLA','Amoladora','2022-05-23',5),('BARB','Barbie','2022-10-13',10),('COCIN','Cocina','2022-09-30',4),('COSTI','Costillar','2023-07-27',9),('DQUI','Don Quijote','2023-07-27',1),('ECDV','El Codigo Da Vinci','2023-03-19',1),('HELAD','Heladera','2021-03-22',4),('HPOT','Harry Potter','2023-07-27',1),('JDG','Tu a Londres, Yo a California','2023-07-27',1),('LAVAR','Lavarropa','2022-03-23',4),('LB','Biblia','2023-07-27',1),('MANGU','Manguera','2022-01-23',2),('MAXS','Max Steel','2022-03-13',10),('NARN','Narnia','2023-07-27',1),('OLL','Olla','2023-03-13',13),('PLAT','Plato','2022-03-28',13),('RYF','A todo Gas','2023-07-27',1),('SSTP','Soñando, soñando... triunfé patinando','2023-07-27',1),('TAZ','Taza','2020-03-23',13),('TIERF','Tierra fertil','2023-02-02',2);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-27 18:37:49
