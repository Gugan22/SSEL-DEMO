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
INSERT INTO `userdetail` VALUES (1,'SSEL INDIA','No3,coral castle appartment','peelamedu',628652,1452452,'GST546455564','ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	(!\'!1!%)+...383,7(-.+\n\n\n\r,! %7.-5+-7-5+671-+/73-+5---+-1-0---/-7-8++---5--+----ÿÀ\0\0\Ð\0ò\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0A\0\0\0\0\0\0!1A\"Qaq‘2R¡±BbrÁ\Ñ#3’\ÂCSs‚²\Òð$4ƒ¢ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0+\0\0\0\0\0\0\0\0!1AQq\"#a‘±2¡Á$ÿ\Ú\0\0\0?\0\î \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Àlƒ\ÊXˆ.2ŠñiŽ&›\á8?ó#ôùN\ÙðöHd\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\r\Ù’;imš4=ùu¹F:\Éù;{zut\è>\Ô\ê}TRª\äÛ»m·Å½o\âU\åq(£\á·\Î|öZcpÚ«\×9GŽ\ë7{*\ËJj0]¯­/\Ñõñµg\ïÔœ¼[·¢\Ðø\Âa§QÚœe\'\Ý\Ë\Åð\'0›¥ZZ\ÎP‡w¼ÿ\0B¯þ¬‰\ï?¥„\Æ6?ˆý Wb>²®\Ä[©\î…>u*?«ò>\åºTyTª¿•þD\ÏÈž\Ñùy\Ï±\çúUhV”=\ÙJ>\r¢W¼U\á\ï58öKª6±§5\îTRî’³õD./R“µH¸ö>)ø5¡\ãUX\Üù\Ç\èß—)ý®û3kS®¬´’\ã\ÇËµ4£U\ÆJQm5ªh¾\ì|z­IOƒ\á%\Ø\Ñs\Ãóý‚¿\åÚ·/\Òø©\è\Þ.d´h€\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\00Rw³o¹·B“\ê+©\É?yóŠk—i1½»[¡¥’.\Õ\'t»£ö¥ùù\\C*iùtý\×3*ùµýŸh³l-Ø•DªV¼a\Ê$ü{\éº;	J\Õ\ê­8\Â/Ÿ\Þ‘rG–U\î~\çg\ÌLÛ·÷—–\r\nq\Ë\Æ1\ìJÇ©\\\ÄDF¥™™\ç/‰\ÔQWm%\ÚÝ—©\áKhQ“\Ë\Z´\äû¢\ÙJ\Þ]¥*µ¥¾ŽqK•Ö¾\ÝnE\'Ì§½\ÅvW¶šuˆZZá›¨\ÝT\é2\êgž\"„g¤\âù2#uvŒª\Òq›¼ Ò¿lZÑ¿™1Z´a)4’\â\Ùgn\åm\Å}¥]]º­×·¼(;_\ÐÖ”8­\Z}Ì˜\ÜÊ5Xò´_ž¨†\Ûþš´¦½\Ý|?>$þ\æ\Ðj©ñ5\á?7ò9ü:bs~_N…\ÆL\Ìbü}y#÷ƒm\Ë´\"õtªR¦\êC\ÂSY\×}’ñ±p\Ã×Œ\ãÁ©FI4\×Ÿ3•\ï\Æ1T\ÆÔ·(\Óó\ÛùÉ¯\"c\Ù\î\Ú\Ë/\Ùfú²»§\Ý.2ŸS¦Qº\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0†d\Þ,_E†«5\Ç+K\Åè¾¦5U¶™™eE3UQLwsý½\éñú©\å\áülû\ÝýûExÁû«­?Â¹y½=H¤_·–„ªsœŸò\ÇEù²ƒ^þµ{Ë¦Ë®1±ô§\ÚHE%d¬‘ôÐ¹p\ÃV\Ð\Þ\n®œ³OáŽ¾¯‚0®\å4FµNŒ\è·Us¥1ª£¼8)R¯;®¬\ä\å\Û}Zñ»di9´·šUVEJš\ßY\ß\èˆ+œ®T[õ&mÎ°\éqýM‘#I„\î\ÃÚ´ðô\æ\Úr©&­Á%\Ã3ño\äim§R»¼Þœ¢´Šý|Y ‰—»õªÙµ’²\â\×tS*k¿z˜µGOþ°ª‹6ª›µuúÿ\0M‚jŠó|¢»Y\Ðð˜xÓ„a	Xò\Ùø\nta–Å¾-ö¶}R\ÆFU\'N.\î\n9­Á9^\Ññ²¿š/0p£g¬©²ò¦õ\\ºB‰\íc\äš\ÄÁugÕŸtùK\Íi\ãb£B«„£8»J-I>ô\îŽÇ·°\n¾\Z­\'ö¢\í\Ý%¬_ªGÿ\0Ÿ©`\Òv½‘U\èSª¸J)ø>^M4n\ïf¸\Ì\Ô*Rbw^Wú§\ê\\HH\0\0\0\0\0\0\0\0\0\0\0\0\0\0Vwþ­°Ñ\ÅV+\ÑJ_‘f*^\Ñ?ƒGüWþ‰\Zùs¥š›x1®E\ê5ô¹\Ö6%˜j1\ì§O\×*¹É¤ô~\ì8?\á\Ãð\Ç\èŠþR´\ãSð\Ñ\ïS\æ­U¹I¤’m·Á#\è§\ï^.¥j«	E9Z\Îv\æù&ù%\ÇÐ²¿wÒ£^³\áMbÏ«^Þ‘\Þ~-»¼³ª\Ü)7\n|.´”»\ßb!ð¸Z•©\ÂSu]zð-\Û\'t¡J»\Ï/‡\ì/ˆ²R¥«E$—$¬Š\ØÁ»~wÞ>‹9Îµb6Y§_ª†\Ý\\D½\ìñw~ˆ“\Â\îtWñ*\É÷E(¯WvX1[B/\âU¥\Å8\Ç\ê\È\ÚûÛöð—\àN_DmQÃ¬S\Û_v¥|Bý]ôön\à¶=\nZÂœoñ=e\ê\Íâ™öƒIiJ•I¾\ÙZü\ÙZÚ›ËŠÄ¼®N1ztt\ÓW¿-:\Òðù”\ÑM1¥1£Jªªªu™\Õn\Þ]\î…$\éPjux9-c÷K¸’\ÝM›*8u\Ò]Õ›u*7«\Í.M÷$¾d\èî£ƒ|B\ë-aMý—\ÊR\ï\î.¦H)·h\ä\ÅW‚\àªÔ·ƒ•\×É£µœo{\ßýþ#ñ¯ôF\äÀšögZØªø©7ü³ûŽ”r\Ïgù\ßúªý`u2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0­oý+\áT¾\Z~Nñþ¢\Êhm\Ü\'K‡«MqqvñZ¯š<¯Óº\ÝP÷Æ¹\éÝ¦¯\ä\ÇX\ØŽ“F]´\á¬þiœš,¾\î;5)\Ñ|`ó/\Ã+þiú•<>½·4ž\ë\î/ku˜ª;J\Öiapt\è)\ÏK\É\Êsœ¹ø·Á#j½h\ÂœÚŒbœ›|Z¶\Î;½\Û\ÙS7·:}Xðsû\Õ;{—\"\êi‰e\Íî˜\í¹\í”†\Z=,¾9iOËœ¾K¼¥\í\r\æ\ÆW¾z\ÒQfHÿ\0ó«ódF”§%FR”’J\í¾\ä^6\'³Ê“JX™ºk\à…œüž‹\Ê\æLTµ\Ûó\ç\æÍ¬¥WjPœ\ß\ÝMü\Ñ\Öð©‚¥l´!&¾\Ôú\ï\ÖD\Ä ’²I.Å¢	sM—¸¸™\Ù\Õq¥\ÏzÊ´^oÈº\ì]\Ü\Ãáµ„o>s–²ò\å\"`\0\0\r\ÛXž“^§)Uª×†f—\É#®oN\ÒX|%ZŸk.X÷\Î]Xü\ÝüŽ&˜eôo‰«>Q¥—\ÎsOú–S}˜\à²\á§Uÿ\0i7o\Ã¯\×1r\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0a™\0r\Í\é\Ù\Ý&I+B]xøIê¼ýQ¹¸t\äñWM¥IË¾öIzýfõ\ì\Ú(¼¿Å‡Z·¶>hösO¯ˆmY¥IYñZ\Î\éú3³&<O7Aqs­z\Ç)hûU\ÛmdÁÁñJ¥Kv}ˆ¾\æ\Ó~H \à0•+T*qrœ’ú¶ù%Å³gz±Ž¶;Qÿ\0{8®\è\Óy#þ›ù\Ùn\ÃP¢ñs]z—P¿*iñ_‰«øX¶s\Éý\ÖÝšX8iiVk¯Q­{#\ÜN€\0\0\0\0\0R÷\ï{U¼=z\íZROøiÿ\0[\ì\å{^ö·UjÊ„\é\Òn\íp•N\É-<[\ì*\Ø<<ªÔ…(+\ÊrŒW‹||#Z\çFög°\Z_¶T\\ST“\ì~ôüø.ë’…\ãf\à\ãF:Q÷a\Åy.>|MH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04°û:\êÕ«\r%QC2\ä\Üoixõü\àD\ÄJb©b;¿8c\'ûÊüuþf\É\Í\ÇßºøE\Ñ\Õ\ÍWÞ\Ó=4\ßör|W\Ý~O‘¥Ž\Ù*\ã\ëa)¥\Ò:\Õ\ãÝ–ŽRJüº¶õDF3RŒ\Ý*°•:‹Œd¬ÿ\0F»Ö†H~…Ø»w‹†z#.\Øð”{¥ª$\Ì\Ô*\ÊSŒ¥.‹q’ðhµl\ßh[B•“©\n±\\ª\Æ\ïù£gõ vðr\êÕ§n¾7ûµ\Zú\Äô—µW\Ë¯}O\Ò t\Ó\Ã‹§Ju\'Eq”šKÕœ—\í+SH*4—lSœ½d\íò*ø\í¡Z¼³Ö©:’\ä\ä\ïoÁy$ÿ\0yý¡¹\'Kt¸:\Íjÿ\0Ã‹\áøŸ¡Ïœ›wm¶õm\ê\Û\æ\Ûgœui-[\Ñ%«o¹s/»©¸©j¸´\áOŠ¥{N_\á]\Ü|	CCrwVX¹ªµXh½yt}˜÷v¿#¯Ó‚ŠI+$’IpIpH\Å\ZQ„Tb”b’I%d’\à’>\ÈH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0š\íLC¼Xz–´kZ\æT\Ü%ô©z\ÚûŠ†Jô¡5\Ê\ëX÷\Æ\\bü\Í\ï\Ùùžy\áñ¦ÿ\0Ã›P«è¤¥þR\Æ0\Û\Êur\Â\×Ó”++ù*‘\Ö\Þ)ø•,v\æm\Z-\æ\ÃNI}ªn5¤^o‘\ß\0›\ê`+\ÇÞ£Z>4æ¾¨S\ÂUz*U_„$þˆý ,Á\î\Æ:¯¹…®û\åzÔ±g\Ù^\Ìq³\ÄU…%\Î0ý\ä½tŠùù\\	°·W„Ö•;\Ïû\Éõ¦üùyX›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0N)«5td\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0]¯‡¯Vœ\Ý;æ””e;Iß«¤%Ç°\Þ\"°ûFPnm¨T\é#­ûº”\ì“n\ÚT¾œ\0Ý«Ž¥¹:Ê¯wu\Ê\íã“­\á©\ãKla\åšÕ©Z9[y¢’RI§{ð\Õ\Z4÷u(\Â$²\ÆÍ«+\ÊK\nð×¿.­»Q\éWb9q©wšœý\Ý3B9jú¬¼»uº~[BŠ\ãV’\ê©k8û¯„¸ð}§Ÿý[yG¦¥ÕŒ&\ï(\Û,£+ß…\Ï±\â¡(,½h\Ò^\ïUt|-\×=x\èy½Œô},›JŽ²Y›•)JQ“»\Õuši÷kt\í]£F)7Rž±sII7(¤\Ý\â¯\Ö\àø´ñ0qrR—½ª\ê\é~·f„u-‹•IF£´\é\ä\âõ¨óG\áÖ£Ó†ˆ\Ì62Te‡S—D\ã8¥d\Ú\Íms=eg~<o­ÀÜ†Ð¢òÚ­\'ž\ê6œ^khòë¯‘ó§A¼ªµ\ï–\Êp¾nµø\èô5ª\ì—9)J¥\ß\î³\Ú)fTªt¶¯.¼{{Œ-‹[3÷c\Ù}š½\'\Ô	FÑ¯<lUUJ\ÒrÊ¤\ì´I¶“o\Æ/\Ðù\Æl\Ú5gJ¥Hf9\Ów’\Ë\'ìžñ¹\çŽÙª­HM¸¬’„´Š\ÏxK2J§Á®jý #µ©¸¹¬\î9”b\Ô_]¶Õ¡Ûªfcµ©7I&\ïV\ê\nÏ’“y¾u­y«\Z8}ÝŒ5Œ\ì\ÖL–Š\Ó$¤\Öoõš»\å\êz\Çw\é©Ržj™\á(É¼óJmF¢\Ö	\åZÔ“\Ñ\ë-µI^ê¢’pY\\Z—]I\ÇGÚ£/C\êžÙ£\'9ZJ\rK+\Ë×Žx¦ù7{~¦ª\Øm\ÂÓ¨§.“¤r•4ó\Ë+\ï\"Ý¤¬Õ’²YUª;EF*¤ò%N\ê\Ê\îP§Ñ©få¥»b€õŽÜ¢\à\ê.‘\Å:i\Ú-Û¤¶I?º\îµ$\ÈXl´¥N5\Ì\é]¨$­N\Ö\ê§lÍ¥wÌ™ì¯«\ç\Ë\ä@\0\0\0\0\0\0\0ÿ\Ù',8564,NULL,NULL,'india','TamilNadu');
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
