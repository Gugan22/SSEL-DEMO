-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: accounts2019_2020
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `closingentry`
--

DROP TABLE IF EXISTS `closingentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `closingentry` (
  `acctcode` int(5) unsigned zerofill NOT NULL,
  `clos_bal1` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal2` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal3` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal4` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal5` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal6` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal7` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal8` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal9` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal10` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal11` double(13,2) NOT NULL DEFAULT '0.00',
  `clos_bal12` double(13,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`acctcode`),
  CONSTRAINT `fk_closingentry_1` FOREIGN KEY (`acctcode`) REFERENCES `acctmas` (`acctcode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `closingentry`
--

LOCK TABLES `closingentry` WRITE;
/*!40000 ALTER TABLE `closingentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `closingentry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 14:31:10
