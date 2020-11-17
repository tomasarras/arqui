-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: g13
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `plan_vuelo`
--

DROP TABLE IF EXISTS `plan_vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_vuelo` (
  `aeronave` varchar(255) NOT NULL,
  `aeropuerto_llegada` varchar(255) NOT NULL,
  `aeropuerto_salida` varchar(255) NOT NULL,
  `codigo_reserva` int NOT NULL,
  `numero_vuelo` int NOT NULL,
  `tiempo_escalas` bigint DEFAULT NULL,
  `id_plan` int NOT NULL,
  PRIMARY KEY (`id_plan`),
  CONSTRAINT `FKkr0ilth2n5kjmgaw7oks3ew2i` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_vuelo`
--

LOCK TABLES `plan_vuelo` WRITE;
/*!40000 ALTER TABLE `plan_vuelo` DISABLE KEYS */;
INSERT INTO `plan_vuelo` VALUES ('Airbus A320','Micoud Airport','Sājūr Airport',275648,140887,NULL,975),('Airbus A320','Sājūr Airport','Micoud Airport',49578,307065,NULL,976),('Airbus A320','Yelets Airport','Ponta do Sol Airport',773232,628015,NULL,980),('Airbus A320','Ponta do Sol Airport','Yelets Airport',981861,312748,NULL,981),('Airbus A320','Changxuanling Airport','Micoud Airport',88650,782445,NULL,987),('Airbus A320','Micoud Airport','Changxuanling Airport',575049,519309,NULL,988),('Airbus A320','Chixi Airport','Yelets Airport',775617,696450,NULL,991),('Airbus A320','Yelets Airport','Chixi Airport',933412,744105,NULL,992),('Airbus A320','Manghit Airport','Erniusuokou Airport',882118,894463,NULL,999),('Airbus A320','Erniusuokou Airport','Manghit Airport',63311,78290,NULL,1000),('Airbus A320','Terara Airport','Changxuanling Airport',892689,318457,NULL,1015),('Airbus A320','Changxuanling Airport','Terara Airport',17225,910424,NULL,1016),('Airbus A320','Dagsar Airport','Chixi Airport',903312,193163,NULL,1019),('Airbus A320','Chixi Airport','Dagsar Airport',259062,479045,NULL,1020),('Airbus A320','Tolstoy-Yurt Airport','Kolobovo Airport',977661,11685,NULL,1040),('Airbus A320','Kolobovo Airport','Tolstoy-Yurt Airport',600867,590156,NULL,1041),('Airbus A320','Oenam Airport','Manghit Airport',624499,895952,NULL,1044),('Airbus A320','Manghit Airport','Oenam Airport',916917,657096,NULL,1045),('Airbus A320','Vale de Figueira Airport','Tía Juana Airport',587705,542007,NULL,1059),('Airbus A320','Tía Juana Airport','Vale de Figueira Airport',485827,784553,NULL,1060),('Airbus A320','Caluquembe Airport','Lushnjë Airport',610856,790158,NULL,1069),('Airbus A320','Lushnjë Airport','Caluquembe Airport',95247,475095,NULL,1070),('Airbus A320','Yuhuangding Airport','Jinlong Airport',601888,130061,NULL,1076),('Airbus A320','Jinlong Airport','Yuhuangding Airport',742316,294778,NULL,1077),('Airbus A320','Faraulep Airport','Terara Airport',211088,731592,NULL,1082),('Airbus A320','Terara Airport','Faraulep Airport',273253,307138,NULL,1083),('Airbus A320','Pervomayskoye Airport','Dagsar Airport',621641,156961,NULL,1087),('Airbus A320','Dagsar Airport','Pervomayskoye Airport',756854,850584,NULL,1088),('Airbus A320','Dongshi Airport','Pau Airport',233761,475243,NULL,1097),('Airbus A320','Pau Airport','Dongshi Airport',628732,385676,NULL,1098),('Airbus A320','La Caya Airport','Jatisari Airport',738225,219055,NULL,1128),('Airbus A320','Jatisari Airport','La Caya Airport',778118,527784,NULL,1129),('Airbus A320','Berëza Airport','Neyvo-Rudyanka Airport',436467,606700,NULL,1134),('Airbus A320','Neyvo-Rudyanka Airport','Berëza Airport',648183,161729,NULL,1135),('Airbus A320','Nizhnekamsk Airport','Roubaix Airport',845155,492721,NULL,1187),('Airbus A320','Roubaix Airport','Nizhnekamsk Airport',547045,235202,NULL,1188),('Airbus A320','Kuttu Airport','Kupchino Airport',172809,334451,NULL,1192),('Airbus A320','Kupchino Airport','Kuttu Airport',314653,362745,NULL,1193),('Airbus A320','Moscow Airport','Údlice Airport',4071,602029,NULL,1202),('Airbus A320','Údlice Airport','Moscow Airport',801682,977684,NULL,1203),('Airbus A320','Ad Dasmah Airport','Krotoszyn Airport',549569,215164,NULL,1224),('Airbus A320','Krotoszyn Airport','Ad Dasmah Airport',437866,134515,NULL,1225),('Airbus A320','Campos do Jordão Airport','Orvault Airport',295142,768902,NULL,1229),('Airbus A320','Orvault Airport','Campos do Jordão Airport',205292,450333,NULL,1230),('Airbus A320','Fuyang Airport','Tolstoy-Yurt Airport',988516,571204,NULL,1240),('Airbus A320','Tolstoy-Yurt Airport','Fuyang Airport',635223,896942,NULL,1241),('Airbus A320','Beidajie Airport','Oenam Airport',609010,777973,NULL,1250),('Airbus A320','Oenam Airport','Beidajie Airport',913033,630632,NULL,1251),('Airbus A320','Anzi Airport','Sidi Slimane Airport',46052,161106,NULL,1262),('Airbus A320','Sidi Slimane Airport','Anzi Airport',518773,874344,NULL,1263),('Airbus A320','Castleblayney Airport','Sinhyeon Airport',957359,979387,NULL,1270),('Airbus A320','Sinhyeon Airport','Castleblayney Airport',191520,633492,NULL,1271),('Airbus A320','Sigavé Airport','Stockholm Airport',340936,872196,NULL,1278),('Airbus A320','Stockholm Airport','Sigavé Airport',706593,177434,NULL,1279),('Airbus A320','Mionica Airport','Leku Airport',203793,60992,NULL,1284),('Airbus A320','Leku Airport','Mionica Airport',199208,368232,NULL,1285),('Airbus A320','Pedraza Airport','Vale de Figueira Airport',712941,337606,NULL,1293),('Airbus A320','Vale de Figueira Airport','Pedraza Airport',959079,581549,NULL,1294),('Airbus A320','Camabatela Airport','Orël Airport',306653,462026,NULL,1334),('Airbus A320','Orël Airport','Camabatela Airport',238589,378352,NULL,1335),('Airbus A320','Zhongying Airport','Macatuba Airport',920471,68076,NULL,1349),('Airbus A320','Macatuba Airport','Zhongying Airport',451159,330785,NULL,1350),('Airbus A320','Pampamarca Airport','Chiguata Airport',339885,273285,NULL,1352),('Airbus A320','Chiguata Airport','Pampamarca Airport',734411,838798,NULL,1353),('Airbus A320','Радовиш Airport','Caluquembe Airport',471535,255743,NULL,1361),('Airbus A320','Caluquembe Airport','Радовиш Airport',135299,410592,NULL,1362),('Airbus A320','Orita Eruwa Airport','Pawili Airport',977456,666177,NULL,1368),('Airbus A320','Pawili Airport','Orita Eruwa Airport',886121,73692,NULL,1369),('Airbus A320','Xiangjia Airport','Yuhuangding Airport',696728,101874,NULL,1395),('Airbus A320','Yuhuangding Airport','Xiangjia Airport',205517,86240,NULL,1396),('Airbus A320','Caldelas Airport','Halong Airport',630687,579863,NULL,1399),('Airbus A320','Halong Airport','Caldelas Airport',909165,955020,NULL,1400),('Airbus A320','Moscavide Airport','Faraulep Airport',49297,169393,NULL,1411),('Airbus A320','Faraulep Airport','Moscavide Airport',479348,801401,NULL,1412),('Airbus A320','Ponta do Sol Airport','Vertientes Airport',918473,555135,NULL,1423),('Airbus A320','Vertientes Airport','Ponta do Sol Airport',890821,916304,NULL,1424),('Airbus A320','Yelets Airport','Pervomayskoye Airport',226553,257255,NULL,1431),('Airbus A320','Pervomayskoye Airport','Yelets Airport',147001,235592,NULL,1432),('Airbus A320','Chixi Airport','Guarapari Airport',882504,385030,NULL,1439),('Airbus A320','Guarapari Airport','Chixi Airport',300075,504516,NULL,1440),('Airbus A320','Kolobovo Airport','Komsomolsk-on-Amur Airport',763678,179604,NULL,1444),('Airbus A320','Komsomolsk-on-Amur Airport','Kolobovo Airport',773352,668452,NULL,1445),('Airbus A320','Terara Airport','Dongshi Airport',605093,926709,NULL,1457),('Airbus A320','Dongshi Airport','Terara Airport',941802,957098,NULL,1458),('Airbus A320','Orvault Airport','Sinhyeon Airport',789858,955882,NULL,1477),('Airbus A320','Sinhyeon Airport','Orvault Airport',188745,208851,NULL,1478),('Airbus A320','Caluquembe Airport','Marseille Airport',345736,260202,NULL,1506),('Airbus A320','Marseille Airport','Caluquembe Airport',349512,791234,NULL,1507),('Airbus A320','Guarapari Airport','Kawerau Airport',13897,159255,NULL,1521),('Airbus A320','Kawerau Airport','Guarapari Airport',455842,989212,NULL,1522),('Airbus A320','Xikou Airport','Kasba Tadla Airport',447907,648102,NULL,1562),('Airbus A320','Kasba Tadla Airport','Xikou Airport',292252,129032,NULL,1563),('Airbus A320','Yanhe Airport','Postupice Airport',660971,975309,NULL,1568),('Airbus A320','Postupice Airport','Yanhe Airport',180484,90591,NULL,1569),('Airbus A320','Valka Airport','Golcowa Airport',755600,903363,NULL,1590),('Airbus A320','Golcowa Airport','Valka Airport',686072,912853,NULL,1591),('Airbus A320','Tall Salḩab Airport','Buje Airport',467086,662290,NULL,1599),('Airbus A320','Buje Airport','Tall Salḩab Airport',197607,874122,NULL,1600),('Airbus A320','Baranti Airport','Karajeun Airport',257624,465580,NULL,1607),('Airbus A320','Karajeun Airport','Baranti Airport',537268,537100,NULL,1608),('Airbus A320','Nizhnekamsk Airport','Sanguinheira Airport',527603,539035,NULL,1618),('Airbus A320','Sanguinheira Airport','Nizhnekamsk Airport',80247,166482,NULL,1619),('Airbus A320','Saint-Lô Airport','Thị Trấn Việt Lâm Airport',650974,28092,NULL,1627),('Airbus A320','Thị Trấn Việt Lâm Airport','Saint-Lô Airport',857590,281225,NULL,1628),('Airbus A320','Coronel Suárez Airport','Göteborg Airport',814084,216673,NULL,1632),('Airbus A320','Göteborg Airport','Coronel Suárez Airport',639379,664763,NULL,1633),('Airbus A320','Soldato-Aleksandrovskoye Airport','Diaopu Airport',1865,706993,NULL,1636),('Airbus A320','Diaopu Airport','Soldato-Aleksandrovskoye Airport',828309,658657,NULL,1637),('Airbus A320','Waalwijk Airport','La Caya Airport',383635,716468,NULL,1658),('Airbus A320','La Caya Airport','Waalwijk Airport',75312,349939,NULL,1659),('Airbus A320','Fuyang Airport','Berëza Airport',485301,446389,NULL,1661),('Airbus A320','Berëza Airport','Fuyang Airport',292237,710714,NULL,1662),('Airbus A320','Deder Airport','Huifa Airport',848864,757937,NULL,1711),('Airbus A320','Huifa Airport','Deder Airport',645837,281756,NULL,1712),('Airbus A320','Nuoxizhi Airport','Xikou Airport',567965,358728,NULL,1720),('Airbus A320','Xikou Airport','Nuoxizhi Airport',546337,298006,NULL,1721),('Airbus A320','San Agustin Airport','Yanhe Airport',62380,516772,NULL,1738),('Airbus A320','Yanhe Airport','San Agustin Airport',904017,928134,NULL,1739),('Airbus A320','Polel Diaoubé Airport','Laironja Airport',694455,389172,NULL,1744),('Airbus A320','Laironja Airport','Polel Diaoubé Airport',292101,905599,NULL,1745),('Airbus A320','Xiaoguwei Airport','Blagnac Airport',655348,401630,NULL,1752),('Airbus A320','Blagnac Airport','Xiaoguwei Airport',638886,6311,NULL,1753),('Airbus A320','Limoeiro de Anadia Airport','Whakatane Airport',334688,84408,NULL,1756),('Airbus A320','Whakatane Airport','Limoeiro de Anadia Airport',963861,796205,NULL,1757),('Airbus A320','Pampamarca Airport','Norabats’ Airport',638018,980540,NULL,1779),('Airbus A320','Norabats’ Airport','Pampamarca Airport',587723,362597,NULL,1780),('Airbus A320','Szczawnica Airport','Evansville Airport',916881,835301,NULL,1783),('Airbus A320','Evansville Airport','Szczawnica Airport',956691,571370,NULL,1784),('Airbus A320','Vinnytsya Airport','Arrah Airport',198513,127909,NULL,1810),('Airbus A320','Arrah Airport','Vinnytsya Airport',527109,852988,NULL,1811),('Airbus A320','Xiangjia Airport','Valka Airport',349235,799408,NULL,1824),('Airbus A320','Valka Airport','Xiangjia Airport',335123,450818,NULL,1825),('Airbus A320','Sājūr Airport','Sé Airport',747678,905497,NULL,1842),('Airbus A320','Sé Airport','Sājūr Airport',510840,970441,NULL,1843),('Airbus A320','Tía Juana Airport','Tall Salḩab Airport',363007,631454,NULL,1867),('Airbus A320','Tall Salḩab Airport','Tía Juana Airport',390733,164378,NULL,1868),('Airbus A320','Jinlong Airport','Charleston Airport',626488,139589,NULL,1871),('Airbus A320','Charleston Airport','Jinlong Airport',746370,490935,NULL,1872),('Airbus A320','Dagsar Airport','Bebandem Airport',231069,537098,NULL,1876),('Airbus A320','Bebandem Airport','Dagsar Airport',566821,821924,NULL,1877),('Airbus A320','Jatisari Airport','Baranti Airport',945813,206356,NULL,1883),('Airbus A320','Baranti Airport','Jatisari Airport',809038,486592,NULL,1884),('Airbus A320','Kupchino Airport','Shuanghe Airport',939852,942941,NULL,1891),('Airbus A320','Shuanghe Airport','Kupchino Airport',528243,565123,NULL,1892),('Airbus A320','Halong Airport','Amboanjo Airport',370769,38947,NULL,1943),('Airbus A320','Amboanjo Airport','Halong Airport',11746,905306,NULL,1944),('Airbus A320','Pervomayskoye Airport','Nizhnekamsk Airport',551476,581423,NULL,1954),('Airbus A320','Nizhnekamsk Airport','Pervomayskoye Airport',875197,708095,NULL,1955),('Airbus A320','Komsomolsk-on-Amur Airport','Kuttu Airport',621940,670663,NULL,1963),('Airbus A320','Kuttu Airport','Komsomolsk-on-Amur Airport',746434,973528,NULL,1964),('Airbus A320','Kasba Tadla Airport','Kopstal Airport',70678,191996,NULL,1978),('Airbus A320','Kopstal Airport','Kasba Tadla Airport',622393,611625,NULL,1979),('Airbus A320','Golcowa Airport','Saint-Lô Airport',84895,659924,NULL,1985),('Airbus A320','Saint-Lô Airport','Golcowa Airport',488794,232155,NULL,1986),('Airbus A320','Buje Airport','Moscow Airport',933961,905338,NULL,1988),('Airbus A320','Moscow Airport','Buje Airport',707263,537534,NULL,1989),('Airbus A320','Thị Trấn Việt Lâm Airport','Coronel Suárez Airport',77154,603379,NULL,1998),('Airbus A320','Coronel Suárez Airport','Thị Trấn Việt Lâm Airport',491062,677537,NULL,1999),('Airbus A320','Göteborg Airport','Soldato-Aleksandrovskoye Airport',944800,923876,NULL,2004),('Airbus A320','Soldato-Aleksandrovskoye Airport','Göteborg Airport',928643,928208,NULL,2005),('Airbus A320','Charleston Airport','Odienné Airport',167575,185348,NULL,2052),('Airbus A320','Odienné Airport','Charleston Airport',73099,923588,NULL,2053),('Airbus A320','Kopstal Airport','Inglewood Airport',419596,211483,NULL,2071),('Airbus A320','Inglewood Airport','Kopstal Airport',869287,598191,NULL,2072),('Airbus A320','Saint-Lô Airport','Hongjiang Airport',714692,550369,NULL,2074),('Airbus A320','Hongjiang Airport','Saint-Lô Airport',685638,197093,NULL,2075),('Airbus A320','Coronel Suárez Airport','La Soledad Airport',764966,25066,NULL,2083),('Airbus A320','La Soledad Airport','Coronel Suárez Airport',965391,125513,NULL,2084),('Airbus A320','Campos do Jordão Airport','Ad Dasmah Airport',759026,283488,NULL,2106),('Airbus A320','Ad Dasmah Airport','Campos do Jordão Airport',563832,287565,NULL,2107),('Airbus A320','Tarikolot Airport','Campos do Jordão Airport',816096,441874,NULL,2114),('Airbus A320','Campos do Jordão Airport','Tarikolot Airport',400747,792015,NULL,2115),('Airbus A320','Anzi Airport','Mitaka-shi Airport',761238,479570,NULL,2146),('Airbus A320','Mitaka-shi Airport','Anzi Airport',649448,5417,NULL,2147),('Airbus A320','Castleblayney Airport','Tarikolot Airport',299497,618303,NULL,2156),('Airbus A320','Tarikolot Airport','Castleblayney Airport',535221,539086,NULL,2157),('Airbus A320','Krasnyye Chetai Airport','Tianxin Airport',615609,411085,NULL,2170),('Airbus A320','Tianxin Airport','Krasnyye Chetai Airport',138689,616456,NULL,2171),('Airbus A320','Arzakan Airport','Waalwijk Airport',6390,601659,NULL,2191),('Airbus A320','Waalwijk Airport','Arzakan Airport',829293,444497,NULL,2192),('Airbus A320','Mertzig Airport','Fuyang Airport',531129,448728,NULL,2214),('Airbus A320','Fuyang Airport','Mertzig Airport',815839,865456,NULL,2215),('Airbus A320','Camabatela Airport','Kambove Airport',571272,918980,NULL,2230),('Airbus A320','Kambove Airport','Camabatela Airport',196544,637799,NULL,2231),('Airbus A320','Amiens Airport','Birzai Airport',58316,87310,NULL,2237),('Airbus A320','Birzai Airport','Amiens Airport',925874,425426,NULL,2238),('Airbus A320','Pampamarca Airport','Beidajie Airport',401102,573236,NULL,2250),('Airbus A320','Beidajie Airport','Pampamarca Airport',635880,201148,NULL,2251),('Airbus A320','Szczawnica Airport','Blagodarnyy Airport',429782,559510,NULL,2254),('Airbus A320','Blagodarnyy Airport','Szczawnica Airport',287290,171640,NULL,2255),('Airbus A320','Dibba Al-Hisn Airport','Vila Franca das Naves Airport',953593,995411,NULL,2258),('Airbus A320','Vila Franca das Naves Airport','Dibba Al-Hisn Airport',455794,217369,NULL,2259),('Airbus A320','Радовиш Airport','Anzi Airport',227540,587797,NULL,2262),('Airbus A320','Anzi Airport','Радовиш Airport',883478,470315,NULL,2263),('Airbus A320','Kurchaloy Airport','Bantul Airport',949014,331985,NULL,2280),('Airbus A320','Bantul Airport','Kurchaloy Airport',139025,348468,NULL,2281),('Airbus A320','Vinnytsya Airport','Bigaan Airport',693277,407419,NULL,2285),('Airbus A320','Bigaan Airport','Vinnytsya Airport',824794,224966,NULL,2286),('Airbus A320','Wangchuanchang Airport','Castleblayney Airport',378732,869378,NULL,2288),('Airbus A320','Castleblayney Airport','Wangchuanchang Airport',97147,519539,NULL,2289),('Airbus A320','Korçë Airport','Huangbu Airport',720864,711637,NULL,2294),('Airbus A320','Huangbu Airport','Korçë Airport',375299,798335,NULL,2295),('Airbus A320','Patalan Airport','Hamilton Airport',855158,211522,NULL,2303),('Airbus A320','Hamilton Airport','Patalan Airport',601674,586112,NULL,2304),('Airbus A320','Moscavide Airport','Sigavé Airport',745480,981499,NULL,2311),('Airbus A320','Sigavé Airport','Moscavide Airport',656442,259490,NULL,2312),('Airbus A320','Jinlong Airport','Krasnyye Chetai Airport',488791,710926,NULL,2340),('Airbus A320','Krasnyye Chetai Airport','Jinlong Airport',972133,477581,NULL,2341),('Airbus A320','Neyvo-Rudyanka Airport','Mionica Airport',756520,123092,NULL,2353),('Airbus A320','Mionica Airport','Neyvo-Rudyanka Airport',165636,554470,NULL,2354),('Airbus A320','Stockholm Airport','Zhaitou Airport',946544,646774,NULL,2380),('Airbus A320','Zhaitou Airport','Stockholm Airport',117679,319523,NULL,2381),('Airbus A320','Caluquembe Airport','Jincang Airport',993278,39286,NULL,2401),('Airbus A320','Jincang Airport','Caluquembe Airport',306388,139039,NULL,2402),('Airbus A320','Halong Airport','Deder Airport',679612,689748,NULL,2410),('Airbus A320','Deder Airport','Halong Airport',121316,394193,NULL,2411),('Airbus A320','Vertientes Airport','Pedraza Airport',81750,828610,NULL,2417),('Airbus A320','Pedraza Airport','Vertientes Airport',735197,228385,NULL,2418),('Airbus A320','Marseille Airport','Carpenter Airport',921759,733801,NULL,2433),('Airbus A320','Carpenter Airport','Marseille Airport',825279,709504,NULL,2434),('Airbus A320','Kasba Tadla Airport','Nuoxizhi Airport',423293,619786,NULL,2438),('Airbus A320','Nuoxizhi Airport','Kasba Tadla Airport',256555,175094,NULL,2439),('Airbus A320','Buje Airport','Arzakan Airport',60565,488137,NULL,2449),('Airbus A320','Arzakan Airport','Buje Airport',904439,974222,NULL,2450),('Airbus A320','La Caya Airport','Kandahār Airport',852559,875309,NULL,2468),('Airbus A320','Kandahār Airport','La Caya Airport',908341,882254,NULL,2469),('Airbus A320','Xikou Airport','Seixas do Douro Airport',393678,339010,NULL,2477),('Airbus A320','Seixas do Douro Airport','Xikou Airport',211266,135354,NULL,2478),('Airbus A320','Laironja Airport','Hulitu Airport',78106,724921,NULL,2485),('Airbus A320','Hulitu Airport','Laironja Airport',741415,941260,NULL,2486),('Airbus A320','Whakatane Airport','Alderetes Airport',826859,606365,NULL,2494),('Airbus A320','Alderetes Airport','Whakatane Airport',153161,340908,NULL,2495),('Airbus A320','Arrah Airport','São Domingos Airport',677019,960841,NULL,2503),('Airbus A320','São Domingos Airport','Arrah Airport',807457,832762,NULL,2504),('Airbus A320','Sé Airport','San Agustin Airport',204538,536371,NULL,2510),('Airbus A320','San Agustin Airport','Sé Airport',499678,365281,NULL,2511),('Airbus A320','Tall Salḩab Airport','Polel Diaoubé Airport',217169,712013,NULL,2514),('Airbus A320','Polel Diaoubé Airport','Tall Salḩab Airport',290816,81646,NULL,2515),('Airbus A320','Charleston Airport','Mertzig Airport',755303,10743,NULL,2517),('Airbus A320','Mertzig Airport','Charleston Airport',625891,383904,NULL,2518),('Airbus A320','Bebandem Airport','Xiaoguwei Airport',538437,907665,NULL,2520),('Airbus A320','Xiaoguwei Airport','Bebandem Airport',364638,584867,NULL,2521),('Airbus A320','Soldato-Aleksandrovskoye Airport','Limoeiro de Anadia Airport',833750,449252,NULL,2547),('Airbus A320','Limoeiro de Anadia Airport','Soldato-Aleksandrovskoye Airport',883971,498551,NULL,2548),('Airbus A320','Campos do Jordão Airport','Kajar Airport',35984,295706,NULL,2562),('Airbus A320','Kajar Airport','Campos do Jordão Airport',11388,659728,NULL,2563),('Airbus A320','Blagodarnyy Airport','Camabatela Airport',253027,990018,NULL,2589),('Airbus A320','Camabatela Airport','Blagodarnyy Airport',485219,772506,NULL,2590),('Airbus A320','Vila Franca das Naves Airport','Hongxing Airport',47509,61983,NULL,2593),('Airbus A320','Hongxing Airport','Vila Franca das Naves Airport',966754,845014,NULL,2594),('Airbus A320','Anzi Airport','Amiens Airport',715445,817149,NULL,2598),('Airbus A320','Amiens Airport','Anzi Airport',366227,731409,NULL,2599),('Airbus A320','Mionica Airport','Pathum Thani Airport',952471,940048,NULL,2619),('Airbus A320','Pathum Thani Airport','Mionica Airport',275137,817906,NULL,2620),('Airbus A320','Nuoxizhi Airport','San Diego Airport',51982,775714,NULL,2640),('Airbus A320','San Diego Airport','Nuoxizhi Airport',193525,481565,NULL,2641),('Airbus A320','Seixas do Douro Airport','Zhongying Airport',242807,928503,NULL,2650),('Airbus A320','Zhongying Airport','Seixas do Douro Airport',576129,566032,NULL,2651),('Airbus A320','São Domingos Airport','Pampamarca Airport',798407,482975,NULL,2656),('Airbus A320','Pampamarca Airport','São Domingos Airport',28708,633477,NULL,2657),('Airbus A320','Mertzig Airport','Szczawnica Airport',39673,118685,NULL,2666),('Airbus A320','Szczawnica Airport','Mertzig Airport',254829,318938,NULL,2667),('Airbus A320','Kajar Airport','Dibba Al-Hisn Airport',793143,916962,NULL,2675),('Airbus A320','Dibba Al-Hisn Airport','Kajar Airport',485111,944019,NULL,2676),('Airbus A320','Amiens Airport','Радовиш Airport',119329,648465,NULL,2685),('Airbus A320','Радовиш Airport','Amiens Airport',827434,49088,NULL,2686),('Airbus A320','San Diego Airport','Shiquanhe Airport',689043,186406,NULL,2690),('Airbus A320','Shiquanhe Airport','San Diego Airport',618450,333539,NULL,2691),('Airbus A320','Радовиш Airport','Orita Eruwa Airport',782065,416509,NULL,2705),('Airbus A320','Orita Eruwa Airport','Радовиш Airport',906296,222157,NULL,2706),('Airbus A320','Shiquanhe Airport','Rajal Norte Airport',867932,674028,NULL,2711),('Airbus A320','Rajal Norte Airport','Shiquanhe Airport',308141,576548,NULL,2712),('Airbus A320','Orita Eruwa Airport','Mionica Airport',745474,224686,NULL,2716),('Airbus A320','Mionica Airport','Orita Eruwa Airport',2775,881898,NULL,2717),('Airbus A320','Mionica Airport','Slunj Airport',993013,74342,NULL,2724),('Airbus A320','Slunj Airport','Mionica Airport',525571,135758,NULL,2725),('Airbus A320','Slunj Airport','Fengtai Airport',327365,894650,NULL,2728),('Airbus A320','Fengtai Airport','Slunj Airport',515905,933532,NULL,2729),('Airbus A320','Kurchaloy Airport','Kurchaloy Airport',361515,522099,NULL,2735),('Airbus A320','Kurchaloy Airport','Kurchaloy Airport',572079,222748,NULL,2736),('Airbus A320','Korçë Airport','Vinnytsya Airport',968812,528212,NULL,2743),('Airbus A320','Vinnytsya Airport','Korçë Airport',137700,93658,NULL,2744),('Airbus A320','Sintra Airport','Wangchuanchang Airport',828246,147346,NULL,2746),('Airbus A320','Wangchuanchang Airport','Sintra Airport',103022,869752,NULL,2747),('Airbus A320','Patalan Airport','Korçë Airport',897705,245900,NULL,2754),('Airbus A320','Korçë Airport','Patalan Airport',221752,826533,NULL,2755),('Airbus A320','Moscavide Airport','Sintra Airport',575144,295234,NULL,2762),('Airbus A320','Sintra Airport','Moscavide Airport',592966,83070,NULL,2763),('Airbus A320','Sājūr Airport','Xiangjia Airport',592259,527252,NULL,2770),('Airbus A320','Xiangjia Airport','Sājūr Airport',270070,754190,NULL,2771),('Airbus A320','Dagsar Airport','Caldelas Airport',198475,472457,NULL,2800),('Airbus A320','Caldelas Airport','Dagsar Airport',184319,92422,NULL,2801),('Airbus A320','Pau Airport','Patalan Airport',166266,319854,NULL,2805),('Airbus A320','Patalan Airport','Pau Airport',682287,641874,NULL,2806),('Airbus A320','Vale de Figueira Airport','Yatunpu Airport',419295,269180,NULL,2844),('Airbus A320','Yatunpu Airport','Vale de Figueira Airport',350560,480683,NULL,2845),('Airbus A320','Vertientes Airport','Moscavide Airport',436666,399596,NULL,2870),('Airbus A320','Moscavide Airport','Vertientes Airport',503005,511416,NULL,2871),('Airbus A320','Dongshi Airport','Gornyye Klyuchi Airport',848549,414687,NULL,2881),('Airbus A320','Gornyye Klyuchi Airport','Dongshi Airport',874039,345257,NULL,2882),('Airbus A320','Sinhyeon Airport','Sājūr Airport',661984,656378,NULL,2885),('Airbus A320','Sājūr Airport','Sinhyeon Airport',788160,244272,NULL,2886),('Airbus A320','Postupice Airport','Ponta do Sol Airport',273640,679965,NULL,2896),('Airbus A320','Ponta do Sol Airport','Postupice Airport',153241,437474,NULL,2897),('Airbus A320','Golcowa Airport','Micoud Airport',294552,863355,NULL,2900),('Airbus A320','Micoud Airport','Golcowa Airport',37965,57949,NULL,2901),('Airbus A320','Laironja Airport','Yelets Airport',101432,792866,NULL,2933),('Airbus A320','Yelets Airport','Laironja Airport',374479,111751,NULL,2934),('Airbus A320','Blagnac Airport','Erniusuokou Airport',921702,167901,NULL,2937),('Airbus A320','Erniusuokou Airport','Blagnac Airport',975784,181163,NULL,2938),('Airbus A320','Norabats’ Airport','Changxuanling Airport',39987,35579,NULL,2945),('Airbus A320','Changxuanling Airport','Norabats’ Airport',536665,61929,NULL,2946),('Airbus A320','Sé Airport','Chixi Airport',971375,572951,NULL,2957),('Airbus A320','Chixi Airport','Sé Airport',417955,288037,NULL,2958),('Airbus A320','Baranti Airport','Kolobovo Airport',950420,494672,NULL,2971),('Airbus A320','Kolobovo Airport','Baranti Airport',442434,371917,NULL,2972),('Airbus A320','Saint-Lô Airport','Manghit Airport',15254,604608,NULL,2992),('Airbus A320','Manghit Airport','Saint-Lô Airport',464588,152334,NULL,2993),('Airbus A320','Soldato-Aleksandrovskoye Airport','Tía Juana Airport',347278,542908,NULL,3003),('Airbus A320','Tía Juana Airport','Soldato-Aleksandrovskoye Airport',26553,839564,NULL,3004),('Airbus A320','Hongjiang Airport','Lushnjë Airport',395107,112336,NULL,3011),('Airbus A320','Lushnjë Airport','Hongjiang Airport',622002,689011,NULL,3012),('Airbus A320','La Soledad Airport','Jinlong Airport',250581,757042,NULL,3015),('Airbus A320','Jinlong Airport','La Soledad Airport',661356,456001,NULL,3016),('Airbus A320','Kambove Airport','Terara Airport',745907,627742,NULL,3040),('Airbus A320','Terara Airport','Kambove Airport',229307,542425,NULL,3041),('Airbus A320','Castleblayney Airport','Dagsar Airport',675675,43715,NULL,3062),('Airbus A320','Dagsar Airport','Castleblayney Airport',290786,433896,NULL,3063),('Airbus A320','Hamilton Airport','Pau Airport',626236,882527,NULL,3070),('Airbus A320','Pau Airport','Hamilton Airport',333353,315510,NULL,3071),('Airbus A320','Krasnyye Chetai Airport','Jatisari Airport',720984,376468,NULL,3075),('Airbus A320','Jatisari Airport','Krasnyye Chetai Airport',303161,281636,NULL,3076),('Airbus A320','Jincang Airport','Neyvo-Rudyanka Airport',68095,675096,NULL,3084),('Airbus A320','Neyvo-Rudyanka Airport','Jincang Airport',203812,966923,NULL,3085),('Airbus A320','Deder Airport','Roubaix Airport',897918,530194,NULL,3088),('Airbus A320','Roubaix Airport','Deder Airport',228486,510902,NULL,3089),('Airbus A320','Kandahār Airport','Kupchino Airport',682682,344313,NULL,3099),('Airbus A320','Kupchino Airport','Kandahār Airport',456234,692550,NULL,3100),('Airbus A320','Mertzig Airport','Údlice Airport',334583,592014,NULL,3117),('Airbus A320','Údlice Airport','Mertzig Airport',196212,592220,NULL,3118),('Airbus A320','San Diego Airport','Krotoszyn Airport',516890,45356,NULL,3138),('Airbus A320','Krotoszyn Airport','San Diego Airport',564683,887224,NULL,3139),('Airbus A320','Dibba Al-Hisn Airport','Orvault Airport',537909,246825,NULL,3145),('Airbus A320','Orvault Airport','Dibba Al-Hisn Airport',972481,425128,NULL,3146),('Airbus A320','Радовиш Airport','Tolstoy-Yurt Airport',80775,370825,NULL,3150),('Airbus A320','Tolstoy-Yurt Airport','Радовиш Airport',363700,865865,NULL,3151),('Airbus A320','Mionica Airport','Oenam Airport',243883,89028,NULL,3164),('Airbus A320','Oenam Airport','Mionica Airport',890373,422291,NULL,3165),('Airbus A320','Slunj Airport','Sidi Slimane Airport',851393,114358,NULL,3168),('Airbus A320','Sidi Slimane Airport','Slunj Airport',240792,489020,NULL,3169),('Airbus A320','Ponta do Sol Airport','Sinhyeon Airport',406116,719625,NULL,3203),('Airbus A320','Sinhyeon Airport','Ponta do Sol Airport',203402,54138,NULL,3204),('Airbus A320','Yelets Airport','Stockholm Airport',853814,335064,NULL,3210),('Airbus A320','Stockholm Airport','Yelets Airport',103801,760738,NULL,3211),('Airbus A320','Chixi Airport','Leku Airport',809334,52443,NULL,3217),('Airbus A320','Leku Airport','Chixi Airport',440290,640577,NULL,3218),('Airbus A320','Manghit Airport','Vale de Figueira Airport',904818,79559,NULL,3224),('Airbus A320','Vale de Figueira Airport','Manghit Airport',20027,162278,NULL,3225),('Airbus A320','Jatisari Airport','Orël Airport',998548,764460,NULL,3246),('Airbus A320','Orël Airport','Jatisari Airport',793611,713899,NULL,3247),('Airbus A320','Neyvo-Rudyanka Airport','Macatuba Airport',37998,584905,NULL,3251),('Airbus A320','Macatuba Airport','Neyvo-Rudyanka Airport',179810,713174,NULL,3252),('Airbus A320','Roubaix Airport','Chiguata Airport',270241,616149,NULL,3256),('Airbus A320','Chiguata Airport','Roubaix Airport',310932,656646,NULL,3257),('Airbus A320','Oenam Airport','Caluquembe Airport',740449,893130,NULL,3273),('Airbus A320','Caluquembe Airport','Oenam Airport',164490,683100,NULL,3274),('Airbus A320','Sidi Slimane Airport','Pawili Airport',970869,570167,NULL,3279),('Airbus A320','Pawili Airport','Sidi Slimane Airport',735314,748369,NULL,3280),('Airbus A320','Vale de Figueira Airport','Yuhuangding Airport',41609,296891,NULL,3290),('Airbus A320','Yuhuangding Airport','Vale de Figueira Airport',395538,907546,NULL,3291),('Airbus A320','Dongshi Airport','Halong Airport',322393,121294,NULL,3331),('Airbus A320','Halong Airport','Dongshi Airport',638224,391361,NULL,3332),('Airbus A320','Marseille Airport','Faraulep Airport',432257,799224,NULL,3336),('Airbus A320','Faraulep Airport','Marseille Airport',389835,364267,NULL,3337),('Airbus A320','Thị Trấn Việt Lâm Airport','Vertientes Airport',821734,753895,NULL,3366),('Airbus A320','Vertientes Airport','Thị Trấn Việt Lâm Airport',742192,624038,NULL,3367),('Airbus A320','Diaopu Airport','Pervomayskoye Airport',5965,865493,NULL,3373),('Airbus A320','Pervomayskoye Airport','Diaopu Airport',883893,544877,NULL,3374),('Airbus A320','Arrah Airport','Guarapari Airport',276676,899035,NULL,3405),('Airbus A320','Guarapari Airport','Arrah Airport',137361,965350,NULL,3406),('Airbus A320','Amboanjo Airport','Komsomolsk-on-Amur Airport',630955,511205,NULL,3428),('Airbus A320','Komsomolsk-on-Amur Airport','Amboanjo Airport',700169,328633,NULL,3429),('Airbus A320','Kopstal Airport','Dongshi Airport',800015,316559,NULL,3438),('Airbus A320','Dongshi Airport','Kopstal Airport',252394,282505,NULL,3439),('Airbus A320','Moscow Airport','Sinhyeon Airport',518456,118570,NULL,3446),('Airbus A320','Sinhyeon Airport','Moscow Airport',774634,258432,NULL,3447),('Airbus A320','Coronel Suárez Airport','Marseille Airport',662042,904955,NULL,3451),('Airbus A320','Marseille Airport','Coronel Suárez Airport',45769,189786,NULL,3452),('Airbus A320','Odienné Airport','Kawerau Airport',618806,349795,NULL,3460),('Airbus A320','Kawerau Airport','Odienné Airport',112564,172656,NULL,3461),('Airbus A320','Inglewood Airport','Kasba Tadla Airport',623393,322660,NULL,3464),('Airbus A320','Kasba Tadla Airport','Inglewood Airport',978580,990528,NULL,3465),('Airbus A320','Hongjiang Airport','Postupice Airport',450457,455562,NULL,3468),('Airbus A320','Postupice Airport','Hongjiang Airport',334112,186747,NULL,3469),('Airbus A320','Ad Dasmah Airport','Golcowa Airport',931592,223020,NULL,3472),('Airbus A320','Golcowa Airport','Ad Dasmah Airport',493656,223338,NULL,3473),('Airbus A320','Tianxin Airport','Buje Airport',172499,173861,NULL,3487),('Airbus A320','Buje Airport','Tianxin Airport',714010,293749,NULL,3488),('Airbus A320','Waalwijk Airport','Karajeun Airport',976570,186361,NULL,3490),('Airbus A320','Karajeun Airport','Waalwijk Airport',964674,618184,NULL,3491),('Airbus A320','Fuyang Airport','Sanguinheira Airport',850691,433017,NULL,3495),('Airbus A320','Sanguinheira Airport','Fuyang Airport',996075,368377,NULL,3496),('Airbus A320','Bigaan Airport','Thị Trấn Việt Lâm Airport',834316,604277,NULL,3518),('Airbus A320','Thị Trấn Việt Lâm Airport','Bigaan Airport',63995,568968,NULL,3519),('Airbus A320','Castleblayney Airport','Göteborg Airport',339019,614218,NULL,3523),('Airbus A320','Göteborg Airport','Castleblayney Airport',332132,624664,NULL,3524),('Airbus A320','Arzakan Airport','Diaopu Airport',225108,724774,NULL,3548),('Airbus A320','Diaopu Airport','Arzakan Airport',593616,6645,NULL,3549);
/*!40000 ALTER TABLE `plan_vuelo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-16 20:35:57