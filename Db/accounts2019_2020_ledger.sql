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
-- Table structure for table `ledger`
--

DROP TABLE IF EXISTS `ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledger` (
  `ledgerno` int(11) NOT NULL AUTO_INCREMENT,
  `entrytype` char(2) NOT NULL,
  `vouchno` int(10) unsigned zerofill NOT NULL,
  `vouchdt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `refno` int(6) DEFAULT NULL,
  `refdt` timestamp NULL DEFAULT NULL,
  `billtype` char(2) NOT NULL DEFAULT 'OT',
  `acctcode` int(5) unsigned zerofill NOT NULL,
  `fromaccount` int(5) unsigned zerofill DEFAULT NULL,
  `tds` char(1) NOT NULL DEFAULT 'N',
  `narration` varchar(255) DEFAULT NULL,
  `debitamt` double(13,2) NOT NULL DEFAULT '0.00',
  `creditamt` double(13,2) NOT NULL DEFAULT '0.00',
  `deleted` char(1) NOT NULL DEFAULT 'N',
  `realise` char(1) NOT NULL DEFAULT 'N',
  `realisedt` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `createby` varchar(255) DEFAULT NULL,
  `createon` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `srno` int(11) DEFAULT NULL,
  PRIMARY KEY (`ledgerno`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledger`
--

LOCK TABLES `ledger` WRITE;
/*!40000 ALTER TABLE `ledger` DISABLE KEYS */;
INSERT INTO `ledger` VALUES (1,'CP',0000000001,'2020-03-28 02:23:55',1,'2020-03-28 02:23:55','OT',00008,00002,'N','Purchase of spares',1000.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 02:23:55',NULL),(2,'CP',0000000001,'2020-03-28 02:23:55',1,'2020-03-28 02:23:55','OT',00002,NULL,'N',NULL,0.00,1000.00,'N','N',NULL,'SSELUSER','2020-04-05 02:23:55',NULL),(3,'CP',0000000002,'2020-03-28 02:33:55',2,'2020-03-28 02:33:55','OT',00020,00002,'Y','Purchase of spares for blow room',216.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 02:33:55',NULL),(4,'CP',0000000002,'2020-03-28 02:33:55',2,'2020-03-28 02:33:55','OT',00010,00002,'N','Purchase of spares for blow room',984.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 02:33:55',NULL),(5,'CP',0000000002,'2020-03-28 02:33:55',2,'2020-03-28 02:33:55','OT',00002,NULL,'N',NULL,0.00,1200.00,'N','N',NULL,'SSELUSER','2020-04-05 02:33:55',NULL),(6,'CP',0000000003,'2020-03-28 02:37:50',3,'2020-03-28 02:37:50','OT',00020,00002,'Y','Misc. Expenses for travelling',360.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 02:37:50',NULL),(7,'CP',0000000003,'2020-03-28 02:37:50',3,'2020-03-28 02:37:50','OT',00009,00002,'N','Misc. Expenses for travelling',1640.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 02:37:50',NULL),(8,'CP',0000000003,'2020-03-28 02:37:50',3,'2020-03-28 02:37:50','OT',00002,NULL,'N',NULL,0.00,2000.00,'N','N',NULL,'SSELUSER','2020-04-05 02:37:50',NULL),(9,'CR',0000000001,'2020-03-28 02:46:07',1,'2020-03-28 02:46:07','OT',00003,00002,'N','Cash received from bank for office expenses',0.00,55000.00,'N','N',NULL,'SSELUSER','2020-04-05 02:46:07',NULL),(10,'CR',0000000001,'2020-03-28 02:46:11',1,'2020-03-28 02:46:11','OT',00002,NULL,'N',NULL,55000.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 02:46:11',NULL),(11,'BP',0000000001,'2020-03-28 04:33:39',1,'2020-03-28 04:33:39','RW',00016,00003,'N','Purchase of Cotton',100000.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 04:33:39',NULL),(12,'BP',0000000001,'2020-03-28 04:33:39',1,'2020-03-28 04:33:39','RW',00003,NULL,'N',NULL,0.00,100000.00,'N','N',NULL,'SSELUSER','2020-04-05 04:33:39',NULL),(13,'BP',0000000002,'2020-03-28 04:36:25',2,'2020-03-28 04:36:25','OT',00020,00003,'Y','Transport expense paid',2160.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 04:36:25',NULL),(14,'BP',0000000002,'2020-03-28 04:36:25',2,'2020-03-28 04:36:25','OT',00016,00003,'N','Transport expense paid',9840.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 04:36:25',NULL),(15,'BP',0000000002,'2020-03-28 04:36:25',2,'2020-03-28 04:36:25','OT',00003,NULL,'N',NULL,0.00,12000.00,'N','N',NULL,'SSELUSER','2020-04-05 04:36:25',NULL),(16,'BR',0000000001,'2020-03-30 04:41:18',1,'2020-03-30 04:41:18','SA',00009,00003,'N','Received money for sale of yarn',0.00,2500000.00,'N','N',NULL,'SSELUSER','2020-04-05 04:41:18',NULL),(17,'BR',0000000001,'2020-03-30 04:41:20',1,'2020-03-30 04:41:20','SA',00003,NULL,'N',NULL,2500000.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 04:41:20',NULL),(18,'GJ',0000000001,'2020-04-05 04:48:43',1,'2020-03-30 04:48:43','OT',00016,NULL,'N','Cotton purchase quality adjustment',1240.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 04:48:43',NULL),(19,'GJ',0000000001,'2020-04-05 04:48:43',1,'2020-03-30 04:48:43','OT',00024,NULL,'N','Cotton purchase quality adjustment',0.00,1240.00,'N','N',NULL,'SSELUSER','2020-04-05 04:48:43',NULL),(20,'GJ',0000000002,'2020-04-05 04:51:00',1,'2020-03-30 04:51:00','OT',00009,NULL,'N','Cotton purchase quality subject',9330.00,0.00,'N','N',NULL,'SSELUSER','2020-04-05 04:51:00',NULL),(21,'GJ',0000000002,'2020-04-05 04:51:00',1,'2020-03-30 04:51:00','OT',00024,NULL,'N','Cotton purchase quality subject',0.00,9330.00,'N','N',NULL,'SSELUSER','2020-04-05 04:51:00',NULL);
/*!40000 ALTER TABLE `ledger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 14:31:12