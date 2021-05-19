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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 14:31:08
