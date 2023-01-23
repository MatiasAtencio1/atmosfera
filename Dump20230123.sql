-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: atmosfera
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `dj`
--

DROP TABLE IF EXISTS `dj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dj` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `tracks` int NOT NULL,
  `prize` int NOT NULL,
  `fiesta_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `dj_fiesta_idx` (`fiesta_id`),
  CONSTRAINT `dj_fiesta` FOREIGN KEY (`fiesta_id`) REFERENCES `fiesta` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dj`
--

LOCK TABLES `dj` WRITE;
/*!40000 ALTER TABLE `dj` DISABLE KEYS */;
INSERT INTO `dj` VALUES (1,'topo larocca',35,200000,1),(2,'morchon',25,20000,1),(3,'fran carner',15,10000,1);
/*!40000 ALTER TABLE `dj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiesta`
--

DROP TABLE IF EXISTS `fiesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fiesta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creation_date` date NOT NULL,
  `tickets` int NOT NULL,
  `event_name` char(9) NOT NULL,
  `place` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_name_UNIQUE` (`event_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiesta`
--

LOCK TABLES `fiesta` WRITE;
/*!40000 ALTER TABLE `fiesta` DISABLE KEYS */;
INSERT INTO `fiesta` VALUES (1,'2023-02-11',500,'atmosfera','ibiza disco');
/*!40000 ALTER TABLE `fiesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrantes`
--

DROP TABLE IF EXISTS `integrantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_name` varchar(30) NOT NULL,
  `charge` varchar(30) NOT NULL,
  `salary` char(1) NOT NULL,
  `fiesta_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `integrantes_fiesta_idx` (`fiesta_id`),
  CONSTRAINT `integrantes_fiesta` FOREIGN KEY (`fiesta_id`) REFERENCES `fiesta` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrantes`
--

LOCK TABLES `integrantes` WRITE;
/*!40000 ALTER TABLE `integrantes` DISABLE KEYS */;
INSERT INTO `integrantes` VALUES (1,'jose ignacio muguruza','ceo','x',1),(2,'juan ignacio giovannone','ceo','x',1),(3,'marcos alvarez','ceo','x',1),(4,'marcos valverde','ceo','x',1),(5,'matias atencio','cso','x',1),(6,'santiago muller','cso','x',1);
/*!40000 ALTER TABLE `integrantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vj`
--

DROP TABLE IF EXISTS `vj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vj` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visual_elements` int NOT NULL,
  `decoration_elements` int NOT NULL,
  `fiesta_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vj_fiesta_idx` (`fiesta_id`),
  CONSTRAINT `vj_fiesta` FOREIGN KEY (`fiesta_id`) REFERENCES `fiesta` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vj`
--

LOCK TABLES `vj` WRITE;
/*!40000 ALTER TABLE `vj` DISABLE KEYS */;
INSERT INTO `vj` VALUES (1,5,15,1);
/*!40000 ALTER TABLE `vj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 19:35:12
