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
-- Table structure for table `templedger`
--

DROP TABLE IF EXISTS `templedger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templedger` (
  `templedgerno` int(11) NOT NULL AUTO_INCREMENT,
  `entrytype` char(2) NOT NULL,
  `vouchno` int(10) unsigned zerofill NOT NULL,
  `vouchdt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `billtype` char(2) NOT NULL DEFAULT 'OT',
  `acctcode` int(5) unsigned zerofill NOT NULL,
  `fromaccount` int(5) unsigned zerofill DEFAULT NULL,
  `tds` char(1) NOT NULL DEFAULT 'N',
  `narration` varchar(255) DEFAULT NULL,
  `debitamt` double(13,2) NOT NULL DEFAULT '0.00',
  `creditamt` double(13,2) NOT NULL DEFAULT '0.00',
  `deleted` char(1) NOT NULL DEFAULT 'N',
  `realise` char(1) NOT NULL DEFAULT 'N',
  `realisedt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createby` varchar(255) DEFAULT NULL,
  `createon` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `srno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`templedgerno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templedger`
--

LOCK TABLES `templedger` WRITE;
/*!40000 ALTER TABLE `templedger` DISABLE KEYS */;
INSERT INTO `templedger` VALUES (1,'SP',0000000001,'2020-04-06 13:03:14','SP',00005,NULL,'N',NULL,1000.00,0.00,'N','N','2020-04-06 13:03:14','SSELUSER','2020-04-06 13:03:14','3'),(2,'SP',0000000001,'2020-04-06 13:03:14','SP',00142,00005,'N',NULL,73.50,0.00,'N','N','2020-04-06 13:03:14','SSELUSER','2020-04-06 13:03:14','3'),(3,'SP',0000000001,'2020-04-06 13:03:14','SP',00142,00005,'N',NULL,73.50,0.00,'N','N','2020-04-06 13:03:14','SSELUSER','2020-04-06 13:03:14','3'),(4,'SP',0000000001,'2020-04-06 13:03:14','SP',00014,00005,'N',NULL,0.00,1297.00,'N','N','2020-04-06 13:03:14','SSELUSER','2020-04-06 13:03:14','3');
/*!40000 ALTER TABLE `templedger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 14:31:14
