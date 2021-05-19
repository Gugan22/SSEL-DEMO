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
-- Table structure for table `alertmessage`
--

DROP TABLE IF EXISTS `alertmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertmessage` (
  `alertno` int(11) NOT NULL AUTO_INCREMENT,
  `alerttype` char(2) DEFAULT 'AL',
  `alertmsg` varchar(255) DEFAULT NULL,
  `iscompleted` char(1) NOT NULL DEFAULT 'N',
  `isdismissed` char(1) NOT NULL DEFAULT 'N',
  `actiontakenby` varchar(255) DEFAULT NULL,
  `actiontakenon` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createby` varchar(255) NOT NULL,
  `createon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyby` varchar(255) DEFAULT NULL,
  `modifyon` timestamp NULL DEFAULT NULL,
  `acctcode` int(5) unsigned zerofill NOT NULL,
  `approvfrm` char(2) NOT NULL,
  PRIMARY KEY (`alertno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alertmessage`
--

LOCK TABLES `alertmessage` WRITE;
/*!40000 ALTER TABLE `alertmessage` DISABLE KEYS */;
INSERT INTO `alertmessage` VALUES (1,'AL','Payable to the VIJAYA ENGINEEING COMPANY 1','N','N',NULL,'2020-04-06 13:03:14','SSELUSER','2020-04-06 13:03:14',NULL,NULL,00014,'AM');
/*!40000 ALTER TABLE `alertmessage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 14:31:13
