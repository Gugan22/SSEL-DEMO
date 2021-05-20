CREATE DATABASE  IF NOT EXISTS `ssel-demo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ssel-demo`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ssel-demo
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `acctmas`
--

DROP TABLE IF EXISTS `acctmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acctmas` (
  `acctId` int NOT NULL,
  `acctname` varchar(45) NOT NULL,
  PRIMARY KEY (`acctId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acctmas`
--

LOCK TABLES `acctmas` WRITE;
/*!40000 ALTER TABLE `acctmas` DISABLE KEYS */;
INSERT INTO `acctmas` VALUES (1,'Company1'),(2,'Company2'),(3,'Company3'),(4,'Company4'),(5,'Company5'),(6,'Company6');
/*!40000 ALTER TABLE `acctmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoresults`
--

DROP TABLE IF EXISTS `demoresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoresults` (
  `s.no` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `STCode` varchar(45) NOT NULL,
  `CostCompCode` varchar(45) NOT NULL,
  `AcCode` varchar(45) NOT NULL,
  `LocCode` int NOT NULL,
  PRIMARY KEY (`s.no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoresults`
--

LOCK TABLES `demoresults` WRITE;
/*!40000 ALTER TABLE `demoresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `locId` int NOT NULL,
  `locname` varchar(45) NOT NULL,
  PRIMARY KEY (`locId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Salem'),(2,'CBE'),(3,'Chennai'),(4,'Madurai');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schmasts`
--

DROP TABLE IF EXISTS `schmasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schmasts` (
  `schId` int NOT NULL,
  `schname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`schId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schmasts`
--

LOCK TABLES `schmasts` WRITE;
/*!40000 ALTER TABLE `schmasts` DISABLE KEYS */;
INSERT INTO `schmasts` VALUES (1,'SCH1'),(2,'SCH2'),(3,'SCH3'),(4,'SCH4'),(5,'SCH5');
/*!40000 ALTER TABLE `schmasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subschmas`
--

DROP TABLE IF EXISTS `subschmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subschmas` (
  `subschId` int NOT NULL,
  `subschname` varchar(45) NOT NULL,
  PRIMARY KEY (`subschId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subschmas`
--

LOCK TABLES `subschmas` WRITE;
/*!40000 ALTER TABLE `subschmas` DISABLE KEYS */;
INSERT INTO `subschmas` VALUES (1,'COD'),(2,'UPI'),(3,'Cheque'),(4,'Bank Transfer'),(5,'DD');
/*!40000 ALTER TABLE `subschmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ssel-demo'
--

--
-- Dumping routines for database 'ssel-demo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 21:00:54
