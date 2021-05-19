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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 14:31:08
