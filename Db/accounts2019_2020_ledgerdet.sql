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
-- Table structure for table `ledgerdet`
--

DROP TABLE IF EXISTS `ledgerdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ledgerdet` (
  `ledgerdelno` int(11) NOT NULL AUTO_INCREMENT,
  `entrytype` char(2) NOT NULL,
  `vouchno` int(6) unsigned zerofill NOT NULL,
  `oldacctcode` int(5) unsigned zerofill DEFAULT NULL,
  `newacctcode` int(5) unsigned zerofill DEFAULT NULL,
  `olddebitamt` double(13,2) DEFAULT NULL,
  `oldcreditamt` double(13,2) DEFAULT NULL,
  `newdebitamt` double(13,2) DEFAULT NULL,
  `newcreditamt` double(13,2) DEFAULT NULL,
  `deleteremark` varchar(255) DEFAULT NULL,
  `modifyby` varchar(255) DEFAULT NULL,
  `modifyon` timestamp NULL DEFAULT NULL,
  `deleteby` varchar(255) DEFAULT NULL,
  `deleteon` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ledgerdelno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledgerdet`
--

LOCK TABLES `ledgerdet` WRITE;
/*!40000 ALTER TABLE `ledgerdet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ledgerdet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 14:31:09
