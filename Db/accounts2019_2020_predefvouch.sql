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
-- Table structure for table `predefvouch`
--

DROP TABLE IF EXISTS `predefvouch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predefvouch` (
  `predefno` int(11) NOT NULL AUTO_INCREMENT,
  `entrytype` char(2) NOT NULL,
  `vouchdt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `refno` int(6) DEFAULT NULL,
  `refdt` timestamp NULL DEFAULT NULL,
  `billtype` char(2) DEFAULT 'OT',
  `dumvouchno` int(6) unsigned zerofill NOT NULL,
  `acctcode` int(5) unsigned zerofill NOT NULL,
  `fromaccount` int(5) unsigned zerofill DEFAULT NULL,
  `tds` char(1) NOT NULL DEFAULT 'N',
  `narration` varchar(255) DEFAULT NULL,
  `debitamt` double(13,2) DEFAULT '0.00',
  `creditamt` double(13,2) DEFAULT '0.00',
  `isdismissed` char(1) DEFAULT 'N',
  `userid` varchar(255) DEFAULT NULL,
  `paytype` char(1) NOT NULL DEFAULT 'O',
  `freqtype` char(1) DEFAULT 'M',
  `nextoccur` timestamp NULL DEFAULT NULL,
  `startdate` timestamp NULL DEFAULT NULL,
  `enddate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`predefno`),
  KEY `acctcode` (`acctcode`),
  CONSTRAINT `predefvouch_ibfk_1` FOREIGN KEY (`acctcode`) REFERENCES `acctmas` (`acctcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predefvouch`
--

LOCK TABLES `predefvouch` WRITE;
/*!40000 ALTER TABLE `predefvouch` DISABLE KEYS */;
/*!40000 ALTER TABLE `predefvouch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 14:31:11
