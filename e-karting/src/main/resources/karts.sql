CREATE DATABASE  IF NOT EXISTS `client_manager` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `client_manager`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: client_manager
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `carreres`
--

DROP TABLE IF EXISTS `carreres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carreres` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_cli_id` int(11) NOT NULL,
  `car_name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `car_data` date DEFAULT NULL,
  `car_horaInici` time DEFAULT NULL,
  `car_horaFi` time DEFAULT NULL,
  `car_posicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`car_id`,`car_cli_id`),
  KEY `car_cli_fk_idx` (`car_cli_id`),
  CONSTRAINT `car_cli_fk` FOREIGN KEY (`car_cli_id`) REFERENCES `client` (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreres`
--

LOCK TABLES `carreres` WRITE;
/*!40000 ALTER TABLE `carreres` DISABLE KEYS */;
INSERT INTO `carreres` VALUES (1,1,'prueba','2020-02-21','09:00:00','12:00:00',1),(2,2,'prueba','2020-02-21','09:00:00','12:00:00',2);
/*!40000 ALTER TABLE `carreres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nif` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cli_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `cli_surname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cli_email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cli_phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cli_balance` double DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'40000000A','Emilio','Merl','emerl@gmail.com','9879872193',2001),(2,'40000000B','Joan','Sastre','jsastre@gmail.com','987314124',200),(3,'40000000C','Elisa','Gual','egual@gmail.com','97123123123',0),(4,'40000000D','Fernando','Soler','fsoler@gmail.com','971231273',2000),(5,'40000000E','Ángela','Gutiérrez','agutierrez@gmail.com','978676767',2500),(6,'40000000F','Miguel','López','mlopez@gmail.com','978676768',3000);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `karts`
--

DROP TABLE IF EXISTS `karts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `karts` (
  `kar_id` int(11) NOT NULL AUTO_INCREMENT,
  `kar_name` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `kar_type` enum('BASIC','E_KART') COLLATE utf8_spanish_ci NOT NULL,
  `kar_pricePerMinute` double NOT NULL,
  PRIMARY KEY (`kar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `karts`
--

LOCK TABLES `karts` WRITE;
/*!40000 ALTER TABLE `karts` DISABLE KEYS */;
INSERT INTO `karts` VALUES (1,'Kart 1','BASIC',0.5),(2,'Kart 2','E_KART',1);
/*!40000 ALTER TABLE `karts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17 17:42:11
