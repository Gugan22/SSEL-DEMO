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
-- Table structure for table `acctmas`
--

DROP TABLE IF EXISTS `acctmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acctmas` (
  `acctcode` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `acctname` varchar(255) NOT NULL,
  `schcode` int(3) unsigned zerofill NOT NULL,
  `subschcode` int(3) unsigned zerofill NOT NULL,
  `opbalamt` double(13,2) NOT NULL,
  `prevopbalamt` double(13,2) DEFAULT '0.00',
  `opbaltype` char(1) NOT NULL,
  `prevopbaltype` char(1) DEFAULT NULL,
  `ledgnative` char(1) NOT NULL,
  `spendlimit` double(13,2) DEFAULT '0.00',
  `stockacct` char(1) NOT NULL DEFAULT 'N',
  `accttype` char(1) DEFAULT NULL,
  `plschcode` int(3) unsigned zerofill DEFAULT NULL,
  `plsubschcode` int(3) unsigned zerofill DEFAULT NULL,
  `acctstatus` char(2) NOT NULL DEFAULT 'AC',
  `createon` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`acctcode`),
  UNIQUE KEY `acctname_UNIQUE` (`acctname`),
  KEY `fk_acctmas_2_idx` (`subschcode`),
  KEY `fk_acctmas_1_idx` (`schcode`,`subschcode`),
  CONSTRAINT `fk_acctmas_1` FOREIGN KEY (`schcode`, `subschcode`) REFERENCES `subschmas` (`schcode`, `subschcode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acctmas`
--

LOCK TABLES `acctmas` WRITE;
/*!40000 ALTER TABLE `acctmas` DISABLE KEYS */;
INSERT INTO `acctmas` VALUES (00002,'CASH IN HAND',100,100,100550.00,NULL,'C',NULL,'G',0.00,'N','C',NULL,NULL,'AC',NULL),(00003,'SBI CURRENT ACCOUNT',100,200,2789977.00,NULL,'D',NULL,'G',0.00,'N','B',NULL,NULL,'AC',NULL),(00004,'STOCK OF COTTON OP BL',100,400,105000.00,NULL,'D',NULL,'G',0.00,'N','',NULL,NULL,'AC',NULL),(00005,'STOCK OF SPARES AND STORES',100,500,225600.00,NULL,'D',NULL,'G',0.00,'N','',NULL,NULL,'AC',NULL),(00006,'STOCK OF PACKING MATERIAL',100,600,210330.00,NULL,'D',NULL,'G',0.00,'N','',NULL,NULL,'AC',NULL),(00007,'WAGES PAYABLE',200,500,0.00,NULL,'D',NULL,'G',0.00,'N','',NULL,NULL,'AC',NULL),(00008,'AMIN BRROTHERS',100,300,0.00,NULL,'D',NULL,'D',0.00,'N','',NULL,NULL,'AC',NULL),(00009,'JAYAM ASSOCIATES',100,300,0.00,NULL,'D',NULL,'D',0.00,'N','',NULL,NULL,'AC',NULL),(00010,'HIGH STAR TRADERS',100,300,50000.00,NULL,'D',NULL,'D',0.00,'N','',NULL,NULL,'AC',NULL),(00011,'THE COTTON CORP OF INDIA MUMBAI',200,400,500000.00,NULL,'C',NULL,'C',0.00,'N','',NULL,NULL,'AC',NULL),(00012,'UNITED BEARING COMPANY',200,400,2050.00,NULL,'C',NULL,'C',0.00,'N','',NULL,NULL,'AC',NULL),(00013,'VXL RING TRAVELLERS PVT LTD',200,400,10050.00,NULL,'C',NULL,'C',0.00,'N','',NULL,NULL,'AC',NULL),(00014,'VIJAYA ENGINEEING COMPANY',200,400,0.00,NULL,'C',NULL,'C',0.00,'N','',NULL,NULL,'AC',NULL),(00015,'SHANTHI GEAS PVT LIMITED',200,400,0.00,NULL,'C',NULL,'C',0.00,'N','',NULL,NULL,'AC',NULL),(00016,'BALAJI COTTON ASSOCIATES',200,400,0.00,NULL,'C',NULL,'C',0.00,'N','',NULL,NULL,'AC',NULL),(00017,'OUTPUT SGST',200,100,0.00,NULL,'C',NULL,'G',0.00,'N','O',NULL,NULL,'AC',NULL),(00018,'OUTPUT CGST',200,100,0.00,NULL,'C',NULL,'G',0.00,'N','O',NULL,NULL,'AC',NULL),(00019,'OUTPUT IGST',200,100,0.00,NULL,'D',NULL,'G',0.00,'N','O',NULL,NULL,'AC',NULL),(00020,'TDS',200,300,0.00,NULL,'D',NULL,'G',0.00,'N','T',NULL,NULL,'AC',NULL),(00021,'DIRECT YARN SALES CONE',300,100,0.00,NULL,'D',NULL,'G',0.00,'N','',NULL,NULL,'AC',NULL),(00022,'DIRECT YARN SALES HANK',300,100,0.00,NULL,'D',NULL,'G',0.00,'N','',NULL,NULL,'AC',NULL),(00023,'DIRECT WASTE SALES',300,200,0.00,NULL,'D',NULL,'G',0.00,'N','',NULL,NULL,'AC',NULL),(00024,'PUCHASE OF COTTON',500,500,0.00,NULL,'D',NULL,'G',0.00,'N','',NULL,NULL,'AC',NULL),(00025,'PURCHASE OF STORES SPARES',500,600,0.00,NULL,'D',NULL,'G',0.00,'N','',NULL,NULL,'AC',NULL),(00026,'INPUT SGST',100,700,0.00,NULL,'D',NULL,'G',0.00,'N','R',NULL,NULL,'AC',NULL),(00027,'INPUT CGST',100,700,0.00,NULL,'D',NULL,'G',0.00,'N','R',NULL,NULL,'AC',NULL),(00028,'INPUT IGST',100,700,0.00,NULL,'D',NULL,'G',0.00,'N','R',NULL,NULL,'AC',NULL);
/*!40000 ALTER TABLE `acctmas` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `demoresults`
--

DROP TABLE IF EXISTS `demoresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demoresults` (
  `LocCode` int(11) NOT NULL,
  `STCode` int(11) NOT NULL,
  `CostCompCode` int(11) NOT NULL,
  `AcCode` varchar(50) NOT NULL,
  PRIMARY KEY (`LocCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoresults`
--

LOCK TABLES `demoresults` WRITE;
/*!40000 ALTER TABLE `demoresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoresults` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `loccode` int(11) NOT NULL,
  `locname` varchar(45) NOT NULL,
  PRIMARY KEY (`loccode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'CBE'),(2,'Coimbatore'),(3,'Trichy'),(4,'Chennai'),(5,'Kanyakumari');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payhistory`
--

DROP TABLE IF EXISTS `payhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payhistory` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `srno` int(11) NOT NULL,
  `paydt` date NOT NULL,
  `partycode` int(11) NOT NULL,
  `billamt` double NOT NULL,
  `balamt` double NOT NULL,
  `payamt` double NOT NULL,
  `iscompleted` char(1) NOT NULL,
  `vouchno` int(10) NOT NULL,
  `entrytype` char(2) NOT NULL,
  PRIMARY KEY (`payid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payhistory`
--

LOCK TABLES `payhistory` WRITE;
/*!40000 ALTER TABLE `payhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `payhistory` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `reportmast`
--

DROP TABLE IF EXISTS `reportmast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportmast` (
  `acctcode` int(5) unsigned zerofill DEFAULT NULL,
  `acctname` varchar(255) DEFAULT NULL,
  `schcode` int(3) DEFAULT NULL,
  `subschcode` int(3) DEFAULT NULL,
  `opbalamt` double(13,2) DEFAULT '0.00',
  `opbaltype` char(1) DEFAULT NULL,
  `ledgertype` char(1) DEFAULT NULL,
  `totaldebit` double(13,2) DEFAULT NULL,
  `totalcredit` double(13,2) DEFAULT NULL,
  `closbalamt` double(13,2) DEFAULT NULL,
  `reportname` varchar(45) DEFAULT NULL,
  `pretotaldebit` double(13,2) DEFAULT NULL,
  `pretotalcredit` double(13,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportmast`
--

LOCK TABLES `reportmast` WRITE;
/*!40000 ALTER TABLE `reportmast` DISABLE KEYS */;
INSERT INTO `reportmast` VALUES (00002,'CASH IN HAND',100,100,100550.00,'C','G',0.00,0.00,100550.00,'PLM',0.00,0.00),(00003,'SBI CURRENT ACCOUNT',100,200,2789977.00,'D','G',0.00,0.00,2789977.00,'PLM',0.00,0.00),(00004,'STOCK OF COTTON OP BL',100,400,105000.00,'D','G',0.00,0.00,105000.00,'PLM',0.00,0.00),(00005,'STOCK OF SPARES AND STORES',100,500,225600.00,'D','G',0.00,0.00,225600.00,'PLM',0.00,0.00),(00006,'STOCK OF PACKING MATERIAL',100,600,210330.00,'D','G',0.00,0.00,210330.00,'PLM',0.00,0.00),(00007,'WAGES PAYABLE',200,500,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00008,'AMIN BRROTHERS',100,300,0.00,'D','D',0.00,0.00,0.00,'PLM',0.00,0.00),(00009,'JAYAM ASSOCIATES',100,300,0.00,'D','D',0.00,0.00,0.00,'PLM',0.00,0.00),(00010,'HIGH STAR TRADERS',100,300,50000.00,'D','D',0.00,0.00,50000.00,'PLM',0.00,0.00),(00011,'THE COTTON CORP OF INDIA MUMBAI',200,400,500000.00,'C','C',0.00,0.00,500000.00,'PLM',0.00,0.00),(00012,'UNITED BEARING COMPANY',200,400,2050.00,'C','C',0.00,0.00,2050.00,'PLM',0.00,0.00),(00013,'VXL RING TRAVELLERS PVT LTD',200,400,10050.00,'C','C',0.00,0.00,10050.00,'PLM',0.00,0.00),(00014,'VIJAYA ENGINEEING COMPANY',200,400,0.00,'C','C',0.00,0.00,0.00,'PLM',0.00,0.00),(00015,'SHANTHI GEAS PVT LIMITED',200,400,0.00,'C','C',0.00,0.00,0.00,'PLM',0.00,0.00),(00016,'BALAJI COTTON ASSOCIATES',200,400,0.00,'C','C',0.00,0.00,0.00,'PLM',0.00,0.00),(00017,'OUTPUT SGST',200,100,0.00,'C','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00018,'OUTPUT CGST',200,100,0.00,'C','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00019,'OUTPUT IGST',200,100,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00020,'TDS',200,300,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00021,'DIRECT YARN SALES CONE',300,100,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00022,'DIRECT YARN SALES HANK',300,100,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00023,'DIRECT WASTE SALES',300,200,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00024,'PUCHASE OF COTTON',500,500,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00025,'PURCHASE OF STORES SPARES',500,600,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00026,'INPUT SGST',100,700,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00027,'INPUT CGST',100,700,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00),(00028,'INPUT IGST',100,700,0.00,'D','G',0.00,0.00,0.00,'PLM',0.00,0.00);
/*!40000 ALTER TABLE `reportmast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schmasts`
--

DROP TABLE IF EXISTS `schmasts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schmasts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schcode` int(3) unsigned zerofill NOT NULL,
  `schname` varchar(255) NOT NULL,
  `inherit` char(1) NOT NULL,
  `schnum` int(3) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`,`schcode`),
  UNIQUE KEY `schcode_UNIQUE` (`schcode`),
  UNIQUE KEY `schname_UNIQUE` (`schname`),
  UNIQUE KEY `schnum_UNIQUE` (`schnum`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schmasts`
--

LOCK TABLES `schmasts` WRITE;
/*!40000 ALTER TABLE `schmasts` DISABLE KEYS */;
INSERT INTO `schmasts` VALUES (1,500,'DIRECT EXPENSES','E',005),(2,100,'CURRENT ASSETS','A',001),(4,200,'CURRENT LIABILITY','L',002),(6,300,'DIRECT INCOME','I',003);
/*!40000 ALTER TABLE `schmasts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subschmas`
--

DROP TABLE IF EXISTS `subschmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subschmas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subschname` varchar(255) NOT NULL,
  `subschcode` int(3) unsigned zerofill NOT NULL,
  `grpcode` char(2) NOT NULL,
  `schcode` int(3) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`,`schcode`,`subschcode`),
  UNIQUE KEY `sub_schedule_name_UNIQUE` (`subschname`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `schcode` (`schcode`,`subschcode`),
  KEY `fk_subschmas_1_idx` (`schcode`),
  CONSTRAINT `fk_subschmas_1` FOREIGN KEY (`schcode`) REFERENCES `schmasts` (`schcode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subschmas`
--

LOCK TABLES `subschmas` WRITE;
/*!40000 ALTER TABLE `subschmas` DISABLE KEYS */;
INSERT INTO `subschmas` VALUES (3,'CASH IN HAND',100,'CA',100),(4,'BANK ACCOUNTS',200,'CA',100),(5,'SUNDRY DEBTORS',300,'CA',100),(6,'SERVICE TAX PAYABLE',200,'CL',200),(7,'TDS PAYABLE',300,'CL',200),(9,'SUNDRY CREDITORS',400,'CL',200),(10,'WAGES PAYABLE',500,'CL',200),(11,'WAGE ACCOUNT',100,'OE',500),(12,'ELECTRICITY CHARGES',200,'OE',500),(13,'FREIGHT INWARDS',300,'OE',500),(14,'TESTING FEES',400,'OE',500),(15,'SALES YARN',100,'DI',300),(16,'SALES  COTTON WASTE',200,'DI',300),(17,'SALES MISCELLANEOUS',300,'DI',300),(18,'GST PAYABLE',100,'CL',200),(19,'STOCK OF COTTON',400,'CA',100),(20,'STOCK OF STORES SPARES',500,'CA',100),(21,'STOCK OF PACKING MATERIAL',600,'CA',100),(22,'PUCHASE OF COTTON',500,'OE',500),(23,'PURCHASE OF STORES SPARES',600,'OE',500),(24,'GST RECEIVABLE',700,'CA',100);
/*!40000 ALTER TABLE `subschmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tdsdetails`
--

DROP TABLE IF EXISTS `tdsdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tdsdetails` (
  `tdscode` int(5) unsigned zerofill NOT NULL,
  `taxcode` varchar(255) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`tdscode`),
  CONSTRAINT `fk_tdsdetails_1` FOREIGN KEY (`tdscode`) REFERENCES `acctmas` (`acctcode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdsdetails`
--

LOCK TABLES `tdsdetails` WRITE;
/*!40000 ALTER TABLE `tdsdetails` DISABLE KEYS */;
INSERT INTO `tdsdetails` VALUES (00020,'101010',18.00);
/*!40000 ALTER TABLE `tdsdetails` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdetail` (
  `userid` int(11) NOT NULL,
  `cmpname` varchar(45) DEFAULT NULL,
  `addr1` varchar(60) DEFAULT NULL,
  `addr2` varchar(60) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `zipcode` int(6) DEFAULT NULL,
  `gst` varchar(45) DEFAULT NULL,
  `logo` longblob,
  `phno1` int(10) DEFAULT NULL,
  `pho2` int(10) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (1,'SSEL INDIA','No3,coral castle appartment','peelamedu',628652,1452452,'GST546455564','�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	(!\'!1!%)+...383,7(-.+\n\n\n\r,! %7.-5+-7-5+671-+/73-+5---+-1-0---/-7-8++---5--+----��\0\0\�\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0A\0\0\0\0\0\0!1A\"Qaq��2R��Bbr�\�#3�\�CSs��\��$4���\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0+\0\0\0\0\0\0\0\0!1AQq\"#a���2��$�\�\0\0\0?\0\� \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�l�\�X�.2��i�&�\�8?�#��N\���Hd\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\��;im�4=�u�F:\��;{zut\�>\�\�}TR�\�ۻm�Žo\�U\�q(�\�\�|�Zcpګ�\�9G�\�7{*\�Jj0]��/\���g\�Ԝ�[��\��\�a�Qڜe\'\�\�\��\'0��ZZ\�P�w��\0B����\�?��\�6?���Wb>��\�[�\�>u*?��>\�TyT����D\�Ȟ\��y\��\��UhV�=\�J>\r�W�U\�\�58�K��6��5\�TR�D./R��H��>)�5�\�UX\��\�\�ߏ�)���3kS����\�\�˵4�U\�JQm5�h�\�|z�IO�\�%\�\�s\�����\�ڷ/\���\�\�.d�h�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00Rw�o��B�\�+�\�?y�k�i1��[���.\�\'t������\\C*i�t�\�3*����h�l-ؕD�V�a\�$�{\�;	J\�\�8\�/�\��rG�U\�~\�g\�L۷���\r\nq\�\�1\�Jǩ�\\\�DF����\�/�\�QWm%\�ݗ�\�KhQ�\�\Z�\���\�J\�]�*����qK�֍�\�nE\'̧�\�vW��u�ZZᛨ\�T\�2\�g�\"�g�\��2#uv��\�q���ҿlZѿ�1Z�a)4�\�\�gn\�m\�}�]]��׷�(;_\�֔8�\Z}̘\�ʏ5X�_���\������\�|?>$�\�\�j��5\�?7�9�:bs~_N�\�L\�b�}y#��m\��\"�t�R�\�C\�SY\�}��p\�׌\���FI4\��3�\�\�1T\�Է(\��\��ɯ\"c\�\�\�\�/\�f����\�.2��S�Q�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�d�\�,_E��5\�+K\�辦5U���eE3UQLws���\�����\�\��l�\����Ex����?¹y�=H�_����s���\�E����^��{˦ˮ1���\�HE%d���йp\�V\�\�\n���OᎾ��0�\�4F�N�\�Us�1���8)R�;��\�\�\�}Z�di9���UVEJ��\�Y\�\�+��T[�&mΰ\�q�M�#I�\�\�ڴ��\�\�r�&��%\�3�o\�im�R��ޜ����|Y�������ٵ��\�\�tS*k�z��GO����6���u��\0�M���j��|��Y\��xӄa	X�\��\nta�ž-��}R\�FU\'N.\�\n9��9^\�񲿚/0p��g�����\\�B�\�c\�\��ug՟t�K\�i\�b�B���8�J-I>�\�Ƿ�\n�\Z�\'��\�\�%�_�G�\0��`\�v���U\�S��J)�>^M4n\�f�\�\�*Rbw^W��\�\\HH\0\0\0\0\0\0\0\0\0\0\0\0\0\0Vw���я\�V+\�J_�f*^\�?�G�W��\Z�s���x1�E\�5��\�6%�j1\�O\�*�ɤ�~\�8?\�\��\�\��R�\�S�\�\�S\�U�I��m��#\�\�^.�j�	E9Z\�v\��&�%\�в�wң^�\�Mbϫ^ޑ\�~�-����\�)7\n|.���\�b!�Z��\�Su]z�-\�\'t�J�\�/�\�/��R��E$�$��\���~wޝ>�9εb6Y�_���\�\\D�\��w~��\�\�tW�*\��E(�WvX1[B�/\�U�\�8\�\�\�\��ہ���\�N_DmQìS\�_v�|B�]��n\�=\nZo�=e\�\�♍��IiJ�I�\�Z�\�Zڛˊļ�N1ztt\�W�-:\����\�M1�1�J���u�\�n\�]\�$\�Pjux9-c�K��\�M�*8u\�]՛u*7�\�.M�$�d\��|B\�-aM��\�R\�\�.�H)�h\�\�W�\�Է��\�ɣ��o{\���#��F\����gZت���7������r\�g�\����`u2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�o�+\�T�\Z�~N���\�hm\�\'K��Mqqv�Z��<�Ӻ\�P�ƹ\�ݦ�\�\�X\���F]�\���i��,�\�;5)\�|`�/\�+�i��<>��4�\�\�/ku��;J\�iapt\�)\�K\�\�s�����#j�h\��ڌb��|Z�\�;�\�\�S7�:}X�s�\�;{�\"\�i��e\�\�\���\Z=,�9iO˜�K��\�\r\�\�W�z\�QfH�\0��dF��%FR���J\�\�^6\'�ʓJX��k\������\�\�LT�\��\�\�ͬ�WjP�\�\�M�\�\�����l�!&�\��\�\�D\� ��I.Ţ	sM����\�\�q�\�zʴ^oȺ\�]\�\�ᵄo>s���\�\"`\0\0\r\�X��^�)U�׆f�\�#�oN\�X|%Z�k.X�\�]X�\���&�e�o��>Q��\�sO��S}�\�\�U�\0i7o\��\�1r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0a�\0r\�\�\�\�&I+B]x�I꼝�Q��t\��WM�I˾�Iz�f�\�\�(��ŇZ��>h��sO��mY�IY�Z\�\��3��&<O7Aqs�z\�)h�U\�md���J�Kv}��\�\�~H�\�0�+T�*qr������%ųgz���;Q�\0{8�\�\�y#����\�n\�P��s]z�P�*i�_���X�s\��\�ݚX8iiVk�Q�{#\�N�\0\0\0\0\0R�\�{U�=z\�ZRO�i�\0[\�\�{�^���Ujʄ\�\�n\�p�N\�-<[\�*\�<<�ԅ(+\�r�W�||#Z\�F�g�\Z_�T\\ST�\�~���.뒅\�f\�\�F�:Q�a\�y.>|M�H\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04��:\�ի\r%QC2\�\�oix����\�D\�Jb��b;�8c\'�ʍ�u�f\�\�\�ߺ�E\�\�\�Wސ\�=4\��r|W\�~O���\�*\�\�a)�\�:\�\�ݖ�RJ����DF3R�\�*��:��d��\0F�ֆH~�ػw��z#.\��{��$�\�\�*\�S��.�q��h�l\�h[B���\n�\\�\�\���g� v�r\�էn�7��\Z�\����W\��}O\� t\�\���Ju\'Eq��K՜�\�+SH*4�lS��d\��*�\�Z��֩:�\�\�\�o�y$�\0y���\'Kt�:\�j�\0Ë\����Ϝ�wm��m\�\�\�\�g�ui-[\�%�o�s/����j��\�O��{N_�\�]\�|	CCrwVX���Xh�yt�}��v�#�ӂ�I+$�IpIpH\�\ZQ�Tb�b�I%d�\��>\�H\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�LC�Xz��kZ\�T\�%�z\����J��5\�\�X�\�\\b�\�\�\���y\����\0ÛP�褥�R\�0\�\�ur\�\�Ӕ++�*�\�\�)��,v\�m\Z-\�\�NI}�n5�^o�\�\0�\�`+\�ޣZ>4澨S\�Uz*U_�$��� ,�\�\�:�����\��zԱg\�^\�q�\�U�%\�0�\�t����\\	��W�֕;\��\�����yX�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N)�5td\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�]����V��\�;捔�e;I߫�%ǰ\�\"��FPnm�T\�#����\�n\�T���\0ݫ���:�ʯwu\�\�㓭\�\�Kla\�թZ9[y��RI�{�\�\Z4�u(\�$�\�ͫ+\�K\n�׿.���Q\�Wb9q�w���\�3B9j����u�~[B�\�V�\�k8�����}���[yG��Ռ&\�(\�,��+߅\��\�(,�h\�^\�Ut|-\�=x\�y���},�J��Y��)JQ��\�u�i�kt\�]�F)7R��sII7(�\�\�\�\����0qrR����\�\�~�f�u-��IF��\�\�\����G\�֣ӆ�\�62Te�S�D\�8�d\�\�ms=eg~<o��܆Т�ڭ\'�\�6�^kh�믑��A���\�\�p�n��\��5�\�9)J�\�\�\�)fT�t���.�{{�-�[3�c\�}��\'\�	Fѯ<lUUJ\�rʤ\�I��o\�/\��\�l\�5gJ�Hf�9\�w�\�\'읞��\�٪�HM������\�xK2J���j��#�����\�9�b\�_]�ա۪fc��7I&\�V\�\nϒ�y�u�y�\Z8}݌5�\�\�L��\�$�\�o����\�\�z\�w\�R�j�\�(ɼ�JmF�\�	\�Zԓ\�\�-�I^ꢒpY\\Z�]I\�Gڣ/C\�٣\'9ZJ\rK+\�׎x��7{~��\�m\�Ө�.��r�4�\�+�\�\"ݤ�Ւ�YU��;EF*��%N\�\�\�P�ѩf奝�b���ܢ\�\�.�\�:i\�-ۤ�I?�\�$\�Xl��N5\�\�]�$�N\�\�lͥw̙�쯫\�\�\�@\0\0\0\0\0\0\0�\�',8564,NULL,NULL,'india','TamilNadu');
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yearclosingbal`
--

DROP TABLE IF EXISTS `yearclosingbal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yearclosingbal` (
  `acctcode` int(11) NOT NULL,
  `opbalamt` double(13,2) NOT NULL,
  `closingBal` double(13,2) NOT NULL,
  `opbaltype` char(1) NOT NULL,
  `closingBalType` char(1) NOT NULL,
  `accttype` char(1) DEFAULT NULL,
  UNIQUE KEY `acctcode_UNIQUE` (`acctcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yearclosingbal`
--

LOCK TABLES `yearclosingbal` WRITE;
/*!40000 ALTER TABLE `yearclosingbal` DISABLE KEYS */;
/*!40000 ALTER TABLE `yearclosingbal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 14:28:50
