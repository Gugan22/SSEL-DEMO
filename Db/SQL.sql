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
INSERT INTO `userdetail` VALUES (1,'SSEL INDIA','No3,coral castle appartment','peelamedu',628652,1452452,'GST546455564','ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	(!\'!1!%)+...383,7(-.+\n\n\n\r,! %7.-5+-7-5+671-+/73-+5---+-1-0---/-7-8++---5--+----ÿÀ\0\0\Ð\0ò\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0A\0\0\0\0\0\0!1A\"Qaq‘2R¡±BbrÁ\Ñ#3’\ÂCSs‚²\Òð$4ƒ¢ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0+\0\0\0\0\0\0\0\0!1AQq\"#a‘±2¡Á$ÿ\Ú\0\0\0?\0\î \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Àlƒ\ÊXˆ.2ŠñiŽ&›\á8?ó#ôùN\ÙðöHd\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\Ù’;imš4=ùu¹F:\Éù;{zut\è>\Ô\ê}TRª\äÛ»m·Å½o\âU\åq(£\á·\Î|öZcpÚ«\×9GŽ\ë7{*\ËJj0]¯­/\Ñõñµg\ïÔœ¼[·¢\Ðø\Âa§QÚœe\'\Ý\Ë\Åð\'0›¥ZZ\ÎP‡w¼ÿ\0B¯þ¬‰\ï?¥„\Æ6?ˆý Wb>²®\Ä[©\î…>u*?«ò>\åºTyTª¿•þD\ÏÈž\Ñùy\Ï±\çúUhV”=\ÙJ>\r¢W¼U\á\ï58öKª6±§5\îTRî’³õD./R“µH¸ö>)ø5¡\ãUX\Üù\Ç\èß—)ý®û3kS®¬´’\ã\ÇËµ4£U\ÆJQm5ªh¾\ì|z­IOƒ\á%\Ø\Ñs\Ãóý‚¿\åÚ·/\Òø©\è\Þ.d´h€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00Rw³o¹·B“\ê+©\É?yóŠk—i1½»[¡¥’.\Õ\'t»£ö¥ùù\\C*iùtý\×3*ùµýŸh³l-Ø•DªV¼a\Ê$ü{\éº;	J\Õ\ê­8\Â/Ÿ\Þ‘rG–U\î~\çg\ÌLÛ·÷—–\r\nq\Ë\Æ1\ìJÇ©\\\ÄDF¥™™\ç/‰\ÔQWm%\ÚÝ—©\áKhQ“\Ë\Z´\äû¢\ÙJ\Þ]¥*µ¥¾ŽqK•Ö¾\ÝnE\'Ì§½\ÅvW¶šuˆZZá›¨\ÝT\é2\êgž\"„g¤\âù2#uvŒª\Òq›¼ Ò¿lZÑ¿™1Z´a)4’\â\Ùgn\åm\Å}¥]]º­×·¼(;_\ÐÖ”8­\Z}Ì˜\ÜÊ5Xò´_ž¨†\Ûþš´¦½\Ý|?>$þ\æ\Ðj©ñ5\á?7ò9ü:bs~_N…\ÆL\Ìbü}y#÷ƒm\Ë´\"õtªR¦\êC\ÂSY\×}’ñ±p\Ã×Œ\ãÁ©FI4\×Ÿ3•\ï\Æ1T\ÆÔ·(\Óó\ÛùÉ¯\"c\Ù\î\Ú\Ë/\Ùfú²»§\Ý.2ŸS¦Qº\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0†d\Þ,_E†«5\Ç+K\Åè¾¦5U¶™™eE3UQLwsý½\éñú©\å\áülû\ÝýûExÁû«­?Â¹y½=H¤_·–„ªsœŸò\ÇEù²ƒ^þµ{Ë¦Ë®1±ô§\ÚHE%d¬‘ôÐ¹p\ÃV\Ð\Þ\n®œ³OáŽ¾¯‚0®\å4FµNŒ\è·Us¥1ª£¼8)R¯;®¬\ä\å\Û}Zñ»di9´·šUVEJš\ßY\ß\èˆ+œ®T[õ&mÎ°\éqýM‘#I„\î\ÃÚ´ðô\æ\Úr©&­Á%\Ã3ño\äim§R»¼Þœ¢´Šý|Y ‰—»õªÙµ’²\â\×tS*k¿z˜µGOþ°ª‹6ª›µuúÿ\0M‚jŠó|¢»Y\Ðð˜xÓ„a	Xò\Ùø\nta–Å¾-ö¶}R\ÆFU\'N.\î\n9­Á9^\Ññ²¿š/0p£g¬©²ò¦õ\\ºB‰\íc\äš\ÄÁugÕŸtùK\Íi\ãb£B«„£8»J-I>ô\îŽÇ·°\n¾\Z­\'ö¢\í\Ý%¬_ªGÿ\0Ÿ©`\Òv½‘U\èSª¸J)ø>^M4n\ïf¸\Ì\Ô*Rbw^Wú§\ê\\HH\0\0\0\0\0\0\0\0\0\0\0\0\0\0Vwþ­°Ñ\ÅV+\ÑJ_‘f*^\Ñ?ƒGüWþ‰\Zùs¥š›x1®E\ê5ô¹\Ö6%˜j1\ì§O\×*¹É¤ô~\ì8?\á\Ãð\Ç\èŠþR´\ãSð\Ñ\ïS\æ­U¹I¤’m·Á#\è§\ï^.¥j«	E9Z\Îv\æù&ù%\ÇÐ²¿wÒ£^³\áMbÏ«^Þ‘\Þ~-»¼³ª\Ü)7\n|.´”»\ßb!ð¸Z•©\ÂSu]zð-\Û\'t¡J»\Ï/‡\ì/ˆ²R¥«E$—$¬Š\ØÁ»~wÞ>‹9Îµb6Y§_ª†\Ý\\D½\ìñw~ˆ“\Â\îtWñ*\É÷E(¯WvX1[B/\âU¥\Å8\Ç\ê\È\ÚûÛöð—\àN_DmQÃ¬S\Û_v¥|Bý]ôön\à¶=\nZÂœoñ=e\ê\Íâ™öƒIiJ•I¾\ÙZü\ÙZÚ›ËŠÄ¼®N1ztt\ÓW¿-:\Òðù”\ÑM1¥1£Jªªªu™\Õn\Þ]\î…$\éPjux9-c÷K¸’\ÝM›*8u\Ò]Õ›u*7«\Í.M÷$¾d\èî£ƒ|B\ë-aMý—\ÊR\ï\î.¦H)·h\ä\ÅW‚\àªÔ·ƒ•\×É£µœo{\ßýþ#ñ¯ôF\äÀšögZØªø©7ü³ûŽ”r\Ïgù\ßúªý`u2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­oý+\áT¾\Z~Nñþ¢\Êhm\Ü\'K‡«MqqvñZ¯š<¯Óº\ÝP÷Æ¹\éÝ¦¯\ä\ÇX\ØŽ“F]´\á¬þiœš,¾\î;5)\Ñ|`ó/\Ã+þiú•<>½·4ž\ë\î/ku˜ª;J\Öiapt\è)\ÏK\É\Êsœ¹ø·Á#j½h\ÂœÚŒbœ›|Z¶\Î;½\Û\ÙS7·:}Xðsû\Õ;{—\"\êi‰e\Íî˜\í¹\í”†\Z=,¾9iOËœ¾K¼¥\í\r\æ\ÆW¾z\ÒQfHÿ\0ó«ódF”§%FR”’J\í¾\ä^6\'³Ê“JX™ºk\à…œüž‹\Ê\æLTµ\Ûó\ç\æÍ¬¥WjPœ\ß\ÝMü\Ñ\Öð©‚¥l´!&¾\Ôú\ï\ÖD\Ä ’²I.Å¢	sM—¸¸™\Ù\Õq¥\ÏzÊ´^oÈº\ì]\Ü\Ãáµ„o>s–²ò\å\"`\0\0\r\ÛXž“^§)Uª×†f—\É#®oN\ÒX|%ZŸk.X÷\Î]Xü\ÝüŽ&˜eôo‰«>Q¥—\ÎsOú–S}˜\à²\á§Uÿ\0i7o\Ã¯\×1r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0a™\0r\Í\é\Ù\Ý&I+B]xøIê¼ýQ¹¸t\äñWM¥IË¾öIzýfõ\ì\Ú(¼¿Å‡Z·¶>hösO¯ˆmY¥IYñZ\Î\éú3³&<O7Aqs­z\Ç)hûU\ÛmdÁÁñJ¥Kv}ˆ¾\æ\Ó~H \à0•+T*qrœ’ú¶ù%Å³gz±Ž¶;Qÿ\0{8®\è\Óy#þ›ù\Ùn\ÃP¢ñs]z—P¿*iñ_‰«øX¶s\Éý\ÖÝšX8iiVk¯Q­{#\ÜN€\0\0\0\0\0R÷\ï{U¼=z\íZROøiÿ\0[\ì\å{^ö·UjÊ„\é\Òn\íp•N\É-<[\ì*\Ø<<ªÔ…(+\ÊrŒW‹||#Z\çFög°\Z_¶T\\ST“\ì~ôüø.ë’…\ãf\à\ãF:Q÷a\Åy.>|MH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04°û:\êÕ«\r%QC2\ä\Üoixõü\àD\ÄJb©b;¿8c\'ûÊüuþf\É\Í\ÇßºøE\Ñ\Õ\ÍWÞ\Ó=4\ßör|W\Ý~O‘¥Ž\Ù*\ã\ëa)¥\Ò:\Õ\ãÝ–ŽRJüº¶õDF3RŒ\Ý*°•:‹Œd¬ÿ\0F»Ö†H~…Ø»w‹†z#.\Øð”{¥ª$\Ì\Ô*\ÊSŒ¥.‹q’ðhµl\ßh[B•“©\n±\\ª\Æ\ïù£gõ vðr\êÕ§n¾7ûµ\Zú\Äô—µW\Ë¯}O\Ò t\Ó\Ã‹§Ju\'Eq”šKÕœ—\í+SH*4—lSœ½d\íò*ø\í¡Z¼³Ö©:’\ä\ä\ïoÁy$ÿ\0yý¡¹\'Kt¸:\Íjÿ\0Ã‹\áøŸ¡Ïœ›wm¶õm\ê\Û\æ\Ûgœui-[\Ñ%«o¹s/»©¸©j¸´\áOŠ¥{N_\á]\Ü|	CCrwVX¹ªµXh½yt}˜÷v¿#¯Ó‚ŠI+$’IpIpH\Å\ZQ„Tb”b’I%d’\à’>\ÈH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0š\íLC¼Xz–´kZ\æT\Ü%ô©z\ÚûŠ†Jô¡5\Ê\ëX÷\Æ\\bü\Í\ï\Ùùžy\áñ¦ÿ\0Ã›P«è¤¥þR\Æ0\Û\Êur\Â\×Ó”++ù*‘\Ö\Þ)ø•,v\æm\Z-\æ\ÃNI}ªn5¤^o‘\ß\0›\ê`+\ÇÞ£Z>4æ¾¨S\ÂUz*U_„$þˆý ,Á\î\Æ:¯¹…®û\åzÔ±g\Ù^\Ìq³\ÄU…%\Î0ý\ä½tŠùù\\	°·W„Ö•;\Ïû\Éõ¦üùyX›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N)«5td\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]¯‡¯Vœ\Ý;æ””e;Iß«¤%Ç°\Þ\"°ûFPnm¨T\é#­ûº”\ì“n\ÚT¾œ\0Ý«Ž¥¹:Ê¯wu\Ê\íã“­\á©\ãKla\åšÕ©Z9[y¢’RI§{ð\Õ\Z4÷u(\Â$²\ÆÍ«+\ÊK\nð×¿.­»Q\éWb9q©wšœý\Ý3B9jú¬¼»uº~[BŠ\ãV’\ê©k8û¯„¸ð}§Ÿý[yG¦¥ÕŒ&\ï(\Û,£+ß…\Ï±\â¡(,½h\Ò^\ïUt|-\×=x\èy½Œô},›JŽ²Y›•)JQ“»\Õuši÷kt\í]£F)7Rž±sII7(¤\Ý\â¯\Ö\àø´ñ0qrR—½ª\ê\é~·f„u-‹•IF£´\é\ä\âõ¨óG\áÖ£Ó†ˆ\Ì62Te‡S—D\ã8¥d\Ú\Íms=eg~<o­ÀÜ†Ð¢òÚ­\'ž\ê6œ^khòë¯‘ó§A¼ªµ\ï–\Êp¾nµø\èô5ª\ì—9)J¥\ß\î³\Ú)fTªt¶¯.¼{{Œ-‹[3÷c\Ù}š½\'\Ô	FÑ¯<lUUJ\ÒrÊ¤\ì´I¶“o\Æ/\Ðù\Æl\Ú5gJ¥Hf9\Ów’\Ë\'ìžñ¹\çŽÙª­HM¸¬’„´Š\ÏxK2J§Á®jý #µ©¸¹¬\î9”b\Ô_]¶Õ¡Ûªfcµ©7I&\ïV\ê\nÏ’“y¾u­y«\Z8}ÝŒ5Œ\ì\ÖL–Š\Ó$¤\Öoõš»\å\êz\Çw\é©Ržj™\á(É¼óJmF¢\Ö	\åZÔ“\Ñ\ë-µI^ê¢’pY\\Z—]I\ÇGÚ£/C\êžÙ£\'9ZJ\rK+\Ë×Žx¦ù7{~¦ª\Øm\ÂÓ¨§.“¤r•4ó\Ë+\ï\"Ý¤¬Õ’²YUª;EF*¤ò%N\ê\Ê\îP§Ñ©få¥»b€õŽÜ¢\à\ê.‘\Å:i\Ú-Û¤¶I?º\îµ$\ÈXl´¥N5\Ì\é]¨$­N\Ö\ê§lÍ¥wÌ™ì¯«\ç\Ë\ä@\0\0\0\0\0\0\0ÿ\Ù',8564,NULL,NULL,'india','TamilNadu');
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
