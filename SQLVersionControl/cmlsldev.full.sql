-- MySQL dump 10.13  Distrib 5.5.25a, for Win32 (x86)
--
-- Host: localhost    Database: cmlsl
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `_ext_subcatlookup`
--

DROP TABLE IF EXISTS `_ext_subcatlookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_ext_subcatlookup` (
  `sub_category` varchar(50) NOT NULL,
  `specimendef_table` varchar(255) NOT NULL,
  `sampledef_table` varchar(255) NOT NULL,
  PRIMARY KEY (`sub_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_ext_subcatlookup`
--

LOCK TABLES `_ext_subcatlookup` WRITE;
/*!40000 ALTER TABLE `_ext_subcatlookup` DISABLE KEYS */;
INSERT INTO `_ext_subcatlookup` VALUES ('BLOOD','specimendef_bloods','sampledef_bloods'),('CSF','specimendef_csfs','sampledef_csfs'),('URINE','specimendef_urines','sampledef_urines');
/*!40000 ALTER TABLE `_ext_subcatlookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_sys_autoids`
--

DROP TABLE IF EXISTS `_sys_autoids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_autoids` (
  `tb_inau` varchar(255) NOT NULL,
  `counter` int(11) unsigned NOT NULL DEFAULT '1',
  `lock` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tb_inau`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_sys_autoids`
--

LOCK TABLES `_sys_autoids` WRITE;
/*!40000 ALTER TABLE `_sys_autoids` DISABLE KEYS */;
INSERT INTO `_sys_autoids` VALUES ('messages_is',1001,0),('users_is',1002,0),('userroles_is',1002,0),('params_is',517,0),('menudefs_is',520,0),('recordlocks',1,0),('roles_is',1008,0),('countrys_is',271,0),('weekdays_is',11,0),('daytimes_is',96,0),('recurrences_is',22,0),('branches_is',2,0),('regions_is',623,0),('departments_is',507,0),('enquirydefs_is',501,0),('pdfs_is',1,0),('csvs_is',1,0),('fixedselections_is',8,0),('tableresetconfigs_is',1,0),('tableresetruns_is',1,0),('sysconfigs_is',1,0),('customers_is',2122,0),('batchinvoicedetails_is',1001,0),('batchinvoices_is',1001,0),('products_is',507,0),('inventorys_is',505,0),('inventupdtypes_is',1001,0),('orders_is',1006,0),('orderdetails_is',1010,0),('reportdefs_is',1001,0),('inventchkouts_is',1001,0),('deliverynotes_is',1001,0),('tills_is',1003,0),('tilltransactions_is',1003,0),('payments_is',1003,0),('pdftemplates_is',1001,0),('specimendef_bloods',1001,0),('specimendef_urines',1001,0),('specimendef_csfs',1001,0),('sampledef_bloods',1001,0),('sampledef_urines',1001,0),('sampledef_csfs',1001,0);
/*!40000 ALTER TABLE `_sys_autoids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_sys_orderstatus`
--

DROP TABLE IF EXISTS `_sys_orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_orderstatus` (
  `id` int(2) NOT NULL,
  `order_status_id` varchar(20) NOT NULL,
  `progession_id` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_sys_orderstatus`
--

LOCK TABLES `_sys_orderstatus` WRITE;
/*!40000 ALTER TABLE `_sys_orderstatus` DISABLE KEYS */;
INSERT INTO `_sys_orderstatus` VALUES (1,'NEW',1),(2,'QUOTATION',2),(3,'ORDER.CONFIRMED',3),(4,'JOB.COMPLETED',4),(5,'INVOICE.ISSUED',5),(6,'ORDER.CANCELLED',6),(7,'INVOICE.PART.PAID',7),(8,'INVOICE.FULL.PAID',8),(9,'ZERO.CHARGE',9);
/*!40000 ALTER TABLE `_sys_orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_sys_pagesizes`
--

DROP TABLE IF EXISTS `_sys_pagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_sys_pagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `format_id` varchar(50) NOT NULL,
  `dip_width` float(10,3) NOT NULL,
  `dip_height` float(10,3) NOT NULL,
  `inch_width` float(10,3) NOT NULL,
  `inch_height` float(10,3) NOT NULL,
  `mm_width` float(10,3) NOT NULL,
  `mm_height` float(10,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_sys_pagesizes`
--

LOCK TABLES `_sys_pagesizes` WRITE;
/*!40000 ALTER TABLE `_sys_pagesizes` DISABLE KEYS */;
INSERT INTO `_sys_pagesizes` VALUES (1,'A0',2383.937,3370.394,33.110,46.811,841.000,1189.000),(2,'A1',1683.780,2383.937,23.386,33.110,594.000,841.000),(3,'A2',1190.551,1683.780,16.535,23.386,420.000,594.000),(4,'A3',841.890,1190.551,11.693,16.535,297.000,420.000),(5,'A4',595.276,841.890,8.268,11.693,210.000,297.000),(6,'A5',419.528,595.276,5.827,8.268,148.000,210.000),(7,'A6',297.638,419.528,4.134,5.827,105.000,148.000),(8,'A7',209.764,297.638,2.913,4.134,74.000,105.000),(9,'A8',147.402,209.764,2.047,2.913,52.000,74.000),(10,'A9',104.882,147.402,1.457,2.047,37.000,52.000),(11,'A10',73.701,104.882,1.024,1.457,26.000,37.000),(12,'A11',51.024,73.701,0.709,1.024,18.000,26.000),(13,'A12',36.850,51.024,0.512,0.709,13.000,18.000),(14,'B0',2834.646,4008.189,39.370,55.669,1000.000,1414.000),(15,'B1',2004.094,2834.646,27.835,39.370,707.000,1000.000),(16,'B2',1417.323,2004.094,19.685,27.835,500.000,707.000),(17,'B3',1000.630,1417.323,13.898,19.685,353.000,500.000),(18,'B4',708.661,1000.630,9.843,13.898,250.000,353.000),(19,'B5',498.898,708.661,6.929,9.843,176.000,250.000),(20,'B6',354.331,498.898,4.921,6.929,125.000,176.000),(21,'B7',249.449,354.331,3.465,4.921,88.000,125.000),(22,'B8',175.748,249.449,2.441,3.465,62.000,88.000),(23,'B9',124.724,175.748,1.732,2.441,44.000,62.000),(24,'B10',87.874,124.724,1.220,1.732,31.000,44.000),(25,'B11',62.362,87.874,0.866,1.220,22.000,31.000),(26,'B12',42.520,62.362,0.591,0.866,15.000,22.000),(27,'C0',2599.370,3676.535,36.102,51.063,917.000,1297.000),(28,'C1',1836.850,2599.370,25.512,36.102,648.000,917.000),(29,'C2',1298.268,1836.850,18.032,25.512,458.000,648.000),(30,'C3',918.425,1298.268,12.756,18.032,324.000,458.000),(31,'C4',649.134,918.425,9.016,12.756,229.000,324.000),(32,'C5',459.213,649.134,6.378,9.016,162.000,229.000),(33,'C6',323.150,459.213,4.488,6.378,114.000,162.000),(34,'C7',229.606,323.150,3.189,4.488,81.000,114.000),(35,'C8',161.575,229.606,2.244,3.189,57.000,81.000),(36,'C9',113.386,161.575,1.575,2.244,40.000,57.000),(37,'C10',79.370,113.386,1.102,1.575,28.000,40.000),(38,'C11',56.693,79.370,0.787,1.102,20.000,28.000),(39,'C12',39.685,56.693,0.551,0.787,14.000,20.000),(40,'C76',229.606,459.213,3.189,6.378,81.000,162.000),(41,'DL',311.811,623.622,4.331,8.661,110.000,220.000),(42,'E0',2491.654,3517.795,34.606,48.858,879.000,1241.000),(43,'E1',1757.480,2491.654,24.409,34.606,620.000,879.000),(44,'E2',1247.244,1757.480,17.323,24.409,440.000,620.000),(45,'E3',878.740,1247.244,12.205,17.323,310.000,440.000),(46,'E4',623.622,878.740,8.661,12.205,220.000,310.000),(47,'E5',439.370,623.622,6.102,8.661,155.000,220.000),(48,'E6',311.811,439.370,4.331,6.102,110.000,155.000),(49,'E7',221.102,311.811,3.071,4.331,78.000,110.000),(50,'E8',155.906,221.102,2.165,3.071,55.000,78.000),(51,'E9',110.551,155.906,1.535,2.165,39.000,55.000),(52,'E10',76.535,110.551,1.063,1.535,27.000,39.000),(53,'E11',53.858,76.535,0.748,1.063,19.000,27.000),(54,'E12',36.850,53.858,0.512,0.748,13.000,19.000),(55,'G0',2715.591,3838.110,37.717,53.307,958.000,1354.000),(56,'G1',1919.055,2715.591,26.654,37.717,677.000,958.000),(57,'G2',1357.795,1919.055,18.858,26.654,479.000,677.000),(58,'G3',958.110,1357.795,13.307,18.858,338.000,479.000),(59,'G4',677.480,958.110,9.409,13.307,239.000,338.000),(60,'G5',479.055,677.480,6.654,9.409,169.000,239.000),(61,'G6',337.323,479.055,4.685,6.654,119.000,169.000),(62,'G7',238.110,337.323,3.307,4.685,84.000,119.000),(63,'G8',167.244,238.110,2.323,3.307,59.000,84.000),(64,'G9',119.055,167.244,1.654,2.323,42.000,59.000),(65,'G10',82.205,119.055,1.142,1.654,29.000,42.000),(66,'G11',59.528,82.205,0.827,1.142,21.000,29.000),(67,'G12',39.685,59.528,0.551,0.827,14.000,21.000),(68,'RA0',2437.795,3458.268,33.858,48.032,860.000,1220.000),(69,'RA1',1729.134,2437.795,24.016,33.858,610.000,860.000),(70,'RA2',1218.898,1729.134,16.929,24.016,430.000,610.000),(71,'RA3',864.567,1218.898,12.008,16.929,305.000,430.000),(72,'RA4',609.449,864.567,8.465,12.008,215.000,305.000),(73,'SRA0',2551.181,3628.346,35.433,50.394,900.000,1280.000),(74,'SRA1',1814.173,2551.181,25.197,35.433,640.000,900.000),(75,'SRA2',1275.591,1814.173,17.717,25.197,450.000,640.000),(76,'SRA3',907.087,1275.591,12.598,17.717,320.000,450.000),(77,'SRA4',637.795,907.087,8.858,12.598,225.000,320.000),(78,'4A0',4767.874,6740.787,66.220,93.622,1682.000,2378.000),(79,'2A0',3370.394,4767.874,46.811,66.220,1189.000,1682.000),(80,'A2_EXTRA',1261.417,1754.646,17.520,24.370,445.000,619.000),(81,'A3+',932.598,1369.134,12.953,19.016,329.000,483.000),(82,'A3_EXTRA',912.756,1261.417,12.677,17.520,322.000,445.000),(83,'A3_SUPER',864.567,1440.000,12.008,20.000,305.000,508.000),(84,'SUPER_A3',864.567,1380.472,12.008,19.173,305.000,487.000),(85,'A4_EXTRA',666.142,912.756,9.252,12.677,235.000,322.000),(86,'A4_SUPER',649.134,912.756,9.016,12.677,229.000,322.000),(87,'SUPER_A4',643.465,1009.134,8.937,14.016,227.000,356.000),(88,'A4_LONG',595.276,986.457,8.268,13.701,210.000,348.000),(89,'F4',595.276,935.433,8.268,12.992,210.000,330.000),(90,'SO_B5_EXTRA',572.598,782.362,7.953,10.866,202.000,276.000),(91,'A5_EXTRA',490.394,666.142,6.811,9.252,173.000,235.000),(92,'ANSI_E',2448.000,3168.000,34.000,44.000,863.600,1117.600),(93,'ANSI_D',1584.000,2448.000,22.000,34.000,558.800,863.600),(94,'ANSI_C',1224.000,1584.000,17.000,22.000,431.800,558.800),(95,'ANSI_B',792.000,1224.000,11.000,17.000,279.400,431.800),(96,'ANSI_A',612.000,792.000,8.500,11.000,215.900,279.400),(97,'LEDGER',1224.000,792.000,17.000,11.000,431.800,279.400),(98,'TABLOID',792.000,1224.000,11.000,17.000,279.400,431.800),(99,'LETTER',612.000,792.000,8.500,11.000,215.900,279.400),(100,'LEGAL',612.000,1008.000,8.500,14.000,215.900,355.600),(101,'GLETTER',576.000,756.000,8.000,10.500,203.200,266.700),(102,'JLEGAL',576.000,360.000,8.000,5.000,203.200,127.000),(103,'QUADDEMY',2520.000,3240.000,35.000,45.000,889.000,1143.000),(104,'SUPER_B',936.000,1368.000,13.000,19.000,330.200,482.600),(105,'QUARTO',648.000,792.000,9.000,11.000,228.600,279.400),(106,'FOLIO',612.000,936.000,8.500,13.000,215.900,330.200),(107,'EXECUTIVE',522.000,756.000,7.250,10.500,184.150,266.700),(108,'MEMO',396.000,612.000,5.500,8.500,139.700,215.900),(109,'FOOLSCAP',595.440,936.000,8.270,13.000,210.058,330.200),(110,'COMPACT',306.000,486.000,4.250,6.750,107.950,171.450),(111,'ORGANIZERJ',198.000,360.000,2.750,5.000,69.850,127.000),(112,'ARCH_E',2592.000,3456.000,36.000,48.000,914.400,1219.200),(113,'ARCH_E1',2160.000,3024.000,30.000,42.000,762.000,1066.800),(114,'ARCH_D',1728.000,2592.000,24.000,36.000,609.600,914.400),(115,'ARCH_C',1296.000,1728.000,18.000,24.000,457.200,609.600),(116,'ARCH_B',864.000,1296.000,12.000,18.000,304.800,457.200),(117,'ARCH_A',648.000,864.000,9.000,12.000,228.600,304.800),(118,'ANNENV_A2',314.640,414.000,4.370,5.750,110.998,146.050),(119,'ANNENV_A6',342.000,468.000,4.750,6.500,120.650,165.100),(120,'ANNENV_A7',378.000,522.000,5.250,7.250,133.350,184.150),(121,'ANNENV_A8',396.000,584.640,5.500,8.120,139.700,206.248),(122,'ANNENV_A10',450.000,692.640,6.250,9.620,158.750,244.348),(123,'ANNENV_SLIM',278.640,638.640,3.870,8.870,98.298,225.298),(124,'COMMENV_N6_1/4',252.000,432.000,3.500,6.000,88.900,152.400),(125,'COMMENV_N6_3/4',260.640,468.000,3.620,6.500,91.948,165.100),(126,'COMMENV_N8',278.640,540.000,3.870,7.500,98.298,190.500),(127,'COMMENV_N9',278.640,638.640,3.870,8.870,98.298,225.298),(128,'COMMENV_N10',296.640,684.000,4.120,9.500,104.648,241.300),(129,'COMMENV_N11',324.000,746.640,4.500,10.370,114.300,263.398),(130,'COMMENV_N12',342.000,792.000,4.750,11.000,120.650,279.400),(131,'COMMENV_N14',360.000,828.000,5.000,11.500,127.000,292.100),(132,'CATENV_N1',432.000,648.000,6.000,9.000,152.400,228.600),(133,'CATENV_N1_3/4',468.000,684.000,6.500,9.500,165.100,241.300),(134,'CATENV_N2',468.000,720.000,6.500,10.000,165.100,254.000),(135,'CATENV_N3',504.000,720.000,7.000,10.000,177.800,254.000),(136,'CATENV_N6',540.000,756.000,7.500,10.500,190.500,266.700),(137,'CATENV_N7',576.000,792.000,8.000,11.000,203.200,279.400),(138,'CATENV_N8',594.000,810.000,8.250,11.250,209.550,285.750),(139,'CATENV_N9_1/2',612.000,756.000,8.500,10.500,215.900,266.700),(140,'CATENV_N9_3/4',630.000,810.000,8.750,11.250,222.250,285.750),(141,'CATENV_N10_1/2',648.000,864.000,9.000,12.000,228.600,304.800),(142,'CATENV_N12_1/2',684.000,900.000,9.500,12.500,241.300,317.500),(143,'CATENV_N13_1/2',720.000,936.000,10.000,13.000,254.000,330.200),(144,'CATENV_N14_1/4',810.000,882.000,11.250,12.250,285.750,311.150),(145,'CATENV_N14_1/2',828.000,1044.000,11.500,14.500,292.100,368.300),(146,'PA0',2381.102,3174.803,33.071,44.094,840.000,1120.000),(147,'PA1',1587.402,2381.102,22.047,33.071,560.000,840.000),(148,'PA2',1190.551,1587.402,16.535,22.047,420.000,560.000),(149,'PA3',793.701,1190.551,11.024,16.535,280.000,420.000),(150,'PA4',595.276,793.701,8.268,11.024,210.000,280.000),(151,'PA5',396.850,595.276,5.512,8.268,140.000,210.000),(152,'PA6',297.638,396.850,4.134,5.512,105.000,140.000),(153,'PA7',198.425,297.638,2.756,4.134,70.000,105.000),(154,'PA8',147.402,198.425,2.047,2.756,52.000,70.000),(155,'PA9',99.213,147.402,1.378,2.047,35.000,52.000),(156,'PA1073.701',99.213,0.000,1.378,0.000,35.000,0.000),(157,'PASSPORT_PHOTO',99.213,127.559,1.378,1.772,35.000,45.000),(158,'E',233.858,340.157,3.248,4.724,82.500,120.000),(159,'3R',252.283,360.000,3.504,5.000,89.000,127.000),(160,'4R',289.134,430.866,4.016,5.984,102.000,152.000),(161,'4D',340.157,430.866,4.724,5.984,120.000,152.000),(162,'5R',360.000,504.567,5.000,7.008,127.000,178.000),(163,'6R',430.866,575.433,5.984,7.992,152.000,203.000),(164,'8R',575.433,720.000,7.992,10.000,203.000,254.000),(165,'S8R',575.433,864.567,7.992,12.008,203.000,305.000),(166,'10R',720.000,864.567,10.000,12.008,254.000,305.000),(167,'S10R720.000',1080.000,0.000,15.000,0.000,381.000,0.000),(168,'11R',790.866,1009.134,10.984,14.016,279.000,356.000),(169,'S11R',790.866,1224.567,10.984,17.008,279.000,432.000),(170,'12R',864.567,1080.000,12.008,15.000,305.000,381.000),(171,'S12R',864.567,1292.598,12.008,17.953,305.000,456.000),(172,'NEWSPAPER_BROADSHEET',2125.984,1700.787,29.528,23.622,750.000,600.000),(173,'NEWSPAPER_BERLINER',1332.283,892.913,18.504,12.402,470.000,315.000),(174,'NEWSPAPER_COMPACT',1218.898,793.701,16.929,11.024,430.000,280.000),(175,'BUSINESS_CARD_ISO7810',153.014,242.646,2.125,3.370,53.980,85.600),(176,'BUSINESS_CARD_ISO216',147.402,209.764,2.047,2.913,52.000,74.000),(177,'BUSINESS_CARD_ES',155.906,240.945,2.165,3.346,55.000,85.000),(178,'BUSINESS_CARD_US',144.567,252.283,2.008,3.504,51.000,89.000),(179,'BUSINESS_CARD_JP',155.906,257.953,2.165,3.583,55.000,91.000),(180,'BUSINESS_CARD_HK',153.071,255.118,2.126,3.543,54.000,90.000),(181,'BUSINESS_CARD_SE',155.906,255.118,2.165,3.543,55.000,90.000),(182,'BUSINESS_CARD_IL',141.732,255.118,1.968,3.543,50.000,90.000),(183,'4SHEET',2880.000,4320.000,40.000,60.000,1016.000,1524.000),(184,'6SHEET',3401.575,5102.362,47.244,70.866,1200.000,1800.000),(185,'12SHEET',8640.000,4320.000,120.000,60.000,3048.000,1524.000),(186,'16SHEET',5760.000,8640.000,80.000,120.000,2032.000,3048.000),(187,'32SHEET',11520.000,8640.000,160.000,120.000,4064.000,3048.000),(188,'48SHEET',17280.000,8640.000,240.000,120.000,6096.000,3048.000),(189,'64SHEET',23040.000,8640.000,320.000,120.000,8128.000,3048.000),(190,'96SHEET',34560.000,8640.000,480.000,120.000,12192.000,3048.000);
/*!40000 ALTER TABLE `_sys_pagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchinvoicedetails`
--

DROP TABLE IF EXISTS `batchinvoicedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchinvoicedetails` (
  `id` int(11) unsigned NOT NULL,
  `batch_id` varchar(16) NOT NULL,
  `invoice_id` int(11) unsigned NOT NULL,
  `alt_invoice_id` int(11) unsigned NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `order_date` date NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `order_details` varchar(255) NOT NULL,
  `extended_total` float(16,2) NOT NULL,
  `tax_total` float(16,2) NOT NULL,
  `order_total` float(16,2) NOT NULL,
  `payment_total` float(16,2) NOT NULL,
  `balance` float(16,2) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchinvoicedetails`
--

LOCK TABLES `batchinvoicedetails` WRITE;
/*!40000 ALTER TABLE `batchinvoicedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchinvoicedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchinvoicedetails_hs`
--

DROP TABLE IF EXISTS `batchinvoicedetails_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchinvoicedetails_hs` (
  `id` int(11) unsigned NOT NULL,
  `batch_id` varchar(16) NOT NULL,
  `invoice_id` int(11) unsigned NOT NULL,
  `alt_invoice_id` int(11) unsigned NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `order_date` date NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `order_details` varchar(255) NOT NULL,
  `extended_total` float(16,2) NOT NULL,
  `tax_total` float(16,2) NOT NULL,
  `order_total` float(16,2) NOT NULL,
  `payment_total` float(16,2) NOT NULL,
  `balance` float(16,2) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchinvoicedetails_hs`
--

LOCK TABLES `batchinvoicedetails_hs` WRITE;
/*!40000 ALTER TABLE `batchinvoicedetails_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchinvoicedetails_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchinvoicedetails_is`
--

DROP TABLE IF EXISTS `batchinvoicedetails_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchinvoicedetails_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` varchar(16) DEFAULT NULL,
  `invoice_id` int(11) unsigned DEFAULT NULL,
  `alt_invoice_id` int(11) unsigned DEFAULT NULL,
  `order_id` varchar(16) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `order_details` varchar(255) DEFAULT NULL,
  `extended_total` float(16,2) DEFAULT NULL,
  `tax_total` float(16,2) DEFAULT NULL,
  `order_total` float(16,2) DEFAULT NULL,
  `payment_total` float(16,2) DEFAULT NULL,
  `balance` float(16,2) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchinvoicedetails_is`
--

LOCK TABLES `batchinvoicedetails_is` WRITE;
/*!40000 ALTER TABLE `batchinvoicedetails_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchinvoicedetails_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchinvoices`
--

DROP TABLE IF EXISTS `batchinvoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchinvoices` (
  `id` int(11) unsigned NOT NULL,
  `batch_id` varchar(16) NOT NULL,
  `batch_date` date NOT NULL,
  `batch_description` varchar(255) NOT NULL,
  `batch_type` varchar(50) NOT NULL,
  `batch_details` text NOT NULL,
  `comments` text NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_batch_id` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchinvoices`
--

LOCK TABLES `batchinvoices` WRITE;
/*!40000 ALTER TABLE `batchinvoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchinvoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchinvoices_hs`
--

DROP TABLE IF EXISTS `batchinvoices_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchinvoices_hs` (
  `id` int(11) unsigned NOT NULL,
  `batch_id` varchar(16) NOT NULL,
  `batch_date` date NOT NULL,
  `batch_description` varchar(255) NOT NULL,
  `batch_type` varchar(50) NOT NULL,
  `batch_details` text NOT NULL,
  `comments` text NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchinvoices_hs`
--

LOCK TABLES `batchinvoices_hs` WRITE;
/*!40000 ALTER TABLE `batchinvoices_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchinvoices_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchinvoices_is`
--

DROP TABLE IF EXISTS `batchinvoices_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batchinvoices_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` varchar(16) DEFAULT NULL,
  `batch_date` date DEFAULT NULL,
  `batch_description` varchar(255) DEFAULT NULL,
  `batch_type` varchar(50) DEFAULT NULL,
  `batch_details` text,
  `comments` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_batch_id` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchinvoices_is`
--

LOCK TABLES `batchinvoices_is` WRITE;
/*!40000 ALTER TABLE `batchinvoices_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `batchinvoices_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `id` int(11) unsigned NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `region_id` int(11) unsigned NOT NULL,
  `active` enum('Y','N') NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_branch_id` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'HEAD.OFFICE','Head Office','',503,'Y','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches_hs`
--

DROP TABLE IF EXISTS `branches_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches_hs` (
  `id` int(11) unsigned NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `region_id` int(11) unsigned NOT NULL,
  `active` enum('Y','N') NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches_hs`
--

LOCK TABLES `branches_hs` WRITE;
/*!40000 ALTER TABLE `branches_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `branches_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches_is`
--

DROP TABLE IF EXISTS `branches_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `region_id` int(11) unsigned DEFAULT NULL,
  `active` enum('Y','N') DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_branch_id` (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches_is`
--

LOCK TABLES `branches_is` WRITE;
/*!40000 ALTER TABLE `branches_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `branches_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countrys`
--

DROP TABLE IF EXISTS `countrys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countrys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` varchar(3) NOT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  `formal_name` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `sovereignty` varchar(255) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `telephone_code` int(4) DEFAULT NULL,
  `iana_country_code` varchar(3) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` varchar(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countrys`
--

LOCK TABLES `countrys` WRITE;
/*!40000 ALTER TABLE `countrys` DISABLE KEYS */;
INSERT INTO `countrys` VALUES (1,'AC','Ascension',NULL,'Georgetown','Proto Dependency','Dependency of Saint Helena','United Kingdom','SHP','Pound',247,'.ac','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(2,'AD','Andorra','Principality of Andorra','Andorra la Vella','Independent State',NULL,NULL,'EUR','Euro',376,'.ad','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(3,'AE','United Arab Emirates','United Arab Emirates','Abu Dhabi','Independent State',NULL,NULL,'AED','Dirham',971,'.ae','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(4,'AF','Afghanistan','Islamic State of Afghanistan','Kabul','Independent State',NULL,NULL,'AFN','Afghani',93,'.af','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(5,'AG','Antigua and Barbuda',NULL,'Saint John\'s','Independent State',NULL,NULL,'XCD','Dollar',268,'.ag','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(6,'AI','Anguilla',NULL,'The Valley','Dependency','Overseas Territory','United Kingdom','XCD','Dollar',264,'.ai','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(7,'AL','Albania','Republic of Albania','Tirana','Independent State',NULL,NULL,'ALL','Lek',355,'.al','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(8,'AM','Armenia','Republic of Armenia','Yerevan','Independent State',NULL,NULL,'AMD','Dram',374,'.am','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(9,'AN','Netherlands Antilles',NULL,'Willemstad','Proto Dependency',NULL,'Netherlands','ANG','Guilder',599,'.an','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(10,'AO','Angola','Republic of Angola','Luanda','Independent State',NULL,NULL,'AOA','Kwanza',244,'.ao','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(11,'AQ','Antarctica',NULL,NULL,'Disputed Territory',NULL,'Undetermined',NULL,NULL,NULL,'.aq','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(12,'AQ1','Australian Antarctic Territory',NULL,NULL,'Antarctic Territory','External Territory','Australia',NULL,NULL,NULL,'.aq','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(13,'AQ2','Ross Dependency',NULL,NULL,'Antarctic Territory','Territory','New Zealand',NULL,NULL,NULL,'.aq','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(14,'AQ3','Peter I Island',NULL,NULL,'Antarctic Territory','Territory','Norway',NULL,NULL,NULL,'.aq','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(15,'AQ4','Queen Maud Land',NULL,NULL,'Antarctic Territory','Territory','Norway',NULL,NULL,NULL,'.aq','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(16,'AQ5','British Antarctic Territory',NULL,NULL,'Antarctic Territory','Overseas Territory','United Kingdom',NULL,NULL,NULL,'.aq','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(17,'AR','Argentina','Argentine Republic','Buenos Aires','Independent State',NULL,NULL,'ARS','Peso',54,'.ar','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(18,'AS','American Samoa','Territory of American Samoa','Pago Pago','Dependency','Territory','United States','USD','Dollar',684,'.as','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(19,'AT','Austria','Republic of Austria','Vienna','Independent State',NULL,NULL,'EUR','Euro',43,'.at','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(20,'AU','Australia','Commonwealth of Australia','Canberra','Independent State',NULL,NULL,'AUD','Dollar',61,'.au','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(21,'AU1','Ashmore and Cartier Islands','Territory of Ashmore and Cartier Islands',NULL,'Dependency','External Territory','Australia',NULL,NULL,NULL,'.au','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(22,'AU2','Coral Sea Islands','Coral Sea Islands Territory',NULL,'Dependency','External Territory','Australia',NULL,NULL,NULL,'.au','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(23,'AW','Aruba',NULL,'Oranjestad','Proto Dependency',NULL,'Netherlands','AWG','Guilder',297,'.aw','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(24,'AX','Aland',NULL,'Mariehamn','Proto Dependency',NULL,'Finland','EUR','Euro',340,'.ax','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(25,'AZ','Azerbaijan','Republic of Azerbaijan','Baku','Independent State',NULL,NULL,'AZN','Manat',994,'.az','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(26,'AZ1','Nagorno-Karabakh','Nagorno-Karabakh Republic','Stepanakert','Proto Independent State',NULL,NULL,'AMD','Dram',277,'.az','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(27,'BA','Bosnia and Herzegovina',NULL,'Sarajevo','Independent State',NULL,NULL,'BAM','Marka',387,'.ba','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(28,'BB','Barbados',NULL,'Bridgetown','Independent State',NULL,NULL,'BBD','Dollar',246,'.bb','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(29,'BD','Bangladesh','People\'s Republic of Bangladesh','Dhaka','Independent State',NULL,NULL,'BDT','Taka',880,'.bd','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(30,'BE','Belgium','Kingdom of Belgium','Brussels','Independent State',NULL,NULL,'EUR','Euro',32,'.be','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(31,'BF','Burkina Faso',NULL,'Ouagadougou','Independent State',NULL,NULL,'XOF','Franc',226,'.bf','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(32,'BG','Bulgaria','Republic of Bulgaria','Sofia','Independent State',NULL,NULL,'BGN','Lev',359,'.bg','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(33,'BH','Bahrain','Kingdom of Bahrain','Manama','Independent State',NULL,NULL,'BHD','Dinar',973,'.bh','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(34,'BI','Burundi','Republic of Burundi','Bujumbura','Independent State',NULL,NULL,'BIF','Franc',257,'.bi','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(35,'BJ','Benin','Republic of Benin','Porto-Novo','Independent State',NULL,NULL,'XOF','Franc',229,'.bj','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(36,'BM','Bermuda',NULL,'Hamilton','Dependency','Overseas Territory','United Kingdom','BMD','Dollar',441,'.bm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(37,'BN','Brunei','Negara Brunei Darussalam','Bandar Seri Begawan','Independent State',NULL,NULL,'BND','Dollar',673,'.bn','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(38,'BO','Bolivia','Republic of Bolivia','La Paz (administrative/legislative) and Sucre (judical)','Independent State',NULL,NULL,'BOB','Boliviano',591,'.bo','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(39,'BR','Brazil','Federative Republic of Brazil','Brasilia','Independent State',NULL,NULL,'BRL','Real',55,'.br','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(40,'BS','Bahamas',' The','Commonwealth of The Bahamas','Nassau','Independent State',NULL,NULL,'BSD',NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(41,'BT','Bhutan','Kingdom of Bhutan','Thimphu','Independent State',NULL,NULL,'BTN','Ngultrum',975,'.bt','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(42,'BV','Bouvet Island',NULL,NULL,'Dependency','Territory','Norway',NULL,NULL,NULL,'.bv','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(43,'BW','Botswana','Republic of Botswana','Gaborone','Independent State',NULL,NULL,'BWP','Pula',267,'.bw','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(44,'BY','Belarus','Republic of Belarus','Minsk','Independent State',NULL,NULL,'BYR','Ruble',375,'.by','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(45,'BZ','Belize',NULL,'Belmopan','Independent State',NULL,NULL,'BZD','Dollar',501,'.bz','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(46,'CA','Canada',NULL,'Ottawa','Independent State',NULL,NULL,'CAD','Dollar',1,'.ca','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(47,'CC','Cocos (Keeling) Islands','Territory of Cocos (Keeling) Islands','West Island','Dependency','External Territory','Australia','AUD','Dollar',61,'.cc','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(48,'CD','Congo',' Democratic Republic of the (Congo â€“ Kinshasa)','Democratic Republic of the Congo','Kinshasa','Independent State',NULL,NULL,'CDF',NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(49,'CF','Central African Republic',NULL,'Bangui','Independent State',NULL,NULL,'XAF','Franc',236,'.cf','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(50,'CG','Congo',' Republic of the (Congo â€“ Brazzaville)','Republic of the Congo','Brazzaville','Independent State',NULL,NULL,'XAF',NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(51,'CH','Switzerland','Swiss Confederation','Bern','Independent State',NULL,NULL,'CHF','Franc',41,'.ch','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(52,'CI','Cote d\'Ivoire (Ivory Coast)','Republic of Cote d\'Ivoire','Yamoussoukro','Independent State',NULL,NULL,'XOF','Franc',225,'.ci','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(53,'CK','Cook Islands',NULL,'Avarua','Dependency','Self-Governing in Free Association','New Zealand','NZD','Dollar',682,'.ck','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(54,'CL','Chile','Republic of Chile','Santiago (administrative/judical) and Valparaiso (legislative)','Independent State',NULL,NULL,'CLP','Peso',56,'.cl','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(55,'CM','Cameroon','Republic of Cameroon','Yaounde','Independent State',NULL,NULL,'XAF','Franc',237,'.cm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(56,'CN','China',' People\'s Republic of','People\'s Republic of China','Beijing','Independent State',NULL,NULL,'CNY',NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(57,'CO','Colombia','Republic of Colombia','Bogota','Independent State',NULL,NULL,'COP','Peso',57,'.co','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(58,'CR','Costa Rica','Republic of Costa Rica','San Jose','Independent State',NULL,NULL,'CRC','Colon',506,'.cr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(59,'CS','Kosovo',NULL,'Pristina','Disputed Territory',NULL,'Administrated by the UN','CSD','Dinar and Euro',381,'.cs','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(60,'CU','Cuba','Republic of Cuba','Havana','Independent State',NULL,NULL,'CUP','Peso',53,'.cu','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(61,'CV','Cape Verde','Republic of Cape Verde','Praia','Independent State',NULL,NULL,'CVE','Escudo',238,'.cv','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(62,'CX','Christmas Island','Territory of Christmas Island','The Settlement (Flying Fish Cove)','Dependency','External Territory','Australia','AUD','Dollar',61,'.cx','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(63,'CY','Cyprus','Republic of Cyprus','Nicosia','Independent State',NULL,NULL,'CYP','Pound',357,'.cy','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(64,'CY1','Northern Cyprus','Turkish Republic of Northern Cyprus','Nicosia','Proto Independent State',NULL,NULL,'TRY','Lira',392,'.nc','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(65,'CZ','Czech Republic',NULL,'Prague','Independent State',NULL,NULL,'CZK','Koruna',420,'.cz','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(66,'DE','Germany','Federal Republic of Germany','Berlin','Independent State',NULL,NULL,'EUR','Euro',49,'.de','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(67,'DJ','Djibouti','Republic of Djibouti','Djibouti','Independent State',NULL,NULL,'DJF','Franc',253,'.dj','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(68,'DK','Denmark','Kingdom of Denmark','Copenhagen','Independent State',NULL,NULL,'DKK','Krone',45,'.dk','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(69,'DM','Dominica','Commonwealth of Dominica','Roseau','Independent State',NULL,NULL,'XCD','Dollar',766,'.dm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(70,'DO','Dominican Republic',NULL,'Santo Domingo','Independent State',NULL,NULL,'DOP','Peso',829,'.do','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(71,'DZ','Algeria','People\'s Democratic Republic of Algeria','Algiers','Independent State',NULL,NULL,'DZD','Dinar',213,'.dz','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(72,'EC','Ecuador','Republic of Ecuador','Quito','Independent State',NULL,NULL,'USD','Dollar',593,'.ec','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(73,'EE','Estonia','Republic of Estonia','Tallinn','Independent State',NULL,NULL,'EEK','Kroon',372,'.ee','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(74,'EG','Egypt','Arab Republic of Egypt','Cairo','Independent State',NULL,NULL,'EGP','Pound',20,'.eg','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(75,'EH','Western Sahara',NULL,'El-Aaiun','Disputed Territory',NULL,'Administrated by Morocco','MAD','Dirham',212,'.eh','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(76,'ER','Eritrea','State of Eritrea','Asmara','Independent State',NULL,NULL,'ERN','Nakfa',291,'.er','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(77,'ES','Spain','Kingdom of Spain','Madrid','Independent State',NULL,NULL,'EUR','Euro',34,'.es','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(78,'ET','Ethiopia','Federal Democratic Republic of Ethiopia','Addis Ababa','Independent State',NULL,NULL,'ETB','Birr',251,'.et','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(79,'FI','Finland','Republic of Finland','Helsinki','Independent State',NULL,NULL,'EUR','Euro',358,'.fi','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(80,'FJ','Fiji','Republic of the Fiji Islands','Suva','Independent State',NULL,NULL,'FJD','Dollar',679,'.fj','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(81,'FK','Falkland Islands (Islas Malvinas)',NULL,'Stanley','Dependency','Overseas Territory','United Kingdom','FKP','Pound',500,'.fk','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(82,'FM','Micronesia','Federated States of Micronesia','Palikir','Independent State',NULL,NULL,'USD','Dollar',691,'.fm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(83,'FO','Faroe Islands',NULL,'Torshavn','Proto Dependency',NULL,'Denmark','DKK','Krone',298,'.fo','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(84,'FR','France','French Republic','Paris','Independent State',NULL,NULL,'EUR','Euro',33,'.fr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(85,'GA','Gabon','Gabonese Republic','Libreville','Independent State',NULL,NULL,'XAF','Franc',241,'.ga','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(86,'GB','United Kingdom','United Kingdom of Great Britain and Northern Ireland','London','Independent State',NULL,NULL,'GBP','Pound',44,'.uk','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(87,'GD','Grenada',NULL,'Saint George\'s','Independent State',NULL,NULL,'XCD','Dollar',473,'.gd','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(88,'GE','Georgia','Republic of Georgia','Tbilisi','Independent State',NULL,NULL,'GEL','Lari',995,'.ge','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(89,'GE1','Abkhazia','Republic of Abkhazia','Sokhumi','Proto Independent State',NULL,NULL,'RUB','Ruble',995,'.ge','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(90,'GE2','South Ossetia','Republic of South Ossetia','Tskhinvali','Proto Independent State',NULL,NULL,'RUB','Ruble and Lari',995,'.ge','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(91,'GF','French Guiana','Overseas Region of Guiana','Cayenne','Proto Dependency','Overseas Region','France','EUR','Euro',594,'.gf','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(92,'GG','Guernsey','Bailiwick of Guernsey','Saint Peter Port','Dependency','Crown Dependency','United Kingdom','GGP','Pound',44,'.gg','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(93,'GH','Ghana','Republic of Ghana','Accra','Independent State',NULL,NULL,'GHS','Cedi',233,'.gh','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(94,'GI','Gibraltar',NULL,'Gibraltar','Dependency','Overseas Territory','United Kingdom','GIP','Pound',350,'.gi','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(95,'GL','Greenland',NULL,'Nuuk (Godthab)','Proto Dependency',NULL,'Denmark','DKK','Krone',299,'.gl','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(96,'GM','Gambia',' The','Republic of The Gambia','Banjul','Independent State',NULL,NULL,'GMD',NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(97,'GN','Guinea','Republic of Guinea','Conakry','Independent State',NULL,NULL,'GNF','Franc',224,'.gn','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(98,'GP1','Saint Barthelemy','Collectivity of Saint Barthelemy','Gustavia','Dependency','Overseas Collectivity','France','EUR','Euro',590,'.gp','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(99,'GP2','Guadeloupe','Overseas Region of Guadeloupe','Basse-Terre','Proto Dependency','Overseas Region','France','EUR','Euro',590,'.gp','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(100,'GP3','Saint Martin','Collectivity of Saint Martin','Marigot','Dependency','Overseas Collectivity','France','EUR','Euro',590,'.gp','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(101,'GQ','Equatorial Guinea','Republic of Equatorial Guinea','Malabo','Independent State',NULL,NULL,'XAF','Franc',240,'.gq','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(102,'GR','Greece','Hellenic Republic','Athens','Independent State',NULL,NULL,'EUR','Euro',30,'.gr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(103,'GS','South Georgia and the South Sandwich Islands',NULL,NULL,'Dependency','Overseas Territory','United Kingdom',NULL,NULL,NULL,'.gs','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(104,'GT','Guatemala','Republic of Guatemala','Guatemala','Independent State',NULL,NULL,'GTQ','Quetzal',502,'.gt','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(105,'GU','Guam','Territory of Guam','Hagatna','Dependency','Territory','United States','USD','Dollar',671,'.gu','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(106,'GW','Guinea-Bissau','Republic of Guinea-Bissau','Bissau','Independent State',NULL,NULL,'XOF','Franc',245,'.gw','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(107,'GY','Guyana','Co-operative Republic of Guyana','Georgetown','Independent State',NULL,NULL,'GYD','Dollar',592,'.gy','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(108,'HK','Hong Kong','Hong Kong Special Administrative Region',NULL,'Proto Dependency','Special Administrative Region','China','HKD','Dollar',852,'.hk','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(109,'HM','Heard Island and McDonald Islands','Territory of Heard Island and McDonald Islands',NULL,'Dependency','External Territory','Australia',NULL,NULL,NULL,'.hm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(110,'HN','Honduras','Republic of Honduras','Tegucigalpa','Independent State',NULL,NULL,'HNL','Lempira',504,'.hn','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(111,'HR','Croatia','Republic of Croatia','Zagreb','Independent State',NULL,NULL,'HRK','Kuna',385,'.hr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(112,'HT','Haiti','Republic of Haiti','Port-au-Prince','Independent State',NULL,NULL,'HTG','Gourde',509,'.ht','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(113,'HU','Hungary','Republic of Hungary','Budapest','Independent State',NULL,NULL,'HUF','Forint',36,'.hu','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(114,'ID','Indonesia','Republic of Indonesia','Jakarta','Independent State',NULL,NULL,'IDR','Rupiah',62,'.id','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(115,'IE','Ireland',NULL,'Dublin','Independent State',NULL,NULL,'EUR','Euro',353,'.ie','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(116,'IL','Israel','State of Israel','Jerusalem','Independent State',NULL,NULL,'ILS','Shekel',972,'.il','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(117,'IM','Isle of Man',NULL,'Douglas','Dependency','Crown Dependency','United Kingdom','IMP','Pound',44,'.im','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(118,'IN','India','Republic of India','New Delhi','Independent State',NULL,NULL,'INR','Rupee',91,'.in','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(119,'IO','British Indian Ocean Territory',NULL,NULL,'Dependency','Overseas Territory','United Kingdom',NULL,NULL,246,'.io','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(120,'IQ','Iraq','Republic of Iraq','Baghdad','Independent State',NULL,NULL,'IQD','Dinar',964,'.iq','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(121,'IR','Iran','Islamic Republic of Iran','Tehran','Independent State',NULL,NULL,'IRR','Rial',98,'.ir','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(122,'IS','Iceland','Republic of Iceland','Reykjavik','Independent State',NULL,NULL,'ISK','Krona',354,'.is','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(123,'IT','Italy','Italian Republic','Rome','Independent State',NULL,NULL,'EUR','Euro',39,'.it','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(124,'JE','Jersey','Bailiwick of Jersey','Saint Helier','Dependency','Crown Dependency','United Kingdom','JEP','Pound',44,'.je','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(125,'JM','Jamaica',NULL,'Kingston','Independent State',NULL,NULL,'JMD','Dollar',-875,'.jm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(126,'JO','Jordan','Hashemite Kingdom of Jordan','Amman','Independent State',NULL,NULL,'JOD','Dinar',962,'.jo','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(127,'JP','Japan',NULL,'Tokyo','Independent State',NULL,NULL,'JPY','Yen',81,'.jp','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(128,'KE','Kenya','Republic of Kenya','Nairobi','Independent State',NULL,NULL,'KES','Shilling',254,'.ke','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(129,'KG','Kyrgyzstan','Kyrgyz Republic','Bishkek','Independent State',NULL,NULL,'KGS','Som',996,'.kg','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(130,'KH','Cambodia','Kingdom of Cambodia','Phnom Penh','Independent State',NULL,NULL,'KHR','Riels',855,'.kh','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(131,'KI','Kiribati','Republic of Kiribati','Tarawa','Independent State',NULL,NULL,'AUD','Dollar',686,'.ki','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(132,'KM','Comoros','Union of Comoros','Moroni','Independent State',NULL,NULL,'KMF','Franc',269,'.km','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(133,'KN','Saint Kitts and Nevis','Federation of Saint Kitts and Nevis','Basseterre','Independent State',NULL,NULL,'XCD','Dollar',869,'.kn','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(134,'KP','Korea',' Democratic People\'s Republic of (North Korea)','Democratic People\'s Republic of Korea','Pyongyang','Independent State',NULL,NULL,'KPW',NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(135,'KR','Korea',' Republic of  (South Korea)','Republic of Korea','Seoul','Independent State',NULL,NULL,'KRW',NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(136,'KW','Kuwait','State of Kuwait','Kuwait','Independent State',NULL,NULL,'KWD','Dinar',965,'.kw','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(137,'KY','Cayman Islands',NULL,'George Town','Dependency','Overseas Territory','United Kingdom','KYD','Dollar',345,'.ky','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(138,'KZ','Kazakhstan','Republic of Kazakhstan','Astana','Independent State',NULL,NULL,'KZT','Tenge',7,'.kz','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(139,'LA','Laos','Lao People\'s Democratic Republic','Vientiane','Independent State',NULL,NULL,'LAK','Kip',856,'.la','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(140,'LB','Lebanon','Lebanese Republic','Beirut','Independent State',NULL,NULL,'LBP','Pound',961,'.lb','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(141,'LC','Saint Lucia',NULL,'Castries','Independent State',NULL,NULL,'XCD','Dollar',758,'.lc','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(142,'LI','Liechtenstein','Principality of Liechtenstein','Vaduz','Independent State',NULL,NULL,'CHF','Franc',423,'.li','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(143,'LK','Sri Lanka','Democratic Socialist Republic of Sri Lanka','Colombo (administrative/judical) and Sri Jayewardenepura Kotte (legislative)','Independent State',NULL,NULL,'LKR','Rupee',94,'.lk','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(144,'LR','Liberia','Republic of Liberia','Monrovia','Independent State',NULL,NULL,'LRD','Dollar',231,'.lr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(145,'LS','Lesotho','Kingdom of Lesotho','Maseru','Independent State',NULL,NULL,'LSL','Loti',266,'.ls','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(146,'LT','Lithuania','Republic of Lithuania','Vilnius','Independent State',NULL,NULL,'LTL','Litas',370,'.lt','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(147,'LU','Luxembourg','Grand Duchy of Luxembourg','Luxembourg','Independent State',NULL,NULL,'EUR','Euro',352,'.lu','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(148,'LV','Latvia','Republic of Latvia','Riga','Independent State',NULL,NULL,'LVL','Lat',371,'.lv','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(149,'LY','Libya','Great Socialist People\'s Libyan Arab Jamahiriya','Tripoli','Independent State',NULL,NULL,'LYD','Dinar',218,'.ly','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(150,'MA','Morocco','Kingdom of Morocco','Rabat','Independent State',NULL,NULL,'MAD','Dirham',212,'.ma','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(151,'MC','Monaco','Principality of Monaco','Monaco','Independent State',NULL,NULL,'EUR','Euro',377,'.mc','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(152,'MD','Moldova','Republic of Moldova','Chisinau','Independent State',NULL,NULL,'MDL','Leu',373,'.md','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(153,'MD1','Pridnestrovie (Transnistria)','Pridnestrovian Moldavian Republic','Tiraspol','Proto Independent State',NULL,NULL,NULL,'Ruple',533,'.md','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(154,'ME','Montenegro','Republic of Montenegro','Podgorica','Independent State',NULL,NULL,'EUR','Euro',382,'.me','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(155,'MG','Madagascar','Republic of Madagascar','Antananarivo','Independent State',NULL,NULL,'MGA','Ariary',261,'.mg','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(156,'MH','Marshall Islands','Republic of the Marshall Islands','Majuro','Independent State',NULL,NULL,'USD','Dollar',692,'.mh','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(157,'MK','Macedonia','Republic of Macedonia','Skopje','Independent State',NULL,NULL,'MKD','Denar',389,'.mk','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(158,'ML','Mali','Republic of Mali','Bamako','Independent State',NULL,NULL,'XOF','Franc',223,'.ml','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(159,'MM','Myanmar (Burma)','Union of Myanmar','Naypyidaw','Independent State',NULL,NULL,'MMK','Kyat',95,'.mm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(160,'MN','Mongolia',NULL,'Ulaanbaatar','Independent State',NULL,NULL,'MNT','Tugrik',976,'.mn','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(161,'MO','Macau','Macau Special Administrative Region','Macau','Proto Dependency','Special Administrative Region','China','MOP','Pataca',853,'.mo','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(162,'MP','Northern Mariana Islands','Commonwealth of The Northern Mariana Islands','Saipan','Dependency','Commonwealth','United States','USD','Dollar',670,'.mp','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(163,'MQ','Martinique','Overseas Region of Martinique','Fort-de-France','Proto Dependency','Overseas Region','France','EUR','Euro',596,'.mq','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(164,'MR','Mauritania','Islamic Republic of Mauritania','Nouakchott','Independent State',NULL,NULL,'MRO','Ouguiya',222,'.mr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(165,'MS','Montserrat',NULL,'Plymouth','Dependency','Overseas Territory','United Kingdom','XCD','Dollar',664,'.ms','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(166,'MT','Malta','Republic of Malta','Valletta','Independent State',NULL,NULL,'MTL','Lira',356,'.mt','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(167,'MU','Mauritius','Republic of Mauritius','Port Louis','Independent State',NULL,NULL,'MUR','Rupee',230,'.mu','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(168,'MV','Maldives','Republic of Maldives','Male','Independent State',NULL,NULL,'MVR','Rufiyaa',960,'.mv','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(169,'MW','Malawi','Republic of Malawi','Lilongwe','Independent State',NULL,NULL,'MWK','Kwacha',265,'.mw','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(170,'MX','Mexico','United Mexican States','Mexico','Independent State',NULL,NULL,'MXN','Peso',52,'.mx','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(171,'MY','Malaysia',NULL,'Kuala Lumpur (legislative/judical) and Putrajaya (administrative)','Independent State',NULL,NULL,'MYR','Ringgit',60,'.my','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(172,'MZ','Mozambique','Republic of Mozambique','Maputo','Independent State',NULL,NULL,'MZM','Meticail',258,'.mz','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(173,'NA','Namibia','Republic of Namibia','Windhoek','Independent State',NULL,NULL,'NAD','Dollar',264,'.na','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(174,'NC','New Caledonia',NULL,'Noumea','Dependency','Sui generis Collectivity','France','XPF','Franc',687,'.nc','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(175,'NE','Niger','Republic of Niger','Niamey','Independent State',NULL,NULL,'XOF','Franc',227,'.ne','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(176,'NF','Norfolk Island','Territory of Norfolk Island','Kingston','Dependency','External Territory','Australia','AUD','Dollar',672,'.nf','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(177,'NG','Nigeria','Federal Republic of Nigeria','Abuja','Independent State',NULL,NULL,'NGN','Naira',234,'.ng','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(178,'NI','Nicaragua','Republic of Nicaragua','Managua','Independent State',NULL,NULL,'NIO','Cordoba',505,'.ni','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(179,'NL','Netherlands','Kingdom of the Netherlands','Amsterdam (administrative) and The Hague (legislative/judical)','Independent State',NULL,NULL,'EUR','Euro',31,'.nl','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(180,'NO','Norway','Kingdom of Norway','Oslo','Independent State',NULL,NULL,'NOK','Krone',47,'.no','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(181,'NP','Nepal',NULL,'Kathmandu','Independent State',NULL,NULL,'NPR','Rupee',977,'.np','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(182,'NR','Nauru','Republic of Nauru','Yaren','Independent State',NULL,NULL,'AUD','Dollar',674,'.nr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(183,'NU','Niue',NULL,'Alofi','Dependency','Self-Governing in Free Association','New Zealand','NZD','Dollar',683,'.nu','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(184,'NZ','New Zealand',NULL,'Wellington','Independent State',NULL,NULL,'NZD','Dollar',64,'.nz','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(185,'OM','Oman','Sultanate of Oman','Muscat','Independent State',NULL,NULL,'OMR','Rial',968,'.om','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(186,'PA','Panama','Republic of Panama','Panama','Independent State',NULL,NULL,'PAB','Balboa',507,'.pa','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(187,'PE','Peru','Republic of Peru','Lima','Independent State',NULL,NULL,'PEN','Sol',51,'.pe','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(188,'PF','French Polynesia','Overseas Country of French Polynesia','Papeete','Dependency','Overseas Collectivity','France','XPF','Franc',689,'.pf','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(189,'PF1','Clipperton Island',NULL,NULL,'Dependency','Possession','France',NULL,NULL,NULL,'.pf','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(190,'PG','Papua New Guinea','Independent State of Papua New Guinea','Port Moresby','Independent State',NULL,NULL,'PGK','Kina',675,'.pg','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(191,'PH','Philippines','Republic of the Philippines','Manila','Independent State',NULL,NULL,'PHP','Peso',63,'.ph','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(192,'PK','Pakistan','Islamic Republic of Pakistan','Islamabad','Independent State',NULL,NULL,'PKR','Rupee',92,'.pk','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(193,'PL','Poland','Republic of Poland','Warsaw','Independent State',NULL,NULL,'PLN','Zloty',48,'.pl','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(194,'PM','Saint Pierre and Miquelon','Territorial Collectivity of Saint Pierre and Miquelon','Saint-Pierre','Dependency','Overseas Collectivity','France','EUR','Euro',508,'.pm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(195,'PN','Pitcairn Islands',NULL,'Adamstown','Dependency','Overseas Territory','United Kingdom','NZD','Dollar',NULL,'.pn','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(196,'PR','Puerto Rico','Commonwealth of Puerto Rico','San Juan','Dependency','Commonwealth','United States','USD','Dollar',939,'.pr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(197,'PS','Palestinian Territories (Gaza Strip and West Bank)',NULL,'Gaza City (Gaza Strip) and Ramallah (West Bank)','Disputed Territory',NULL,'Administrated by Israel','ILS','Shekel',970,'.ps','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(198,'PT','Portugal','Portuguese Republic','Lisbon','Independent State',NULL,NULL,'EUR','Euro',351,'.pt','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(199,'PW','Palau','Republic of Palau','Melekeok','Independent State',NULL,NULL,'USD','Dollar',680,'.pw','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(200,'PY','Paraguay','Republic of Paraguay','Asuncion','Independent State',NULL,NULL,'PYG','Guarani',595,'.py','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(201,'QA','Qatar','State of Qatar','Doha','Independent State',NULL,NULL,'QAR','Rial',974,'.qa','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(202,'RE','Reunion','Overseas Region of Reunion','Saint-Denis','Proto Dependency','Overseas Region','France','EUR','Euro',262,'.re','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(203,'RO','Romania',NULL,'Bucharest','Independent State',NULL,NULL,'RON','Leu',40,'.ro','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(204,'RS','Serbia','Republic of Serbia','Belgrade','Independent State',NULL,NULL,'RSD','Dinar',381,'.rs','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(205,'RU','Russia','Russian Federation','Moscow','Independent State',NULL,NULL,'RUB','Ruble',7,'.ru','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(206,'RW','Rwanda','Republic of Rwanda','Kigali','Independent State',NULL,NULL,'RWF','Franc',250,'.rw','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(207,'SA','Saudi Arabia','Kingdom of Saudi Arabia','Riyadh','Independent State',NULL,NULL,'SAR','Rial',966,'.sa','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(208,'SB','Solomon Islands',NULL,'Honiara','Independent State',NULL,NULL,'SBD','Dollar',677,'.sb','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(209,'SC','Seychelles','Republic of Seychelles','Victoria','Independent State',NULL,NULL,'SCR','Rupee',248,'.sc','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(210,'SD','Sudan','Republic of the Sudan','Khartoum','Independent State',NULL,NULL,'SDG','Pound',249,'.sd','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(211,'SE','Sweden','Kingdom of Sweden','Stockholm','Independent State',NULL,NULL,'SEK','Kronoa',46,'.se','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(212,'SG','Singapore','Republic of Singapore','Singapore','Independent State',NULL,NULL,'SGD','Dollar',65,'.sg','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(213,'SH','Saint Helena',NULL,'Jamestown','Dependency','Overseas Territory','United Kingdom','SHP','Pound',290,'.sh','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(214,'SI','Slovenia','Republic of Slovenia','Ljubljana','Independent State',NULL,NULL,'EUR','Euro',386,'.si','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(215,'SJ','Svalbard',NULL,'Longyearbyen','Proto Dependency',NULL,'Norway','NOK','Krone',47,'.sj','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(216,'SK','Slovakia','Slovak Republic','Bratislava','Independent State',NULL,NULL,'SKK','Koruna',421,'.sk','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(217,'SL','Sierra Leone','Republic of Sierra Leone','Freetown','Independent State',NULL,NULL,'SLL','Leone',232,'.sl','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(218,'SM','San Marino','Republic of San Marino','San Marino','Independent State',NULL,NULL,'EUR','Euro',378,'.sm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(219,'SN','Senegal','Republic of Senegal','Dakar','Independent State',NULL,NULL,'XOF','Franc',221,'.sn','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(220,'SO','Somalia',NULL,'Mogadishu','Independent State',NULL,NULL,'SOS','Shilling',252,'.so','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(221,'SO1','Somaliland','Republic of Somaliland','Hargeisa','Proto Independent State',NULL,NULL,NULL,'Shilling',252,'.so','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(222,'SR','Suriname','Republic of Suriname','Paramaribo','Independent State',NULL,NULL,'SRD','Dollar',597,'.sr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(223,'ST','Sao Tome and Principe','Democratic Republic of Sao Tome and Principe','Sao Tome','Independent State',NULL,NULL,'STD','Dobra',239,'.st','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(224,'SV','El Salvador','Republic of El Salvador','San Salvador','Independent State',NULL,NULL,'USD','Dollar',503,'.sv','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(225,'SY','Syria','Syrian Arab Republic','Damascus','Independent State',NULL,NULL,'SYP','Pound',963,'.sy','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(226,'SZ','Swaziland','Kingdom of Swaziland','Mbabane (administrative) and Lobamba (legislative)','Independent State',NULL,NULL,'SZL','Lilangeni',268,'.sz','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(227,'TA','Tristan da Cunha',NULL,'Edinburgh','Proto Dependency','Dependency of Saint Helena','United Kingdom','SHP','Pound',290,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(228,'TC','Turks and Caicos Islands',NULL,'Grand Turk','Dependency','Overseas Territory','United Kingdom','USD','Dollar',649,'.tc','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(229,'TD','Chad','Republic of Chad','N\'Djamena','Independent State',NULL,NULL,'XAF','Franc',235,'.td','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(230,'TF','French Southern and Antarctic Lands','Territory of the French Southern and Antarctic Lands','Martin-de-ViviÃ¨s','Dependency','Overseas Territory','France',NULL,NULL,NULL,'.tf','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(231,'TG','Togo','Togolese Republic','Lome','Independent State',NULL,NULL,'XOF','Franc',228,'.tg','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(232,'TH','Thailand','Kingdom of Thailand','Bangkok','Independent State',NULL,NULL,'THB','Baht',66,'.th','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(233,'TJ','Tajikistan','Republic of Tajikistan','Dushanbe','Independent State',NULL,NULL,'TJS','Somoni',992,'.tj','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(234,'TK','Tokelau',NULL,NULL,'Dependency','Territory','New Zealand','NZD','Dollar',690,'.tk','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(235,'TL','Timor-Leste (East Timor)','Democratic Republic of Timor-Leste','Dili','Independent State',NULL,NULL,'USD','Dollar',670,'.tp','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(236,'TM','Turkmenistan',NULL,'Ashgabat','Independent State',NULL,NULL,'TMM','Manat',993,'.tm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(237,'TN','Tunisia','Tunisian Republic','Tunis','Independent State',NULL,NULL,'TND','Dinar',216,'.tn','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(238,'TO','Tonga','Kingdom of Tonga','Nuku\'alofa','Independent State',NULL,NULL,'TOP','Pa\'anga',676,'.to','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(239,'TR','Turkey','Republic of Turkey','Ankara','Independent State',NULL,NULL,'TRY','Lira',90,'.tr','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(240,'TT','Trinidad and Tobago','Republic of Trinidad and Tobago','Port-of-Spain','Independent State',NULL,NULL,'TTD','Dollar',868,'.tt','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(241,'TV','Tuvalu',NULL,'Funafuti','Independent State',NULL,NULL,'AUD','Dollar',688,'.tv','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(242,'TW','China',' Republic of (Taiwan)','Republic of China','Taipei','Proto Independent State',NULL,NULL,'TWD',NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(243,'TZ','Tanzania','United Republic of Tanzania','Dar es Salaam (administrative/judical) and Dodoma (legislative)','Independent State',NULL,NULL,'TZS','Shilling',255,'.tz','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(244,'UA','Ukraine',NULL,'Kiev','Independent State',NULL,NULL,'UAH','Hryvnia',380,'.ua','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(245,'UG','Uganda','Republic of Uganda','Kampala','Independent State',NULL,NULL,'UGX','Shilling',256,'.ug','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(246,'UM1','Baker Island',NULL,NULL,'Dependency','Territory','United States',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(247,'UM2','Howland Island',NULL,NULL,'Dependency','Territory','United States',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(248,'UM3','Jarvis Island',NULL,NULL,'Dependency','Territory','United States',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(249,'UM4','Johnston Atoll',NULL,NULL,'Dependency','Territory','United States',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(250,'UM5','Kingman Reef',NULL,NULL,'Dependency','Territory','United States',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(251,'UM6','Midway Islands',NULL,NULL,'Dependency','Territory','United States',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(252,'UM7','Navassa Island',NULL,NULL,'Dependency','Territory','United States',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(253,'UM8','Palmyra Atoll',NULL,NULL,'Dependency','Territory','United States',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(254,'UM9','Wake Island',NULL,NULL,'Dependency','Territory','United States',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(255,'US','United States','United States of America','Washington','Independent State',NULL,NULL,'USD','Dollar',1,'.us','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(256,'UY','Uruguay','Oriental Republic of Uruguay','Montevideo','Independent State',NULL,NULL,'UYU','Peso',598,'.uy','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(257,'UZ','Uzbekistan','Republic of Uzbekistan','Tashkent','Independent State',NULL,NULL,'UZS','Som',998,'.uz','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(258,'VA','Vatican City','State of the Vatican City','Vatican City','Independent State',NULL,NULL,'EUR','Euro',379,'.va','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(259,'VC','Saint Vincent and the Grenadines',NULL,'Kingstown','Independent State',NULL,NULL,'XCD','Dollar',784,'.vc','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(260,'VE','Venezuela','Bolivarian Republic of Venezuela','Caracas','Independent State',NULL,NULL,'VEB','Bolivar',58,'.ve','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(261,'VG','British Virgin Islands',NULL,'Road Town','Dependency','Overseas Territory','United Kingdom','USD','Dollar',284,'.vg','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(262,'VI','U.S. Virgin Islands','United States Virgin Islands','Charlotte Amalie','Dependency','Territory','United States','USD','Dollar',340,'.vi','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(263,'VN','Vietnam','Socialist Republic of Vietnam','Hanoi','Independent State',NULL,NULL,'VND','Dong',84,'.vn','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(264,'VU','Vanuatu','Republic of Vanuatu','Port-Vila','Independent State',NULL,NULL,'VUV','Vatu',678,'.vu','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(265,'WF','Wallis and Futuna','Collectivity of the Wallis and Futuna Islands','Mata\'utu','Dependency','Overseas Collectivity','France','XPF','Franc',681,'.wf','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(266,'WS','Samoa','Independent State of Samoa','Apia','Independent State',NULL,NULL,'WST','Tala',685,'.ws','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(267,'YE','Yemen','Republic of Yemen','Sanaa','Independent State',NULL,NULL,'YER','Rial',967,'.ye','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(268,'YT','Mayotte','Departmental Collectivity of Mayotte','Mamoudzou','Dependency','Overseas Collectivity','France','EUR','Euro',262,'.yt','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(269,'ZA','South Africa','Republic of South Africa','Pretoria (administrative)',' Cape Town (legislative)',' and Bloemfontein (judical)','Independent State',NULL,NULL,NULL,'Ran','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(270,'ZM','Zambia','Republic of Zambia','Lusaka','Independent State',NULL,NULL,'ZMK','Kwacha',260,'.zm','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(271,'ZW','Zimbabwe','Republic of Zimbabwe','Harare','Independent State',NULL,NULL,'ZWD','Dollar',263,'.zw','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `countrys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countrys_hs`
--

DROP TABLE IF EXISTS `countrys_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countrys_hs` (
  `id` int(11) unsigned NOT NULL,
  `country_id` varchar(3) NOT NULL,
  `common_name` varchar(255) NOT NULL,
  `formal_name` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `sovereignty` varchar(255) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `telephone_code` int(4) DEFAULT NULL,
  `iana_country_code` varchar(3) DEFAULT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countrys_hs`
--

LOCK TABLES `countrys_hs` WRITE;
/*!40000 ALTER TABLE `countrys_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `countrys_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countrys_is`
--

DROP TABLE IF EXISTS `countrys_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countrys_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` varchar(3) DEFAULT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  `formal_name` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sub_type` varchar(255) DEFAULT NULL,
  `sovereignty` varchar(255) DEFAULT NULL,
  `currency_code` varchar(3) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `telephone_code` int(4) DEFAULT NULL,
  `iana_country_code` varchar(3) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countrys_is`
--

LOCK TABLES `countrys_is` WRITE;
/*!40000 ALTER TABLE `countrys_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `countrys_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csvs`
--

DROP TABLE IF EXISTS `csvs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csvs` (
  `id` int(11) unsigned NOT NULL,
  `csv_id` varchar(30) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `csv` longtext,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_csv_id` (`csv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csvs`
--

LOCK TABLES `csvs` WRITE;
/*!40000 ALTER TABLE `csvs` DISABLE KEYS */;
/*!40000 ALTER TABLE `csvs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csvs_hs`
--

DROP TABLE IF EXISTS `csvs_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csvs_hs` (
  `id` int(11) unsigned NOT NULL,
  `csv_id` varchar(30) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `csv` longtext,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csvs_hs`
--

LOCK TABLES `csvs_hs` WRITE;
/*!40000 ALTER TABLE `csvs_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `csvs_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csvs_is`
--

DROP TABLE IF EXISTS `csvs_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csvs_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `csv_id` varchar(30) DEFAULT NULL,
  `controller` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `csv` longtext,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_csv_id` (`csv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csvs_is`
--

LOCK TABLES `csvs_is` WRITE;
/*!40000 ALTER TABLE `csvs_is` DISABLE KEYS */;
INSERT INTO `csvs_is` VALUES (6,'CSV20120924163145773101','product','default','/tmp/CSV20120924163145773101.csv','ADMIN','2012-09-24 16:31:45','ADMIN','2012-09-24 16:31:45','HLD',0);
/*!40000 ALTER TABLE `csvs_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) unsigned NOT NULL,
  `customer_id` varchar(8) NOT NULL,
  `customer_type` enum('INDIVIDUAL','COMPANY') NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `region_id` int(11) unsigned NOT NULL,
  `country_id` varchar(2) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('M','F','N') NOT NULL,
  `phone_home` varchar(15) DEFAULT NULL,
  `phone_work` varchar(15) DEFAULT NULL,
  `phone_mobile1` varchar(15) NOT NULL,
  `phone_mobile2` varchar(15) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `driver_permit` varchar(10) NOT NULL,
  `identification_card` varchar(12) DEFAULT NULL,
  `passport` varchar(10) DEFAULT NULL,
  `branch_id` varchar(50) NOT NULL,
  `referrer_id` varchar(8) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2001,'ALBA0001','INDIVIDUAL','Andy','Albert','#62 Skylark Crescent','Bon Air Gardens','Arouca',503,'TT','1968-11-20','M','6467382','0','7871638','3642992','sarah24ss@yahoo.com','560149','','','HEAD.OFFICE','','','ADMIN','2011-06-02 11:22:39','ADMIN','2011-06-02 11:22:39','LIVE',1),(2002,'DEVA0001','INDIVIDUAL','Allison','Devonshire-Stoute','5 Tumpuna Gardens','Tumpuna Road','Arima',502,'TT','1964-01-08','F','6459932','0','7596778','3101651','allisondst@hotmail.com','388278','','','HEAD.OFFICE','','','ADMIN','2011-06-03 09:02:23','ADMIN','2011-06-03 09:02:23','LIVE',1),(2004,'INSC0001','COMPANY','Co.','Instrument Technologies Ltd.','133 Arena Road','','Freeport',534,'TT','1971-02-08','N','0','6736965','6802486','7406404','anil.joseph@instrumenttechnologies.com','565684B','','','HEAD.OFFICE','','','ADMIN','2011-06-03 14:55:55','ADMIN','2011-06-03 14:55:55','LIVE',1),(2007,'JARH0001','INDIVIDUAL','Haman','Jaroo','235 Stone Road','','Piparo',623,'TT','1986-06-11','M','0','0','7702785','3936120','haman_jaroo@live.com','854066F','','','HEAD.OFFICE','','','ADMIN','2011-06-03 15:18:57','ADMIN','2011-06-03 15:18:57','LIVE',1),(2008,'NANE0001','INDIVIDUAL','Elizabeth','Nandlal','#13 First Caledonia','','Laventille',547,'TT','1977-03-27','F','0','0','7623101','7607232','fonrose2@hotmail.com','939827F','','','HEAD.OFFICE','','','ADMIN','2011-06-03 15:54:01','ADMIN','2011-06-03 15:54:01','LIVE',1),(2009,'ALLS0001','INDIVIDUAL','Shervon','Alleyne','#4 First Drive','Simeon Road','Petit Valley',564,'TT','1986-07-08','M','0','0','7274480','4742294','sheronalleyne@yahoo.com','925882F','','','HEAD.OFFICE','','','ADMIN','2011-06-03 16:04:10','ADMIN','2011-06-03 16:04:10','LIVE',1),(2010,'MOHF0001','INDIVIDUAL','Fazal','Mohammed','#83 Arima Old Road','','Arouca',503,'TT','1967-09-28','M','0','0','6818762','6809611','cyrustech@hotmail.com','464397','','','HEAD.OFFICE','RAYY0001','','ADMIN','2011-06-03 16:32:24','ADMIN','2011-06-03 16:32:24','LIVE',1),(2011,'JOHS0001','INDIVIDUAL','Shurland','John','33 Silk Cotton Cir.','Homeland Gardens','Cunupia',525,'TT','1969-10-23','M','0','0','7699927','7697633','sj12523@hotmail.com','654731F','','','HEAD.OFFICE','','','ADMIN','2011-06-03 16:45:23','ADMIN','2011-06-03 16:45:23','LIVE',1),(2012,'JAGF0001','INDIVIDUAL','Francis','Jaggernauth','Lp 3a Dyette Trace','','Cunupia',525,'TT','1960-10-03','M','0','0','7514048','7817921','francisjaggernauth@hotmail.com','369251F','','','HEAD.OFFICE','','','ADMIN','2011-06-03 16:52:50','ADMIN','2011-06-03 16:52:50','LIVE',1),(2013,'ATEC0001','COMPANY','Co.','A-Tech Products & Services Ltd.','#45 Petite Cafe','','Princes Town',573,'TT','0000-00-00','N','0','0','3545509','3545512','info@atechtt.com','569997','','','HEAD.OFFICE','','DAVID RAGHUNANAN\'S INFO WAS GIVEN','ADMIN','2012-05-28 12:17:07','ADMIN','2012-05-28 12:17:07','LIVE',1),(2014,'WATC0001','INDIVIDUAL','Candice','Watson','#8 Blanc Street','Bourg Multatresse','Lower Santa Cruz',583,'TT','1986-07-30','F','0','0','7372427','7242686','candice.watson@bp.com','944827F','','','HEAD.OFFICE','','','ADMIN','2011-06-04 08:41:26','ADMIN','2011-06-04 08:41:26','LIVE',1),(2015,'GONJ0001','INDIVIDUAL','Jason','Gonzales','#110 Paris Blv.','Success','Laventille',547,'TT','1976-10-06','M','0','0','7324518','2996740','jason.gonzalez@78gmail.com','696938E','','','HEAD.OFFICE','','','ADMIN','2011-06-04 12:02:38','ADMIN','2011-06-04 12:02:38','LIVE',1),(2016,'SHAC0001','COMPANY','Co.','Shashan General Contractors & Company Ltd.','#417 Southern Main Road','','Rousillac',577,'TT','1980-05-15','N','6487452','0','7816337','3975471','shaneseerajsingh@yahoo.com','673960F','','','HEAD.OFFICE','','','ADMIN','2011-06-07 09:46:57','ADMIN','2011-06-07 09:46:58','LIVE',1),(2017,'WALV0001','INDIVIDUAL','Victor','Waldron','Lp2 Edward Street','Off Bhagallo Street Enterprise','Chaguanas',515,'TT','1941-03-05','M','0','0','3146086','3874998','','190234B','','','HEAD.OFFICE','ALEA0002','','ADMIN','2011-06-06 14:22:21','ADMIN','2011-06-06 14:22:22','LIVE',1),(2018,'RAMT0001','INDIVIDUAL','Taruna','Rampersad','Lp#171b Gunness Trace','','Cummuto',524,'TT','1968-06-09','F','6401751','0','6865233','7061015','runarampersad@gmail.com','628163B','','','HEAD.OFFICE','','','ADMIN','2011-06-06 15:37:49','ADMIN','2011-06-06 15:37:49','LIVE',1),(2020,'BISA0001','INDIVIDUAL','Angad ','Bisram','109 Cemetery Street','Munroe Road','Cunupia',525,'TT','1956-01-23','M','0','0','3803896','3673492','','230347B','','','HEAD.OFFICE','','','ADMIN','2011-06-07 11:33:36','ADMIN','2011-06-07 11:33:36','LIVE',1),(2021,'PERD0002','INDIVIDUAL','Dhanraj','Persad','664 Endeavour Road','','Chaguanas',515,'TT','1983-04-22','M','6726656','0','7516524','3286393','dpersad20112@gmail.com','757949B','','','HEAD.OFFICE','','','ADMIN','2011-06-07 12:30:28','ADMIN','2011-06-07 12:30:28','LIVE',1),(2022,'GORS0001','INDIVIDUAL','Sherilann','Gormandy','7 Highland Drive','Vista Heights','Tacarigua',597,'TT','1966-08-09','F','0','0','7801112','0','','591412E','','','HEAD.OFFICE','','','ADMIN','2011-06-08 15:26:16','ADMIN','2011-06-08 15:26:16','LIVE',1),(2023,'PHIC0001','INDIVIDUAL','Charlene','Phillip','#12 Third Street','','Barataria',504,'TT','1973-10-12','F','0','0','7201181','0','charlenejadinphillip@hotmail.com','598705F','','','HEAD.OFFICE','','','ADMIN','2011-06-09 16:17:02','ADMIN','2011-06-09 16:17:02','LIVE',1),(2024,'MURD0001','INDIVIDUAL','Denniesia','Murray','2 First Street East','Rowland Avenue','Trincity',599,'TT','1982-06-30','F','0','0','4981200','7871106','dmmaurisia@gmail.com','724611E','','','HEAD.OFFICE','','','ADMIN','2011-09-05 10:21:46','ADMIN','2011-09-05 10:21:46','LIVE',1),(2025,'KOND0001','INDIVIDUAL','David','Kong','61 Eastern Main Road','','San Juan',581,'TT','1961-12-02','M','0','0','4888444','0','','389241F','','','HEAD.OFFICE','','','ADMIN','2011-06-10 12:32:21','ADMIN','2011-06-10 12:32:21','LIVE',1),(2027,'KINK0001','INDIVIDUAL','Kathlena','King','#27 Robin Crescent','Edinburgh 500','Chaguanas',515,'TT','1989-03-31','F','0','0','7965056','7035784','kathlenaking@yahoo.com','894984F','','','HEAD.OFFICE','','','ADMIN','2011-06-11 08:23:11','ADMIN','2011-06-11 08:23:11','LIVE',1),(2028,'MARK0001','INDIVIDUAL','Kauicieyal','Maraj','St. Clair Road','','Arouca',503,'TT','1974-03-18','M','0','0','6889011','4977942','','601181','','','HEAD.OFFICE','','','ADMIN','2011-06-11 08:43:52','ADMIN','2011-06-11 08:43:53','LIVE',1),(2029,'ALEB0001','INDIVIDUAL','Brent','Evans','#5 4th Street East','Dinsley Avenue','Trincity',599,'TT','1986-06-14','M','0','0','7329164','4715373','brentevans86@gmail.com','869565E','','','HEAD.OFFICE','','','ADMIN','2011-06-11 09:33:22','ADMIN','2011-06-11 09:33:22','LIVE',1),(2031,'HEPN0001','INDIVIDUAL','Nigel','Hepburn','15 Dahlia Crescent','La Horquetta','Arima',502,'TT','1969-06-12','M','0','0','7538579','0','michael.hepburn364@gmail.com','927024','19690612040','','HEAD.OFFICE','','','ADMIN','2011-06-14 13:07:17','ADMIN','2011-06-14 13:07:17','LIVE',1),(2032,'PARN0001','INDIVIDUAL','Neil','Parris','#1 William Lane','','San Juan',581,'TT','1970-05-09','M','0','0','6855169','0','lovejahman@hotmail.com','718063E','','','HEAD.OFFICE','','','ADMIN','2011-06-14 13:49:16','ADMIN','2011-06-14 13:49:16','LIVE',1),(2033,'MYEK0001','INDIVIDUAL','Kerwin','Myers','Bldg 4 Apt13','Pioneer Drive','Mt.Hope',517,'TT','1972-09-19','M','0','0','7671296','7487435','kerwyn27@live.com','586014F','','','HEAD.OFFICE','','','ADMIN','2011-06-15 10:17:44','ADMIN','2011-06-15 10:17:44','LIVE',1),(2034,'BELR0001','INDIVIDUAL','Ryan ','Belle','#10 Second Trace','Maingot Road','Tunapuna',600,'TT','1984-02-13','M','0','0','3300191','0','','795844','','','HEAD.OFFICE','','','ADMIN','2011-06-15 10:58:40','ADMIN','2011-06-15 10:58:40','LIVE',1),(2035,'JUBC0001','INDIVIDUAL','Clement','Jubrajsingh','69 Mountain View','Maracas Valley','St.Joseph',593,'TT','1950-11-23','M','0','0','7996938','7792559','','184605E','','','HEAD.OFFICE','','','ADMIN','2011-06-15 12:53:54','ADMIN','2011-06-15 12:53:54','LIVE',1),(2036,'RAGS0001','INDIVIDUAL','Siddiqua','Ragbirsingh','126 Edinburgh Village','','Chaguanas',515,'TT','1981-10-14','F','0','0','7353624','7922451','sragbirsingh@hotmail.com','733739B','','','HEAD.OFFICE','','','ADMIN','2011-07-13 08:41:19','ADMIN','2011-07-13 08:41:20','LIVE',1),(2037,'MANA0001','INDIVIDUAL','Aaron','Manswell','58 Hollis Street','Petit Bourg','San Juan',581,'TT','1979-11-28','M','0','0','7812418','3489027','aaron.manswell@gmail.com','917742','','','HEAD.OFFICE','','','ADMIN','2011-06-17 10:25:00','ADMIN','2011-06-17 10:25:00','LIVE',1),(2038,'ROOD0002','INDIVIDUAL','Devnath','Roopnarine','62 Boundary Ext. Road','Aranjuez','San Juan',581,'TT','1955-05-09','M','0','0','7405111','3961384','devnath9@hotmail.com','221440E','','','HEAD.OFFICE','','','ADMIN','2011-06-18 09:15:31','ADMIN','2011-06-18 09:15:31','LIVE',1),(2039,'CRAR0001','INDIVIDUAL','Royston','Craigg','Lot 4 Crown Street','','Tacarigua',597,'TT','1967-10-08','M','0','0','7511738','3853007','topping@tstt.net.tt','509284F','','','HEAD.OFFICE','','','ADMIN','2011-06-21 09:28:54','ADMIN','2011-06-21 09:28:54','LIVE',1),(2043,'JAMR0002','INDIVIDUAL','Rondon','James','114 Seales Avenue','Success Village','Laventille',547,'TT','1984-08-12','M','0','0','7104649','7853755','rondonpj@hotmail.com','837986E','','','HEAD.OFFICE','','','ADMIN','2011-06-28 09:44:29','ADMIN','2011-06-28 09:44:29','LIVE',1),(2045,'PITM0001','INDIVIDUAL','Marcus','Pitt','#3 Harris Street','','Petit Bourg',581,'TT','1980-09-08','M','0','0','7431551','3076234','markyp28@hotmail.com','756268F','','','HEAD.OFFICE','','','ADMIN','2011-06-29 14:58:49','ADMIN','2011-06-29 14:58:49','LIVE',1),(2046,'MAHB0003','INDIVIDUAL','Balkaran','Maharaj','#54 Maloney Street','Petit Bourg','San Juan',581,'TT','1962-11-06','M','0','0','7128878','7608850','balmaharj62@gmail.com','351287F','','','HEAD.OFFICE','','','ADMIN','2011-06-29 16:58:09','ADMIN','2011-06-29 16:58:09','LIVE',1),(2047,'THOS0001','INDIVIDUAL','Shasteen','Thomas-Charles','#27rajpaul Street','Enterprise','Chaguanas',515,'TT','1980-11-20','F','0','0','7172563','4742063','alvoncharles@yahoo.com','860894B','','','HEAD.OFFICE','','','ADMIN','2011-06-30 09:13:02','ADMIN','2011-06-30 09:13:02','LIVE',1),(2048,'SUPB0001','INDIVIDUAL','Burt ','Superville','33 Mango Avenue','Santa Rosa Heights','Arima',502,'TT','1974-01-18','M','6645919','0','3175503','0','burtsuperville20@yahoo.co.uk','688480','','','HEAD.OFFICE','','','ADMIN','2011-06-30 10:14:00','ADMIN','2011-06-30 10:14:00','LIVE',1),(2049,'MOHF0002','INDIVIDUAL','Fazeel','Mohammed','222 St.Charles Village','','Princes Town',573,'TT','1969-07-29','M','6558703','0','7729380','3228404','','554120F','','','HEAD.OFFICE','','','ADMIN','2011-07-01 09:31:32','ADMIN','2011-07-01 09:31:32','LIVE',1),(2050,'CHAC0001','INDIVIDUAL','Collin','Charles','Lp 51 Blue Basin Road','','Diego Martin',529,'TT','1982-09-18','M','0','0','2900515','3883897','ccharles@trinihotspot.com','766037E','','','HEAD.OFFICE','','','ADMIN','2011-07-01 10:00:17','ADMIN','2011-07-01 10:00:17','LIVE',1),(2051,'ALIN0001','INDIVIDUAL','Nikolaiski ','Ali','Lp51 Aldana Br Street','','Princes Town',573,'TT','1983-08-11','M','0','0','2906811','2906813','nikolaiski@gmail.com','804748F','','','HEAD.OFFICE','','','ADMIN','2011-07-01 11:19:11','ADMIN','2011-07-01 11:19:11','LIVE',1),(2052,'RAMR0004','INDIVIDUAL','Rekha','Rampersad','#56 Polo Grond Road','Prescpis Village ','Couva',521,'TT','1988-02-18','M','0','0','7333472','2971723','nik_trinichick@hotmail.com','875989B','','','HEAD.OFFICE','','','ADMIN','2011-07-01 13:36:47','ADMIN','2011-07-01 13:36:47','LIVE',1),(2053,'SEER0001','INDIVIDUAL','Rajkumar','Seecharan','Lp#92 Chin Chin Road','','Cunupia',525,'TT','1963-06-21','M','0','6932420','6806212','4626581','trirata@yahoo.com','391813','','','HEAD.OFFICE','','','ADMIN','2011-07-02 09:26:00','ADMIN','2011-07-02 09:26:00','LIVE',1),(2054,'GORG0001','INDIVIDUAL','Gary','Gordon','#16 Fifth Street East','De Lamarre Avenue','Trincity',599,'TT','1981-09-09','M','0','0','7490112','4882144','garygordon81@hotmail.com','712851E','','','HEAD.OFFICE','','','ADMIN','2011-07-04 12:21:47','ADMIN','2011-07-04 12:21:47','LIVE',1),(2055,'DEOP0001','INDIVIDUAL','Pooran','Deokaran','110 Cemetary Street','Cunupia','Chaguanas',515,'TT','1977-02-07','M','6715295','0','7478758','7573121','','648475F','','','HEAD.OFFICE','','','ADMIN','2011-07-06 10:41:10','ADMIN','2011-07-06 10:41:10','LIVE',1),(2056,'SENC0001','INDIVIDUAL','Cedric','Senhouse','#2 St. Vincent Street','','Arouca',503,'TT','1968-07-24','M','0','6758845','7566214','0','matrixpronters@gmail.com','512293','','','HEAD.OFFICE','','','ADMIN','2011-07-07 13:49:01','ADMIN','2011-07-07 13:49:01','LIVE',1),(2060,'KHAR0001','INDIVIDUAL','Reshaard','Khan','10 Rosales Street','Orange Valley','Couva',521,'TT','1983-07-15','M','0','0','7807777','7687529','reshardkhan@hotmail.com','735733B','','','HEAD.OFFICE','ALIJ0001','','ADMIN','2011-07-11 11:18:36','ADMIN','2011-07-11 11:18:36','LIVE',1),(2063,'MOSL0001','INDIVIDUAL','Latchman','Moses','47 Windy Hill','Bon Air North','Arouca',503,'TT','1985-09-04','M','0','0','7428286','3804388','','868424F','','','HEAD.OFFICE','','','ADMIN','2011-07-11 14:23:40','ADMIN','2011-07-11 14:23:40','LIVE',1),(2064,'CASJ0001','INDIVIDUAL','Joel ','Castillo','Lp184 Castillo Trace','Maracas Valley','St.Joseph',593,'TT','1979-09-23','M','0','0','7624279','3492739','','811781F','','','HEAD.OFFICE','','','ADMIN','2011-07-11 16:40:22','ADMIN','2011-07-11 16:40:22','LIVE',1),(2065,'RODJ0001','INDIVIDUAL','John ','Rodriguez','70 Saddle Road','','Maraval',552,'TT','1945-02-09','M','6829389','0','4901824','2915672','','173389E','','','HEAD.OFFICE','','','ADMIN','2011-07-11 17:23:31','ADMIN','2011-07-11 17:23:31','LIVE',1),(2066,'RAMM0002','INDIVIDUAL','Musa','Ramjohn','3 La Resource Road','N','D\'Abadie',527,'TT','1961-01-04','M','0','0','6817952','3286936','satty@tstt.net.tt','315181','','','HEAD.OFFICE','RAGK0001','','ADMIN','2011-07-12 11:53:40','ADMIN','2011-07-12 11:53:40','LIVE',1),(2067,'MAHA0001','INDIVIDUAL','Alana ','Mahase','#2 Grant Street Extension','Baeucarro','Carapichaima',510,'TT','1981-07-07','F','0','0','7311565','3398441','mahasealana@hotmail.com','702533F','','','HEAD.OFFICE','','','ADMIN','2011-07-13 08:46:46','ADMIN','2011-07-13 08:46:46','LIVE',1),(2068,'SEWD0001','INDIVIDUAL','Deetee','Sewalia','Cor. Harrinauth & Braithwaite Streets','El Dorado','Tacarigua',597,'TT','1972-05-07','F','0','0','4639280','0','','711069E','','','HEAD.OFFICE','','','ADMIN','2011-07-13 11:32:44','ADMIN','2011-07-13 11:32:44','LIVE',1),(2069,'HAYS0001','INDIVIDUAL','Sherine','Haynes','33 Caparo Valley Road','Todd\'S Road','Chaguanas',515,'TT','1984-09-16','F','0','0','4905535','2903226','ksshaynes@yahoo.com','771167B','','','HEAD.OFFICE','','','ADMIN','2011-07-13 15:55:59','ADMIN','2011-07-13 15:55:59','LIVE',1),(2070,'OWEA0001','INDIVIDUAL','Albert','Owen','Lp#69 Acono Road','Maracas Valley','St.Joseph',593,'TT','1960-09-04','M','6456181','0','7069030','3763235','','306476','','','HEAD.OFFICE','','','ADMIN','2011-07-14 10:08:32','ADMIN','2011-07-14 10:08:32','LIVE',1),(2071,'WILS0001','INDIVIDUAL','Sean','Williams','10 Radoo Street','','El Dorado',531,'TT','1970-09-17','M','0','0','7506963','3768232','seanw94@live.com','591927','','','HEAD.OFFICE','','','ADMIN','2011-07-14 11:48:11','ADMIN','2011-07-14 11:48:11','LIVE',1),(2072,'JENC0001','COMPANY','Co.','Jenexcon','38 John Street','','Chaguanas',515,'TT','1974-06-05','N','0','0','3101092','3101089','jenjexcon@hotmail.com','856116F','','','HEAD.OFFICE','','','ADMIN','2011-08-03 12:46:39','ADMIN','2011-08-03 12:46:39','LIVE',1),(2074,'KOOR0001','INDIVIDUAL','Ricky ','Koonkoon','Lp39 Sooman Avenue','Malabar Road','Arima',502,'TT','1975-01-20','M','6674800','0','7757500','7182979','mankoon_2000@yahoo.com','649590','','','HEAD.OFFICE','','','ADMIN','2011-07-15 10:56:11','ADMIN','2011-07-15 10:56:11','LIVE',1),(2075,'ALLA0001','INDIVIDUAL','Anthony','Alladin','#53 Santa Cruz','Old Road','San Juan',581,'TT','1988-09-24','M','0','0','7212305','7221532','alladin1988@live.com','846099E','','','HEAD.OFFICE','','','ADMIN','2011-07-16 08:22:46','ADMIN','2011-07-16 08:22:46','LIVE',1),(2076,'RAPJ0001','INDIVIDUAL','Jennilyn','Raphael','28 Belle Vue','Long Circular Road','St.James',592,'TT','1953-12-23','M','0','0','7160169','7246984','jenlyn@tstt.net.tt','227836E','','','HEAD.OFFICE','','','ADMIN','2011-07-16 09:14:00','ADMIN','2011-07-16 09:14:00','LIVE',1),(2077,'SANM0001','INDIVIDUAL','Michael','Sandy','Cor. Cicada Andrew Streets','','Diego Martin',529,'TT','1982-05-14','M','6261797','0','3372042','7673614','awwal2011@gmail.com','762813E','','','HEAD.OFFICE','','','ADMIN','2012-06-18 09:29:30','ADMIN','2012-06-18 09:29:30','LIVE',1),(2078,'VIDM0001','INDIVIDUAL','Michael','Vidale','Lot#19 Cliff Bertrand Pl.','Phase Iv-2, Malabar','Arima',502,'TT','1958-02-01','M','0','0','7707139','3525932','','289781','','','HEAD.OFFICE','','','ADMIN','2011-07-19 09:27:04','ADMIN','2011-07-19 09:27:04','LIVE',1),(2079,'KHAR0002','INDIVIDUAL','Richies','Khan','#34 New Cescent Road','','Carapo',515,'TT','1989-10-07','M','0','0','7226809','3363462','','878818B','','','HEAD.OFFICE','','','ADMIN','2011-07-19 11:02:22','ADMIN','2011-07-19 11:02:22','LIVE',1),(2080,'PHIG0001','INDIVIDUAL','Gregory','Philips','Lp#9 Golden Grove Road','','Arouca',503,'TT','1953-05-09','M','0','0','7990435','0','gregory_philips@yahoo.com','196496','','','HEAD.OFFICE','','','ADMIN','2011-07-20 09:22:09','ADMIN','2011-07-20 09:22:10','LIVE',1),(2081,'NIRL0001','INDIVIDUAL','Laurence','Nirgoon','Lp6 Mission Road','','Tacarigua',597,'TT','1976-03-30','M','0','0','7478405','7824312','jlolandon@hotmail.com','685892','','','HEAD.OFFICE','','','ADMIN','2011-07-20 10:36:50','ADMIN','2011-07-20 10:36:50','LIVE',1),(2082,'NARR0001','INDIVIDUAL','Roger','Narine','Mondesir Delhi Road','','Fyzabad',536,'TT','1968-11-08','M','0','0','7017572','3269959','rogernarine41@yahoo.com','537552F','','','HEAD.OFFICE','','','ADMIN','2011-07-20 13:47:05','ADMIN','2011-07-20 13:47:06','LIVE',1),(2083,'SWAS0001','INDIVIDUAL','Simon','Swann','8 Flambouyant Ave','Paxvale','Santa Cruz',583,'TT','1964-08-01','M','0','0','2907401','2907426','completeinstallations@hotmail.com','402073E','19640801052','','HEAD.OFFICE','WARI0001','','ADMIN','2011-07-20 14:10:32','ADMIN','2011-07-20 14:10:32','LIVE',1),(2084,'LUTE0001','INDIVIDUAL','Elizabeth','Lutchman','Ep#A7 Mohipat Street','','St.Helena',566,'TT','1973-08-24','M','0','0','7825513','7901123','','857380E','','','HEAD.OFFICE','','','ADMIN','2011-07-21 09:07:55','ADMIN','2011-07-21 09:07:55','LIVE',1),(2086,'BENJ0001','INDIVIDUAL','Jeanette','Benjamin','#27mistey Crescent','Sunrise Park','Trincity',599,'TT','1981-02-12','M','0','0','4696401','3130209','jeanette.benjamin@gmail.com','792957','','','HEAD.OFFICE','','','ADMIN','2011-07-26 15:47:00','ADMIN','2011-07-26 15:47:00','LIVE',1),(2088,'BACK0001','INDIVIDUAL','Keilon V.','Bacchus','Lp#53 Manzanillla No2','South Manzanilla Road','Manzanilla',549,'TT','1985-03-14','M','0','0','7446389','3966426','keilon.bacchus@yahoo.com','911849','','','HEAD.OFFICE','','','ADMIN','2011-07-22 11:29:37','ADMIN','2011-07-22 11:29:37','LIVE',1),(2089,'ASHR0001','INDIVIDUAL','Rendel','Ashby','7 Cippy Street','','Gasparillo',537,'TT','1983-01-04','M','0','0','4830618','3898893','paluka26@yahoo.com','936223F','','','HEAD.OFFICE','','','ADMIN','2011-12-23 10:20:07','ADMIN','2011-12-23 10:20:07','LIVE',1),(2090,'WILP0001','INDIVIDUAL','Pamella','Williams','29 Latania Drive ','Royestonia','Couva',521,'TT','1962-11-23','F','0','0','6895220','0','pwilliams@ttutc.com','981410F','','','HEAD.OFFICE','','','ADMIN','2011-07-23 12:21:07','ADMIN','2011-07-23 12:21:07','LIVE',1),(2091,'LALC0001','INDIVIDUAL','Clevon','Lalsingh','Southern Main Road','','Couva',521,'TT','1980-09-23','M','0','0','7338961','0','clevonlalsingh@hotmail.com','815570B','','','HEAD.OFFICE','','','ADMIN','2011-07-23 13:31:33','ADMIN','2011-07-23 13:31:33','LIVE',1),(2092,'CHIA0001','INDIVIDUAL','Alan','Chinpang','18 Hibiscus Drive','Petit Valley','Diego Martin',529,'TT','1950-09-24','M','6334682','0','7564460','7545651','alanchinpang@gmail.com','226670E','','','HEAD.OFFICE','','','ADMIN','2011-07-25 09:07:33','ADMIN','2011-07-25 09:07:33','LIVE',1),(2093,'RANK0001','INDIVIDUAL','Kevin','Ransome','278 Ramsamooj Street','','Marabella',550,'TT','1971-03-24','M','0','0','7855268','6805206','msbless1@aol.com','569032F','','','HEAD.OFFICE','','','ADMIN','2011-07-25 09:16:16','ADMIN','2011-07-25 09:16:16','LIVE',1),(2094,'PERI0001','INDIVIDUAL','Igantius','Perkins','#54 Maloney Street','','Petit Bourg',581,'TT','1957-02-01','M','0','0','6785554','7305766','iperks@live.com','299871F','','','HEAD.OFFICE','','','ADMIN','2011-07-25 10:31:24','ADMIN','2011-07-25 10:31:24','LIVE',1),(2095,'DICM0001','INDIVIDUAL','Michael','Dickerson','19 Market Street','','Arouca',503,'TT','1967-09-29','M','0','0','3462612','3238638','hellobmike@gmail.com','493834E','','','HEAD.OFFICE','','','ADMIN','2011-07-25 15:39:02','ADMIN','2011-07-25 15:39:02','LIVE',1),(2096,'GIBG0001','INDIVIDUAL','Gregory','Gibbens','75 Fairmount Drive','Fairways','Maraval',552,'TT','1956-10-11','M','0','0','6803744','7365572','gibbensga@gmail.com','246395E','','','HEAD.OFFICE','','','ADMIN','2011-07-27 12:15:20','ADMIN','2011-07-27 12:15:20','LIVE',1),(2097,'MARU0001','INDIVIDUAL','Ulyn','Martin','27 Walcott Lane','Enterprise Street','Chaguanas',515,'TT','1968-05-31','M','0','0','7938473','4666435','debie123nurse@yahoo.com','892205B','','','HEAD.OFFICE','','','ADMIN','2011-07-26 11:04:35','ADMIN','2011-07-26 11:04:36','LIVE',1),(2098,'PIEF0001','INDIVIDUAL','Francis','Pierre','#22 Ronald Ave','','Cascade',513,'TT','1972-12-03','M','0','0','6781722','0','fpierre@caribbeancourtofjustice.org','594552F','','','HEAD.OFFICE','','','ADMIN','2011-07-27 10:36:17','ADMIN','2011-07-27 10:36:17','LIVE',1),(2100,'BASR0001','INDIVIDUAL','Ramsaran','Bassant','52 Samaroo Trace Boundary Ext','','San Juan',581,'TT','1963-01-18','M','6757010','0','7785372','7280457','bassant18@yahoo.com','365136B','','','HEAD.OFFICE','','','ADMIN','2011-07-27 13:23:26','ADMIN','2011-07-27 13:23:26','LIVE',1),(2101,'SINH0001','INDIVIDUAL','Haymwanti ','Singh','#4b Ramlogan Trace','Uquire Road Fireburn','Freeport',534,'TT','1960-08-19','M','6732270','6723605','7204808','7698881','fireburn70@yahoo.com','370218B','','','HEAD.OFFICE','','','ADMIN','2011-07-27 14:49:53','ADMIN','2011-07-27 14:49:53','LIVE',1),(2102,'CHAJ0001','INDIVIDUAL','Julia','Charles','173 Seagull Ave','Maloney Gardens','D\'Abadie',527,'TT','1971-09-24','F','7581029','0','7808806','7157517','littlebopeep24@yahoo.com','802068E','','','HEAD.OFFICE','','','ADMIN','2011-07-28 10:11:56','ADMIN','2011-07-28 10:11:56','LIVE',1),(2104,'TEEB0001','INDIVIDUAL','Bobby','Teeluckdharry','176 Clark Road ','','Penal',563,'TT','0000-00-00','M','0','0','6817650','0','yaspal@tstt.net.tt','581531F','','','HEAD.OFFICE','','','ADMIN','2011-07-28 16:31:54','ADMIN','2011-07-28 16:31:54','LIVE',1),(2105,'PILL0001','INDIVIDUAL','Leslie Ann','Pillai','112 Saddle Road','','Maraval',552,'TT','1969-02-21','M','0','0','7660211','0','la.pillai@hotmail.com','528532F','','','HEAD.OFFICE','','','ADMIN','2011-09-27 12:28:34','ADMIN','2011-09-27 12:28:34','LIVE',1),(2106,'PUCG0001','INDIVIDUAL','Garth ','Puckerin','8 Bornes Rd','','St.James',592,'TT','1964-12-04','M','0','7661290','3576848','3708326','alishaguypuckerin@live.com','560631E','','','HEAD.OFFICE','','','ADMIN','2011-07-30 08:34:42','ADMIN','2011-07-30 08:34:42','LIVE',1),(2107,'OSBR0001','INDIVIDUAL','Robert','Osborne','1 Fatman Lane','Lady Young Road','Morvant',555,'TT','1964-01-04','M','0','0','3302781','3279584','','370445F','','','HEAD.OFFICE','','','ADMIN','2011-07-30 08:48:15','ADMIN','2011-07-30 08:48:15','LIVE',1),(2108,'LUCS0001','INDIVIDUAL','Steffan L.','Lucio','#113c Saddle Road','','Maraval',552,'TT','1983-02-11','M','0','0','4676133','3241326','steffan386@yahoo.com','723457F','','','HEAD.OFFICE','','','ADMIN','2011-08-02 09:33:41','ADMIN','2011-08-02 09:33:41','LIVE',1),(2109,'CHAG0001','INDIVIDUAL','Gerald','Charles','9 Beach Avenue','','La Romaine',546,'TT','1962-03-30','M','0','0','7397704','3286409','geraldcharles@ymail.com','338364F','','','HEAD.OFFICE','','','ADMIN','2011-08-02 11:53:52','ADMIN','2011-08-02 11:53:52','LIVE',1),(2110,'POYK0001','INDIVIDUAL','Kathleen','Poyer','#1 Dinsley Avenue East','8th Street','Tacarigua',597,'TT','0000-00-00','F','0','0','6206868','0','kpoyer@nmmotors.com','195375F','','','HEAD.OFFICE','','','ADMIN','2011-08-03 10:32:11','ADMIN','2011-08-03 10:32:11','LIVE',1),(2111,'POTB0001','INDIVIDUAL','Boxu','Potts','#10 Bayan Blvd.','Malabar','Arima',502,'TT','1949-09-15','M','0','0','7584000','3515878','buxopotts@yahoo.com','255729F','','','HEAD.OFFICE','','','ADMIN','2011-08-03 16:12:56','ADMIN','2011-08-03 16:12:56','LIVE',1),(2112,'BABR0001','INDIVIDUAL','Richard','Baboolal','#333 Singh Street','Dinsley Village','Tacarigua',597,'TT','1943-02-17','M','0','0','7477020','6802500','','130883','','','HEAD.OFFICE','','','ADMIN','2011-08-04 09:04:40','ADMIN','2011-08-04 09:04:40','LIVE',1),(2113,'JOHS0002','INDIVIDUAL','Salome','John','29 Zaman Avenue','Petit Bourg','San Juan',581,'TT','1962-02-12','F','0','0','6874679','3960844','luv_trinbago@yahoo.com','394154E','','','HEAD.OFFICE','','','ADMIN','2011-08-04 16:09:48','ADMIN','2011-08-04 16:09:48','LIVE',1),(2114,'RAMJ0001','INDIVIDUAL','Jason','Ramganesh','#48 Endeavour','Endeavour','Chaguanas',515,'TT','1982-12-19','M','0','0','7671829','7300607','jason_big@hotmail.com','806634B','','','HEAD.OFFICE','','','ADMIN','2011-08-05 09:24:55','ADMIN','2011-08-05 09:24:55','LIVE',1),(2115,'DEBG0001','INDIVIDUAL','Gregory','De Bique','Lp#94/6 Laventille Road','Febeau Village','San Juan',581,'TT','1959-07-13','M','6746336','0','3801816','0','gregorydebique@yahoo.com','289447F','','','HEAD.OFFICE','','','ADMIN','2011-08-08 10:36:04','ADMIN','2011-08-08 10:36:04','LIVE',1),(2116,'KONR0001','INDIVIDUAL','Reddi Sekhar','Kondapally','Bldg 59 ','Old French Village','Mt Hope Ewmsc',556,'TT','1976-06-10','M','0','0','7528300','7228137','drreddysekhar@gmail.com','876878F','','','HEAD.OFFICE','','','ADMIN','2011-08-08 13:26:42','ADMIN','2011-08-08 13:26:42','LIVE',1),(2117,'TSTC0001','COMPANY','Co.','Tstt','Cor. Keate & Pembroke Street','1st Floor Princess Court','Port -Of-Spain',572,'TT','1977-08-11','N','0','0','7088931','6801047','dratoin@tstt.co.tt','656850E','','','HEAD.OFFICE','','','ADMIN','2011-08-09 10:58:51','ADMIN','2011-08-09 10:58:51','LIVE',1),(2118,'EVER0001','INDIVIDUAL','Robert','Evelyn','22 Old Paddock Road','Blue Range','Diego Martin',529,'TT','1984-07-15','M','0','0','7441898','6321666','roevelyn@hotmail.com','751265E','','','HEAD.OFFICE','','','ADMIN','2011-08-09 12:52:21','ADMIN','2011-08-09 12:52:21','LIVE',1),(2119,'MARM0001','INDIVIDUAL','Marvin ','Marcelin','#15 Hamden Trace','Lowlands','Tobago',609,'TT','1981-07-31','M','0','0','4903156','7612206','marcelinmarvin@hotmail.com','701651E','','','HEAD.OFFICE','','','ADMIN','2011-08-10 12:08:29','ADMIN','2011-08-10 12:08:29','LIVE',1),(2120,'SOOJ0001','INDIVIDUAL','Jean','Sookoo','76 Parforte Road','','Gaspirillo',537,'TT','1973-02-08','F','0','0','7730926','0','','682344','','','HEAD.OFFICE','','','ADMIN','2011-08-11 09:19:46','ADMIN','2011-08-11 09:19:46','LIVE',1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_hs`
--

DROP TABLE IF EXISTS `customers_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_hs` (
  `id` int(11) unsigned NOT NULL,
  `customer_id` varchar(8) NOT NULL,
  `customer_type` enum('INDIVIDUAL','COMPANY') NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `region_id` int(11) NOT NULL,
  `country_id` varchar(2) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('M','F','N') NOT NULL,
  `phone_home` varchar(15) DEFAULT NULL,
  `phone_work` varchar(15) DEFAULT NULL,
  `phone_mobile1` varchar(15) DEFAULT NULL,
  `phone_mobile2` varchar(15) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `driver_permit` varchar(10) NOT NULL,
  `identification_card` varchar(12) DEFAULT NULL,
  `passport` varchar(10) DEFAULT NULL,
  `branch_id` varchar(50) NOT NULL,
  `referrer_id` varchar(8) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_hs`
--

LOCK TABLES `customers_hs` WRITE;
/*!40000 ALTER TABLE `customers_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_is`
--

DROP TABLE IF EXISTS `customers_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(8) DEFAULT NULL,
  `customer_type` enum('INDIVIDUAL','COMPANY') DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `country_id` varchar(2) DEFAULT 'TT',
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('M','F','N') DEFAULT NULL,
  `phone_home` varchar(15) DEFAULT NULL,
  `phone_work` varchar(15) DEFAULT NULL,
  `phone_mobile1` varchar(15) DEFAULT NULL,
  `phone_mobile2` varchar(15) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `driver_permit` varchar(10) DEFAULT NULL,
  `identification_card` varchar(12) DEFAULT NULL,
  `passport` varchar(10) DEFAULT NULL,
  `branch_id` varchar(50) DEFAULT 'HEAD.OFFICE',
  `referrer_id` varchar(8) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_is`
--

LOCK TABLES `customers_is` WRITE;
/*!40000 ALTER TABLE `customers_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daytimes`
--

DROP TABLE IF EXISTS `daytimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daytimes` (
  `id` int(11) unsigned NOT NULL,
  `daytime_id` time NOT NULL,
  `description` varchar(25) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_datetime_id` (`daytime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daytimes`
--

LOCK TABLES `daytimes` WRITE;
/*!40000 ALTER TABLE `daytimes` DISABLE KEYS */;
INSERT INTO `daytimes` VALUES (1,'00:00:00','12:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(2,'00:15:00','12:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(3,'00:30:00','12:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(4,'00:45:00','12:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(5,'01:00:00','1:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(6,'01:15:00','1:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(7,'01:30:00','1:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(8,'01:45:00','1:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(9,'02:00:00','2:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(10,'02:15:00','2:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(11,'02:30:00','2:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(12,'02:45:00','2:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(13,'03:00:00','3:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(14,'03:15:00','3:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(15,'03:30:00','3:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(16,'03:45:00','3:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(17,'04:00:00','4:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(18,'04:15:00','4:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(19,'04:30:00','4:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(20,'04:45:00','4:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(21,'05:00:00','5:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(22,'05:15:00','5:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(23,'05:30:00','5:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(24,'05:45:00','5:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(25,'06:00:00','6:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(26,'06:15:00','6:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(27,'06:30:00','6:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(28,'06:45:00','6:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(29,'07:00:00','7:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(30,'07:15:00','7:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(31,'07:30:00','7:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(32,'07:45:00','7:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(33,'08:00:00','8:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(34,'08:15:00','8:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(35,'08:30:00','8:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(36,'08:45:00','8:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(37,'09:00:00','9:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(38,'09:15:00','9:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(39,'09:30:00','9:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(40,'09:45:00','9:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(41,'10:00:00','10:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(42,'10:15:00','10:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(43,'10:30:00','10:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(44,'10:45:00','10:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(45,'11:00:00','11:00 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(46,'11:15:00','11:15 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(47,'11:30:00','11:30 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(48,'11:45:00','11:45 AM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(49,'12:00:00','12:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(50,'12:15:00','12:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(51,'12:30:00','12:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(52,'12:45:00','12:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(53,'13:00:00','1:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(54,'13:15:00','1:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(55,'13:30:00','1:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(56,'13:45:00','1:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(57,'14:00:00','2:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(58,'14:15:00','2:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(59,'14:30:00','2:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(60,'14:45:00','2:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(61,'15:00:00','3:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(62,'15:15:00','3:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(63,'15:30:00','3:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(64,'15:45:00','3:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(65,'16:00:00','4:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(66,'16:15:00','4:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(67,'16:30:00','4:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(68,'16:45:00','4:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(69,'17:00:00','5:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(70,'17:15:00','5:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(71,'17:30:00','5:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(72,'17:45:00','5:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(73,'18:00:00','6:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(74,'18:15:00','6:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(75,'18:30:00','6:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(76,'18:45:00','6:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(77,'19:00:00','7:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(78,'19:15:00','7:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(79,'19:30:00','7:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(80,'19:45:00','7:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(81,'20:00:00','8:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(82,'20:15:00','8:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(83,'20:30:00','8:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(84,'20:45:00','8:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(85,'21:00:00','9:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(86,'21:15:00','9:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(87,'21:30:00','9:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(88,'21:45:00','9:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(89,'22:00:00','10:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(90,'22:15:00','10:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(91,'22:30:00','10:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(92,'22:45:00','10:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(93,'23:00:00','11:00 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(94,'23:15:00','11:15 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(95,'23:30:00','11:30 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(96,'23:45:00','11:45 PM','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `daytimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daytimes_hs`
--

DROP TABLE IF EXISTS `daytimes_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daytimes_hs` (
  `id` int(11) unsigned NOT NULL,
  `daytime_id` time NOT NULL,
  `description` varchar(25) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daytimes_hs`
--

LOCK TABLES `daytimes_hs` WRITE;
/*!40000 ALTER TABLE `daytimes_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `daytimes_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daytimes_is`
--

DROP TABLE IF EXISTS `daytimes_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daytimes_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `daytime_id` time DEFAULT NULL,
  `description` varchar(25) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_datetime_id` (`daytime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daytimes_is`
--

LOCK TABLES `daytimes_is` WRITE;
/*!40000 ALTER TABLE `daytimes_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `daytimes_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverynotes`
--

DROP TABLE IF EXISTS `deliverynotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverynotes` (
  `id` int(11) unsigned NOT NULL,
  `deliverynote_id` varchar(16) NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `deliverynote_date` date NOT NULL,
  `details` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `delivered_by` varchar(50) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `returned_signed_by` varchar(50) DEFAULT NULL,
  `returned_signed_date` date DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_deliverynote_id` (`deliverynote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverynotes`
--

LOCK TABLES `deliverynotes` WRITE;
/*!40000 ALTER TABLE `deliverynotes` DISABLE KEYS */;
INSERT INTO `deliverynotes` VALUES (1001,'DNT20120707-0001','ORD20120707-0001','2012-07-07','<?xml version=\'1.0\' standalone=\'yes\'?><formfields><header><column>Product Id</column><column>Description</column><column>Qty</column></header><rows><row><product_id>G10</product_id><description>GPS Tracking System - G10</description><filled_qty>1</filled_qty></row><row><product_id>SIM.BMO.PRE100</product_id><description>Bmobile Pre-Paid SIM Card - Credit $100.00</description><filled_qty>1</filled_qty></row></rows></formfields>','NEW','','0000-00-00','','0000-00-00','','ADMIN','2012-07-07 19:19:50','SYSAUTH','2012-07-07 19:19:50','LIVE',1);
/*!40000 ALTER TABLE `deliverynotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverynotes_hs`
--

DROP TABLE IF EXISTS `deliverynotes_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverynotes_hs` (
  `id` int(11) unsigned NOT NULL,
  `deliverynote_id` varchar(16) NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `deliverynote_date` date NOT NULL,
  `details` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `delivered_by` varchar(50) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `returned_signed_by` varchar(50) DEFAULT NULL,
  `returned_signed_date` date DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverynotes_hs`
--

LOCK TABLES `deliverynotes_hs` WRITE;
/*!40000 ALTER TABLE `deliverynotes_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliverynotes_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverynotes_is`
--

DROP TABLE IF EXISTS `deliverynotes_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliverynotes_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `deliverynote_id` varchar(16) DEFAULT NULL,
  `order_id` varchar(16) DEFAULT NULL,
  `deliverynote_date` date DEFAULT NULL,
  `details` text,
  `status` varchar(20) DEFAULT NULL,
  `delivered_by` varchar(50) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `returned_signed_by` varchar(50) DEFAULT NULL,
  `returned_signed_date` date DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_deliverynote_id` (`deliverynote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverynotes_is`
--

LOCK TABLES `deliverynotes_is` WRITE;
/*!40000 ALTER TABLE `deliverynotes_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliverynotes_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) unsigned NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_department_id` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (501,'EXECUTIVE','Executive / Management','IMPLEMENTATION','2011-03-28 00:00:00','ADMIN','2011-03-28 00:00:00','LIVE',1),(502,'ADMINISTRATION','Administration Department','IMPLEMENTATION','2011-03-28 00:00:00','ADMIN','2011-03-28 00:00:00','LIVE',1),(503,'ACCOUNTS','Accounts Department','IMPLEMENTATION','2011-03-28 00:00:00','ADMIN','2011-03-28 00:00:00','LIVE',1),(504,'INFORMATION.TECHNOLOGY','IT Department','IMPLEMENTATION','2011-03-28 00:00:00','ADMIN','2011-03-28 00:00:00','LIVE',1),(505,'SALES','Sales Department','IMPLEMENTATION','2011-03-28 00:00:00','ADMIN','2011-03-28 00:00:00','LIVE',1),(506,'TECHNICAL','Technical Department','IMPLEMENTATION','2011-03-28 00:00:00','ADMIN','2011-03-28 00:00:00','LIVE',1),(507,'SUPPORT.SERVICES','Support Services','IMPLEMENTATION','2011-03-28 00:00:00','ADMIN','2011-03-28 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments_hs`
--

DROP TABLE IF EXISTS `departments_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments_hs` (
  `id` int(11) unsigned NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_hs`
--

LOCK TABLES `departments_hs` WRITE;
/*!40000 ALTER TABLE `departments_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments_is`
--

DROP TABLE IF EXISTS `departments_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_department_id` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_is`
--

LOCK TABLES `departments_is` WRITE;
/*!40000 ALTER TABLE `departments_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquirydefs`
--

DROP TABLE IF EXISTS `enquirydefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquirydefs` (
  `id` int(11) unsigned NOT NULL,
  `controller` varchar(255) NOT NULL,
  `formfields` text,
  `tablename` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `idfield` varchar(50) NOT NULL,
  `enqheader` varchar(255) NOT NULL,
  `showfilter` tinyint(1) NOT NULL,
  `printuser` tinyint(1) NOT NULL,
  `printdatetime` tinyint(1) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_controller` (`controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquirydefs`
--

LOCK TABLES `enquirydefs` WRITE;
/*!40000 ALTER TABLE `enquirydefs` DISABLE KEYS */;
INSERT INTO `enquirydefs` VALUES (401,'orders_enq','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>	\r\n<field><name>id</name><label>Id</label><filterfield>yes</filterfield></field>	\r\n<field><name>order_id</name><label>Order Id</label><filterfield>yes</filterfield></field>\r\n<field><name>branch_id</name><label>Branch Id</label><filterfield>yes</filterfield></field>	\r\n<field><name>customer_id</name><label>Customer Id</label><filterfield>yes</filterfield></field>	\r\n<field><name>first_name</name><label>First Name</label><filterfield>yes</filterfield></field>\r\n<field><name>last_name</name><label>Last Name</label><filterfield>yes</filterfield></field>\r\n<field><name>order_details</name><label>Order Details</label><filterfield>no</filterfield></field>\r\n<field><name>customer_type</name><label>Customer Type</label><filterfield>yes</filterfield></field>\r\n<field><name>address1</name><label>Address1</label><filterfield>no</filterfield></field>\r\n<field><name>address2</name><label>Address2</label><filterfield>no</filterfield></field>\r\n<field><name>city</name><label>City</label><filterfield>no</filterfield></field>\r\n<field><name>phone_mobile1</name><label>Phone Mobile1</label><filterfield>no</filterfield></field>\r\n<field><name>phone_home</name><label>Phone Home</label><filterfield>no</filterfield></field>\r\n<field><name>phone_work</name><label>Phone Work</label><filterfield>no</filterfield></field>\r\n<field><name>order_date</name><label>Order Date</label><filterfield>yes</filterfield></field>\r\n<field><name>quotation_date</name><label>Quotation Date</label><filterfield>yes</filterfield></field>\r\n<field><name>invoice_date</name><label>Invoice Date</label><filterfield>yes</filterfield></field>\r\n<field><name>order_status</name><label>Order Status</label><filterfield>yes</filterfield></field>\r\n<field><name>inventory_checkout_status</name><label>Checkout Status</label><filterfield>yes</filterfield></field>\r\n<field><name>inventory_update_type</name><label>Update Type</label><filterfield>yes</filterfield></field>\r\n<field><name>inputter</name><label>Inputter</label><filterfield>yes</filterfield></field>	\r\n<field><name>input_date</name><label>Input Date</label><filterfield>no</filterfield></field>	\r\n<field><name>invoice_note</name><label>Invoice Note</label><filterfield>no</filterfield></field>\r\n<field><name>comments</name><label>Comments</label><filterfield>no</filterfield></field>\r\n<field><name>current_no</name><label>Current No</label><filterfield>no</filterfield></field>\r\n<field><name>extended_total</name><label>Sub Total</label><filterfield>no</filterfield></field>\r\n<field><name>discount_total</name><label>Discount Total</label><filterfield>no</filterfield></field>\r\n<field><name>tax_total</name><label>Tax Total</label><filterfield>no</filterfield></field>\r\n<field><name>order_total</name><label>Order Total</label><filterfield>no</filterfield></field>\r\n<field><name>payment_total</name><label>Payment Total</label><filterfield>no</filterfield></field>\r\n<field><name>balance</name><label>Balance</label><filterfield>no</filterfield></field>\r\n</formfields>','vw_orderbalances','enqdb','enquiry/orders_view','','Orders',1,1,1,'DUNSTAN.NESBIT','2012-07-06 14:03:04','DUNSTAN.NESBIT','2012-07-06 14:03:10','LIVE',2);
/*!40000 ALTER TABLE `enquirydefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquirydefs_hs`
--

DROP TABLE IF EXISTS `enquirydefs_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquirydefs_hs` (
  `id` int(11) unsigned NOT NULL,
  `controller` varchar(255) NOT NULL,
  `formfields` text,
  `tablename` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `idfield` varchar(50) NOT NULL,
  `enqheader` varchar(255) NOT NULL,
  `showfilter` tinyint(1) NOT NULL,
  `printuser` tinyint(1) NOT NULL,
  `printdatetime` tinyint(1) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquirydefs_hs`
--

LOCK TABLES `enquirydefs_hs` WRITE;
/*!40000 ALTER TABLE `enquirydefs_hs` DISABLE KEYS */;
INSERT INTO `enquirydefs_hs` VALUES (401,'order_enq','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>	\r\n<field><name>id</name><label>Id</label><filterfield>yes</filterfield></field>	\r\n<field><name>order_id</name><label>Order Id</label><filterfield>yes</filterfield></field>\r\n<field><name>branch_id</name><label>Branch Id</label><filterfield>yes</filterfield></field>	\r\n<field><name>inputter</name><label>Inputter</label><filterfield>yes</filterfield></field>	\r\n<field><name>input_date</name><label>Input Date</label><filterfield>no</filterfield></field>	\r\n<field><name>customer_id</name><label>Customer Id</label><filterfield>yes</filterfield></field>	\r\n<field><name>first_name</name><label>First Name</label><filterfield>yes</filterfield></field>\r\n<field><name>last_name</name><label>Last Name</label><filterfield>yes</filterfield></field>\r\n<field><name>customer_type</name><label>Customer Type</label><filterfield>yes</filterfield></field>\r\n<field><name>address1</name><label>Address1</label><filterfield>no</filterfield></field>\r\n<field><name>address2</name><label>Address2</label><filterfield>no</filterfield></field>\r\n<field><name>city</name><label>City</label><filterfield>no</filterfield></field>\r\n<field><name>phone_mobile1</name><label>Phone Mobile1</label><filterfield>no</filterfield></field>\r\n<field><name>phone_home</name><label>Phone Home</label><filterfield>no</filterfield></field>\r\n<field><name>phone_work</name><label>Phone Work</label><filterfield>no</filterfield></field>\r\n<field><name>order_date</name><label>Order Date</label><filterfield>yes</filterfield></field>\r\n<field><name>quotation_date</name><label>Quotation Date</label><filterfield>yes</filterfield></field>\r\n<field><name>invoice_date</name><label>Invoice Date</label><filterfield>yes</filterfield></field>\r\n<field><name>order_status</name><label>Order Status</label><filterfield>yes</filterfield></field>\r\n<field><name>inventory_checkout_status</name><label>Checkout Status</label><filterfield>yes</filterfield></field>\r\n<field><name>inventory_update_type</name><label>Update Type</label><filterfield>yes</filterfield></field>\r\n<field><name>comments</name><label>Comments</label><filterfield>no</filterfield></field>\r\n<field><name>current_no</name><label>Current No</label><filterfield>no</filterfield></field>\r\n<field><name>extended_total</name><label>Sub Total</label><filterfield>no</filterfield></field>\r\n<field><name>discount_total</name><label>Discount Total</label><filterfield>no</filterfield></field>\r\n<field><name>tax_total</name><label>Tax Total</label><filterfield>no</filterfield></field>\r\n<field><name>order_total</name><label>Order Total</label><filterfield>no</filterfield></field>\r\n<field><name>payment_total</name><label>Payment Total</label><filterfield>no</filterfield></field>\r\n<field><name>balance</name><label>Balance</label><filterfield>no</filterfield></field>\r\n</formfields>','vw_orderbalances','enqdb','enquiry/orders_view','','Orders',1,1,1,'ADMIN','2012-06-18 14:11:51','ADMIN','2012-06-18 14:12:06','HIST',1);
/*!40000 ALTER TABLE `enquirydefs_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquirydefs_is`
--

DROP TABLE IF EXISTS `enquirydefs_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquirydefs_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) DEFAULT NULL,
  `formfields` text,
  `tablename` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `idfield` varchar(50) DEFAULT NULL,
  `enqheader` varchar(255) DEFAULT NULL,
  `showfilter` tinyint(1) DEFAULT '1',
  `printuser` tinyint(1) DEFAULT '1',
  `printdatetime` tinyint(1) DEFAULT '1',
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_controller` (`controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquirydefs_is`
--

LOCK TABLES `enquirydefs_is` WRITE;
/*!40000 ALTER TABLE `enquirydefs_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `enquirydefs_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixedselections`
--

DROP TABLE IF EXISTS `fixedselections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixedselections` (
  `id` int(11) unsigned NOT NULL,
  `fixedselection_id` varchar(50) NOT NULL,
  `enquiry_type` enum('default','custom') NOT NULL,
  `formfields` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_controller` (`fixedselection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixedselections`
--

LOCK TABLES `fixedselections` WRITE;
/*!40000 ALTER TABLE `fixedselections` DISABLE KEYS */;
INSERT INTO `fixedselections` VALUES (1,'message','default','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n<field><name>recipient</name><value>%IDNAME%</value><operand>EQ</operand><onload>readonly</onload></field>\n<field><name>sender</name><value>%OR% %IDNAME%</value><operand>EQ</operand><onload>readonly</onload></field>\n</formfields>','ADMIN','2012-01-23 02:15:44','ADMIN','2012-01-23 02:15:53','LIVE',1),(2,'userchangepassword','default','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n<field><name>idname</name><value>%IDNAME%</value><operand>EQ</operand><onload>readonly</onload></field>\n</formfields>','ADMIN','2011-11-14 10:03:35','ADMIN','2011-11-14 10:08:11','LIVE',1),(3,'order','default','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>\r\n<field><name>order_date</name><value>%DATE%-32</value><operand>GT</operand><onload>enabled</onload></field>\r\n</formfields>','ADMIN','2011-11-14 00:00:00','ADMIN','2011-11-14 00:00:00','LIVE',1),(4,'useradmin','default','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n<field><name>department_id</name><value>_SYSTEM</value><operand>NE</operand><onload>readonly</onload></field>\n</formfields>','ADMIN','2012-01-13 05:42:51','ADMIN','2012-01-13 05:42:58','LIVE',1),(6,'tilluser','default','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n<field><name>till_user</name><value>%IDNAME%</value><operand>EQ</operand><onload>readonly</onload></field>\n</formfields>','ADMIN','2012-05-03 12:50:51','ADMIN','2012-05-03 12:50:59','LIVE',1),(7,'tilltransaction','default','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n<field><name>till_id</name><value>%IDNAME%</value><operand>LK</operand><onload>readonly</onload></field>\n<field><name>auth_date</name><value>%CURDATE%</value><operand>GT</operand><onload>enabled</onload></field>\r\n</formfields>','ADMIN','2012-05-03 19:11:45','ADMIN','2012-05-03 19:11:55','LIVE',1);
/*!40000 ALTER TABLE `fixedselections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixedselections_hs`
--

DROP TABLE IF EXISTS `fixedselections_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixedselections_hs` (
  `id` int(11) unsigned NOT NULL,
  `fixedselection_id` varchar(50) NOT NULL,
  `enquiry_type` enum('default','custom') NOT NULL,
  `formfields` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixedselections_hs`
--

LOCK TABLES `fixedselections_hs` WRITE;
/*!40000 ALTER TABLE `fixedselections_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixedselections_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixedselections_is`
--

DROP TABLE IF EXISTS `fixedselections_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixedselections_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fixedselection_id` varchar(50) DEFAULT NULL,
  `enquiry_type` enum('default','custom') DEFAULT 'default',
  `formfields` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_controller` (`fixedselection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixedselections_is`
--

LOCK TABLES `fixedselections_is` WRITE;
/*!40000 ALTER TABLE `fixedselections_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixedselections_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventchkouts`
--

DROP TABLE IF EXISTS `inventchkouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventchkouts` (
  `id` int(11) unsigned NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `checkout_details` text,
  `run` enum('Y','N') NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventchkouts`
--

LOCK TABLES `inventchkouts` WRITE;
/*!40000 ALTER TABLE `inventchkouts` DISABLE KEYS */;
INSERT INTO `inventchkouts` VALUES (1001,'ORD20120707-0001','<?xml version=\'1.0\' standalone=\'yes\'?><formfields><header><column>Product Id</column><column>Description</column><column>Order Qty</column><column>Filled Qty</column><column>Checkout Qty</column><column>Checkout Status</column></header><rows><row><product_id>G10</product_id><description>GPS Tracking System - G10</description><order_qty>1</order_qty><filled_qty>1</filled_qty><checkout_qty>0</checkout_qty><status>COMPLETED</status></row><row><product_id>SIM.BMO.PRE100</product_id><description>Bmobile Pre-Paid SIM Card - Credit $100.00</description><order_qty>1</order_qty><filled_qty>1</filled_qty><checkout_qty>0</checkout_qty><status>COMPLETED</status></row></rows></formfields>','N','','ADMIN','2012-07-07 19:19:49','SYSAUTH','2012-07-07 19:19:49','LIVE',1);
/*!40000 ALTER TABLE `inventchkouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventchkouts_hs`
--

DROP TABLE IF EXISTS `inventchkouts_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventchkouts_hs` (
  `id` int(11) unsigned NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `checkout_details` text,
  `run` enum('Y','N') NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventchkouts_hs`
--

LOCK TABLES `inventchkouts_hs` WRITE;
/*!40000 ALTER TABLE `inventchkouts_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventchkouts_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventchkouts_is`
--

DROP TABLE IF EXISTS `inventchkouts_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventchkouts_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(16) DEFAULT NULL,
  `checkout_details` text,
  `run` enum('Y','N') DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventchkouts_is`
--

LOCK TABLES `inventchkouts_is` WRITE;
/*!40000 ALTER TABLE `inventchkouts_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventchkouts_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventorys`
--

DROP TABLE IF EXISTS `inventorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventorys` (
  `id` int(11) unsigned NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `qty_instock` float(16,2) unsigned NOT NULL,
  `qty_diff` float(16,2) NOT NULL,
  `reorder_level` int(11) unsigned NOT NULL,
  `last_update_type` varchar(50) NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_product_id_branch_id` (`product_id`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorys`
--

LOCK TABLES `inventorys` WRITE;
/*!40000 ALTER TABLE `inventorys` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventorys_hs`
--

DROP TABLE IF EXISTS `inventorys_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventorys_hs` (
  `id` int(11) unsigned NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `qty_instock` float(16,2) unsigned NOT NULL,
  `qty_diff` float(16,2) NOT NULL,
  `reorder_level` int(11) unsigned NOT NULL,
  `last_update_type` varchar(50) NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorys_hs`
--

LOCK TABLES `inventorys_hs` WRITE;
/*!40000 ALTER TABLE `inventorys_hs` DISABLE KEYS */;
INSERT INTO `inventorys_hs` VALUES (501,'G10','HEAD.OFFICE',10.00,10.00,1,'STOCK.CHECK','','RAENELLE.SAMAROO-MAHARAJ','2012-07-06 10:56:59','RAENELLE.SAMAROO-MAHARAJ','2012-07-06 10:56:59','LIVE',1),(504,'SIM.BMO.PRE100','HEAD.OFFICE',30.00,30.00,5,'STOCK.CHECK','','RAENELLE.SAMAROO-MAHARAJ','2012-07-06 09:48:12','SYSAUTH','2012-07-06 09:48:12','LIVE',1);
/*!40000 ALTER TABLE `inventorys_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventorys_is`
--

DROP TABLE IF EXISTS `inventorys_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventorys_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(50) DEFAULT NULL,
  `branch_id` varchar(50) DEFAULT NULL,
  `qty_instock` float(16,2) unsigned DEFAULT '0.00',
  `qty_diff` float(16,2) DEFAULT '0.00',
  `reorder_level` int(11) unsigned DEFAULT '1',
  `last_update_type` varchar(50) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorys_is`
--

LOCK TABLES `inventorys_is` WRITE;
/*!40000 ALTER TABLE `inventorys_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventorys_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventupdtypes`
--

DROP TABLE IF EXISTS `inventupdtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventupdtypes` (
  `id` int(11) unsigned NOT NULL,
  `update_type_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `stock_movement` varchar(20) NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_update_type_id` (`update_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventupdtypes`
--

LOCK TABLES `inventupdtypes` WRITE;
/*!40000 ALTER TABLE `inventupdtypes` DISABLE KEYS */;
INSERT INTO `inventupdtypes` VALUES (1,'STOCK.CHECK','Stock Check, Inventory Reset','STOCK.RESET','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1),(2,'STOCK.NEW.IN','New Stock In','STOCK.IN','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1),(3,'STOCK.TRANSFER.IN','Stock Transfer In','STOCK.IN','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1),(4,'STOCK.TRANSFER.OUT','Stock Transfer Out','STOCK.OUT','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1),(5,'SALE','Stock Sale','STOCK.OUT','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1),(6,'LOAN','Loan Item','STOCK.OUT','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1),(7,'LOAN.RETURN','Loan Item Returned','STOCK.IN','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1),(8,'SENT.TO.REPAIR','Item Sent To Be Repair','STOCK.OUT','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1),(9,'CUSTOMER.RETURN','Customer Returns Sold Item','STOCK.IN','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1),(10,'CUSTOMER.REPLACEMENT','Exchange/Replace Item, Possibly Defective','STOCK.OUT','','IMPLEMENTATION','2011-11-17 00:00:00','ADMIN','2011-11-17 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `inventupdtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventupdtypes_hs`
--

DROP TABLE IF EXISTS `inventupdtypes_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventupdtypes_hs` (
  `id` int(11) unsigned NOT NULL,
  `update_type_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `stock_movement` varchar(20) NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventupdtypes_hs`
--

LOCK TABLES `inventupdtypes_hs` WRITE;
/*!40000 ALTER TABLE `inventupdtypes_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventupdtypes_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventupdtypes_is`
--

DROP TABLE IF EXISTS `inventupdtypes_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventupdtypes_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `update_type_id` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `stock_movement` varchar(20) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_update_type_id` (`update_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventupdtypes_is`
--

LOCK TABLES `inventupdtypes_is` WRITE;
/*!40000 ALTER TABLE `inventupdtypes_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventupdtypes_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menudefs`
--

DROP TABLE IF EXISTS `menudefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menudefs` (
  `id` int(11) unsigned NOT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `sortpos` float(16,5) DEFAULT NULL,
  `nleft` int(11) DEFAULT NULL,
  `nright` int(11) DEFAULT NULL,
  `nlevel` int(11) DEFAULT NULL,
  `node_or_leaf` enum('L','N') DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `label_input` varchar(255) DEFAULT NULL,
  `label_enquiry` varchar(255) DEFAULT NULL,
  `url_input` varchar(255) DEFAULT NULL,
  `url_enquiry` varchar(255) DEFAULT NULL,
  `controls_input` varchar(255) DEFAULT NULL,
  `controls_enquiry` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_menu_id` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menudefs`
--

LOCK TABLES `menudefs` WRITE;
/*!40000 ALTER TABLE `menudefs` DISABLE KEYS */;
INSERT INTO `menudefs` VALUES (1,10,0,0.10000,1,16,1,'N','login','My Account',NULL,NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(2,15,0,0.15000,17,30,1,'N','useradmin','User Administration',NULL,NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(3,20,0,0.20000,31,68,1,'N','sysadmin','System Administration','',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(4,25,0,0.25000,69,98,1,'N','developer','Developer','',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(5,1000,10,10.00000,2,11,2,'N','login','Messages','','','','','','IMPLEMENTATION','2011-04-25 16:04:29','ADMIN','2011-04-25 16:26:09','LIVE',1),(6,1001,10,10.01000,12,15,2,'N','login','User','','','','','','IMPLEMENTATION','2011-04-25 16:04:29','ADMIN','2011-04-25 16:26:16','LIVE',1),(10,1500,15,15.00000,18,25,2,'N','useradmin','Users','',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(11,1501,15,15.01000,26,29,2,'N','useradmin','Roles','',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(12,2000,20,20.00000,32,39,2,'N','sysadmin','System Configurations','','','','','','IMPLEMENTATION','2011-04-27 14:04:34','ADMIN','2011-04-27 14:05:42','LIVE',1),(13,2001,20,20.01000,40,45,2,'N','sysadmin','Countries & Regions','','','','','','IMPLEMENTATION','2011-04-27 13:04:32','ADMIN','2011-04-27 13:36:38','LIVE',1),(15,2500,25,25.00000,70,81,2,'N','developer','Definition','','','','','','IMPLEMENTATION','2011-05-08 14:05:33','ADMIN','2011-05-08 14:48:31','LIVE',1),(17,2501,25,25.01000,82,85,2,'N','developer','Enquiry Administration','','','','','','IMPLEMENTATION','2011-05-08 14:05:55','ADMIN','2011-05-08 14:48:46','LIVE',1),(19,2502,25,25.02000,86,91,2,'N','developer','Report Administration','','','','','','IMPLEMENTATION','2011-05-08 14:05:55','ADMIN','2011-05-08 14:48:55','LIVE',1),(23,150050,1500,1500.50000,19,20,3,'L','useradmin','User','magicon016.png%IMG%','useradmin','useradmin/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(24,150051,1500,1500.51001,21,22,3,'L','useradmin','User Password Reset','','userpasswdreset','','if,vw,iw,in,ao,as,rj,hd,va','','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(25,150052,1500,1500.52002,23,24,3,'L','useradmin','User Roles','magicon016.png%IMG%','userrole','userrole/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(28,150150,1501,1501.50000,27,28,3,'L','useradmin','Role','magicon016.png%IMG%','roleadmin','roleadmin/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(30,2002,20,20.02000,46,53,2,'N','sysadmin','Dates & Times','','','','','','IMPLEMENTATION','2011-04-27 13:04:32','ADMIN','2011-04-27 13:36:51','LIVE',1),(31,2003,20,20.03000,54,59,2,'N','sysadmin','End Of Day','','','','','','IMPLEMENTATION','2011-04-27 13:04:32','ADMIN','2011-04-27 13:37:09','LIVE',1),(32,2004,20,20.04000,60,67,2,'N','sysadmin','System Maintenance','','','','','','IMPLEMENTATION','2011-04-27 13:04:32','ADMIN','2011-04-27 13:37:14','LIVE',1),(33,200050,2000,2000.50000,33,34,3,'L','sysadmin','System Configuration ','magicon016.png%IMG%','sysconfig','sysconfig/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(34,200051,2000,2000.51001,35,36,3,'L','sysadmin','Branch','magicon016.png%IMG%','branch','branch/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-04-27 13:04:32','ADMIN','2011-04-27 13:37:20','LIVE',1),(35,200052,2000,2000.52002,37,38,3,'L','sysadmin','Department','magicon016.png%IMG%','department','department/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-04-27 13:04:32','ADMIN','2011-04-27 13:39:51','LIVE',1),(36,100050,1000,1000.50000,3,4,3,'L','login','Message','magicon016.png%IMG%','message','message/enquiry_default','vw,nw,cp,iw,as,hd','ls,is,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(37,100051,1000,1000.51001,5,6,3,'L','login',' ','Inbox','','message/inbox','df,ls,is,hs,ex',NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(38,100052,1000,1000.52002,7,8,3,'L','login',' ','Drafts','','message/drafts','df,ls,is,hs,ex',NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(39,100053,1000,1000.53003,9,10,3,'L','login',' ','Sent','','message/sent','df,ls,is,hs,ex',NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(40,100150,1001,1001.50000,13,14,3,'L','login','Change Password','magicon016.png%IMG%','userchangepassword','userchangepassword/enquiry_default','vw,in,as,rj,va','ls,is','IMPLEMENTATION','2011-04-25 16:04:29','ADMIN','2011-04-25 16:26:29','LIVE',1),(41,200150,2001,2001.50000,41,42,3,'L','sysadmin','Country','magicon016.png%IMG%','country','country/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(42,200151,2001,2001.51001,43,44,3,'L','sysadmin','Region','magicon016.png%IMG%','region','region/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(43,200250,2002,2002.53003,47,48,3,'L','sysadmin','Weekday','magicon016.png%IMG%','weekday','weekday/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(44,200251,2002,2002.54004,49,50,3,'L','sysadmin','Daytime','magicon016.png%IMG%','daytime','daytime/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(45,200253,2002,2002.55005,51,52,3,'L','sysadmin','Recurrence','magicon016.png%IMG%','recurrence','recurrence/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(46,200350,2003,2003.50000,55,56,3,'L','sysadmin','EOD Configuration','magicon016.png%IMG%','endofday','endofday/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-04-27 13:04:32','ADMIN','2011-04-27 13:37:58','LIVE',1),(47,200351,2003,2003.51001,57,58,3,'L','sysadmin','Run EOD','magicon016.png%IMG%','runeod','runeod/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-04-27 13:04:32','ADMIN','2011-04-27 13:37:50','LIVE',1),(48,200450,2004,2004.51001,61,62,3,'L','sysadmin','Record Lock','magicon016.png%IMG%','recordlock','recordlock/enquiry_default','if,vw,de','ls','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(49,250050,2500,2500.50000,71,72,3,'L','developer','Param Definition','magicon016.png%IMG%','param','param/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(50,250051,2500,2500.51001,73,74,3,'L','developer','Form Definition','magicon016.png%IMG%','formdef','formdef/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(51,200451,2004,2004.51001,63,64,3,'L','sysadmin','PDF','magicon016.png%IMG%','pdf','pdf/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-05-03 20:05:00','ADMIN','2011-05-03 21:57:50','LIVE',1),(52,200452,2004,2004.52002,65,66,3,'L','sysadmin','CSV','magicon016.png%IMG%','csv','csv/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-05-04 20:05:06','ADMIN','2011-05-04 20:48:04','LIVE',1),(53,250052,2500,2500.52002,75,76,3,'L','developer','Menu Definition','magicon016.png%IMG%','menudef','menudef/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(54,250053,2500,2500.53003,77,78,3,'L','developer','Enquiry Definition','magicon016.png%IMG%','enqdef','enqdef/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-04-28 02:04:07','ADMIN','2011-04-28 02:53:55','LIVE',1),(55,250054,2500,2500.54004,79,80,3,'L','developer','Report Definition','magicon016.png%IMG%','reportdef','reportdef/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-04-28 02:04:07','ADMIN','2011-04-28 02:54:02','LIVE',1),(56,250055,2501,2501.50000,83,84,3,'L','developer','Fixed Selection','magicon016.png%IMG%','fixedselection','fixedselection/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-05-05 19:05:22','ADMIN','2011-05-05 19:52:42','LIVE',1),(57,250250,2502,2502.50000,87,88,3,'L','developer','Run Report Refresh','magicon016.png%IMG%','runreportrefresh','runreportrefresh/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-05-08 14:05:55','ADMIN','2011-05-08 14:49:09','LIVE',1),(58,250251,2502,2502.51001,89,90,3,'L','developer','Report Refresh Configuration','magicon016.png%IMG%','reportrefreshconfig','reportrefreshconfig/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-05-08 14:05:55','ADMIN','2011-05-08 14:49:23','LIVE',1),(59,2503,25,25.03000,92,97,2,'N','developer','Table Administration','','','','','','IMPLEMENTATION','2011-05-08 14:05:55','ADMIN','2011-05-08 14:49:37','LIVE',1),(60,250350,2503,2503.50000,93,94,3,'L','developer','Run Table Reset','magicon016.png%IMG%','tableresetrun','tableresetrun/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-05-08 14:05:55','ADMIN','2011-05-08 14:49:47','LIVE',1),(61,250351,2503,2503.51001,95,96,3,'L','developer','Table Reset Configuration','magicon016.png%IMG%','tableresetconfig','tableresetconfig/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-05-08 14:05:55','ADMIN','2011-05-08 14:49:57','LIVE',1),(401,5010,0,50.10000,99,102,1,'N','customer','Customers','','','','','','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(402,501050,5010,5010.50000,100,101,2,'L','customer','Customer','magicon016.png%IMG%','customer','customer/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-04-18 03:04:15','ADMIN','2011-04-18 03:07:37','LIVE',1),(403,5040,0,50.40000,127,158,1,'N','sales','Sales','','','','','','IMPLEMENTATION','2011-04-17 20:04:23','ADMIN','2011-04-17 21:01:27','LIVE',1),(404,504000,5040,5040.00000,128,135,2,'N','sales','Products','','','','','','IMPLEMENTATION','2011-08-29 17:08:53','ADMIN','2011-08-29 17:26:09','LIVE',1),(405,504001,5040,5040.00977,136,147,2,'N','sales','Orders & Payments','','','','','','IMPLEMENTATION','2011-08-29 17:08:53','ADMIN','2011-08-29 17:26:41','LIVE',1),(406,50400050,504000,504000.50000,129,130,3,'L','sales','Product','magicon016.png%IMG%','product','product/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-08-29 17:08:53','ADMIN','2011-08-29 17:26:19','LIVE',1),(407,50400051,504000,504000.50000,131,132,3,'L','sales','Inventory','magicon016.png%IMG%','inventory','inventory/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-08-29 17:08:53','ADMIN','2011-08-29 17:26:31','LIVE',1),(408,50400052,504000,504000.53125,133,134,3,'L','sales','Inventory Update Type','magicon016.png%IMG%','inventupdtype','inventupdtype/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-11-18 07:11:51','ADMIN','2011-11-18 07:49:38','LIVE',1),(409,50400150,504001,504001.50000,137,138,3,'L','sales','Estimator','','estimator','','vw,nw','','IMPLEMENTATION','2012-01-10 21:01:54','ADMIN','2012-01-10 21:18:23','LIVE',1),(410,50400151,504001,504001.50000,139,140,3,'L','sales','Order','magicon016.png%IMG%','order','order/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-08-29 17:08:53','ADMIN','2011-08-29 17:26:51','LIVE',1),(411,50400152,504001,504001.53125,141,142,3,'L','sales','Payment','magicon016.png%IMG%','payment','payment/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2011-08-29 17:08:53','ADMIN','2011-08-29 17:27:02','LIVE',1),(412,50400153,504001,504001.53125,143,144,3,'L','sales','Inventory Checkout','magicon016.png%IMG%','inventchkout','inventchkout/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-01-10 20:01:47','ADMIN','2012-01-10 21:00:31','LIVE',1),(413,50400154,504001,504001.53125,145,146,3,'L','sales','Delivery Note','magicon016.png%IMG%','deliverynote','deliverynote/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-01-13 00:00:00','ADMIN','2012-01-12 00:00:00','LIVE',1),(414,504002,5040,5040.02002,148,157,2,'N','sales','Tills','','','','','','IMPLEMENTATION','2012-05-02 14:05:37','ADMIN','2012-05-02 14:24:32','LIVE',1),(415,50400250,504002,504002.50000,149,150,3,'L','sales','User Till','magicon016.png%IMG%','tilluser','tilluser/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-05-02 14:05:37','ADMIN','2012-05-02 14:24:51','LIVE',1),(416,50400251,504002,504002.50000,151,152,3,'L','sales','Manage Till','magicon016.png%IMG%','tillmanage','tillmanage/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-05-02 14:05:37','ADMIN','2012-05-02 14:24:58','LIVE',1),(417,50400252,504002,504002.53125,153,154,3,'L','sales','Till Transaction','magicon016.png%IMG%','tilltransaction','tilltransaction/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-05-02 14:05:37','ADMIN','2012-05-02 14:25:08','LIVE',1),(418,50400253,504002,504002.53125,155,156,3,'L','sales','Cancel Payment','magicon016.png%IMG%','paymentcancel','paymentcancel/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-05-05 23:05:38','ADMIN','2012-05-05 23:20:01','LIVE',1),(419,5100,0,51.00000,169,186,1,'N','report','Reports','','','','','','IMPLEMENTATION','2011-04-17 20:04:23','ADMIN','2011-04-17 21:01:45','LIVE',1),(420,50200150,502001,502001.50000,107,108,3,'L','report','Batch Invoices','magicon016.png%IMG%','batchinvoice','batchinvoice/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-07-25 00:03:42','ADMIN','2012-07-25 00:04:26','LIVE',1),(421,51000055,510000,510000.56250,181,182,3,'L','report','Batch Invoices','','batchinvoices_rpt','','vw,pr','','ADMIN','2012-07-25 00:55:30','ADMIN','2012-07-25 00:58:29','LIVE',1),(509,5090,0,50.90000,159,168,1,'N','enquiry','Enquiries','','','','','','IMPLEMENTATION','2011-04-17 20:04:23','ADMIN','2011-04-17 21:01:37','LIVE',1),(515,509000,5090,5090.00000,160,161,2,'N','enquiry','Customer','','','','','','IMPLEMENTATION','2011-04-19 15:04:51','ADMIN','2011-04-19 15:33:04','LIVE',1),(517,5020,0,50.20000,103,126,1,'N','businessadmin','Business Administration','','','','','','IMPLEMENTATION','2011-04-29 15:04:44','ADMIN','2011-04-29 15:19:15','LIVE',1),(518,502000,5020,5020.00000,104,105,2,'N','businessadmin','Support Services','','','','','','IMPLEMENTATION','2011-04-29 15:04:44','ADMIN','2011-04-29 15:19:20','LIVE',1),(530,509001,5090,5090.00977,162,167,2,'N','enquiry','Sales','','','','','','IMPLEMENTATION','2012-06-16 23:06:19','ADMIN','2012-06-16 23:58:07','LIVE',1),(531,50900150,509001,509001.50000,163,164,3,'L','enquiry','Orders','magicon016.png%IMG%','orders_enq','orders_enq/enquiry_custom','vw,pr','df,ex','IMPLEMENTATION','2012-06-16 23:06:19','ADMIN','2012-06-16 23:58:21','LIVE',1),(532,50900151,509001,509001.50000,165,166,3,'L','enquiry','Delivery Notes','magicon016.png%IMG%','deliverynotes_enq','deliverynotes_enq/enquiry_custom','vw,pr','df,ex','IMPLEMENTATION','2012-06-16 23:06:19','ADMIN','2012-06-16 23:58:34','LIVE',1),(534,510000,5100,5100.00000,170,183,2,'N','report','Standard','','','','','','IMPLEMENTATION','2012-07-22 20:07:36','ADMIN','2012-07-22 20:46:45','LIVE',1),(535,51000050,510000,510000.50000,171,172,3,'L','report','Sales','','sales_rpt','','vw,pr','','IMPLEMENTATION','2012-07-22 20:07:36','ADMIN','2012-07-22 20:47:01','LIVE',1),(536,51000051,510000,510000.50000,173,174,3,'L','report','Outstanding Balances','','outbalances_rpt','','vw,pr','','IMPLEMENTATION','2012-07-22 20:07:36','ADMIN','2012-07-22 20:47:12','LIVE',1),(537,51000052,510000,510000.53125,175,176,3,'L','report','Stock Reorder','','stockreorder_rpt','','vw,pr','','IMPLEMENTATION','2012-07-22 20:07:36','ADMIN','2012-07-22 20:47:25','LIVE',1),(538,51000053,510000,510000.53125,177,178,3,'L','report','Till','','till_rpt','','vw,pr','','IMPLEMENTATION','2012-07-22 20:07:36','ADMIN','2012-07-22 20:47:38','LIVE',1),(539,51000054,510000,510000.53125,179,180,3,'L','report','Checkout Status','','chkoutstatus_rpt','','vw,pr','','IMPLEMENTATION','2012-07-22 20:07:36','ADMIN','2012-07-22 20:47:52','LIVE',1),(601,502001,5020,5020.00977,106,109,2,'N','businessadmin','Batches','','','','','','IMPLEMENTATION','2012-07-21 20:07:36','ADMIN','2012-07-21 20:16:48','LIVE',1),(603,510001,5100,5100.00977,184,185,2,'N','report','Custom','','','','','','IMPLEMENTATION','2012-07-22 20:07:36','ADMIN','2012-07-22 20:48:03','LIVE',1),(800,502002,5020,5020.02002,110,117,2,'N','businessadmin','Specimen Definitions','','','','','','IMPLEMENTATION','2012-09-24 14:09:27','ADMIN','2012-09-24 14:27:03','LIVE',1),(801,50200250,502002,502002.50000,111,112,3,'L','businessadmin','Specimen Blood','magicon016.png%IMG%','specimendef_blood','specimendef_blood/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-09-24 14:09:27','ADMIN','2012-09-24 14:27:29','LIVE',1),(802,50200251,502002,502002.50000,113,114,3,'L','businessadmin','Specimen Urine','magicon016.png%IMG%','specimendef_urine','specimendef_urine/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-09-24 14:09:27','ADMIN','2012-09-24 14:27:40','LIVE',1),(803,50200252,502002,502002.53125,115,116,3,'L','businessadmin','Specimen CSF','magicon016.png%IMG%','specimendef_csf','specimendef_csf/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-09-24 14:09:27','ADMIN','2012-09-24 14:27:50','LIVE',1),(804,502003,5020,5020.02979,118,125,2,'N','businessadmin','Sample Definitions','','','','','','IMPLEMENTATION','2012-09-24 14:09:27','ADMIN','2012-09-24 14:28:20','LIVE',1),(805,50200350,502003,502003.50000,119,120,3,'L','businessadmin','Sample Blood','magicon016.png%IMG%','sampledef_blood','sampledef_blood/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-09-24 14:09:27','ADMIN','2012-09-24 14:28:33','LIVE',1),(806,50200351,502003,502003.50000,121,122,3,'L','businessadmin','Sample Urine','magicon016.png%IMG%','sampledef_urine','sampledef_urine/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-09-24 14:09:27','ADMIN','2012-09-24 14:28:50','LIVE',1),(807,50200352,502003,502003.53125,123,124,3,'L','businessadmin','Sample CSF','magicon016.png%IMG%','sampledef_csf','sampledef_csf/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','IMPLEMENTATION','2012-09-24 14:09:27','ADMIN','2012-09-24 14:29:01','LIVE',1);
/*!40000 ALTER TABLE `menudefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menudefs_hs`
--

DROP TABLE IF EXISTS `menudefs_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menudefs_hs` (
  `id` int(11) unsigned NOT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) unsigned NOT NULL,
  `sortpos` float(16,5) NOT NULL,
  `nleft` int(11) DEFAULT NULL,
  `nright` int(11) DEFAULT NULL,
  `nlevel` int(11) DEFAULT NULL,
  `node_or_leaf` enum('L','N') NOT NULL,
  `module` varchar(50) NOT NULL,
  `label_input` varchar(255) NOT NULL,
  `label_enquiry` varchar(255) NOT NULL,
  `url_input` varchar(255) DEFAULT NULL,
  `url_enquiry` varchar(255) DEFAULT NULL,
  `controls_input` varchar(255) DEFAULT NULL,
  `controls_enquiry` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menudefs_hs`
--

LOCK TABLES `menudefs_hs` WRITE;
/*!40000 ALTER TABLE `menudefs_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `menudefs_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menudefs_is`
--

DROP TABLE IF EXISTS `menudefs_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menudefs_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `sortpos` float(16,5) DEFAULT NULL,
  `nleft` int(11) DEFAULT NULL,
  `nright` int(11) DEFAULT NULL,
  `nlevel` int(11) DEFAULT NULL,
  `node_or_leaf` enum('L','N') DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `label_input` varchar(255) DEFAULT NULL,
  `label_enquiry` varchar(255) DEFAULT NULL,
  `url_input` varchar(255) DEFAULT NULL,
  `url_enquiry` varchar(255) DEFAULT NULL,
  `controls_input` varchar(255) DEFAULT NULL,
  `controls_enquiry` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menudefs_is`
--

LOCK TABLES `menudefs_is` WRITE;
/*!40000 ALTER TABLE `menudefs_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `menudefs_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menudefs_users`
--

DROP TABLE IF EXISTS `menudefs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menudefs_users` (
  `id` int(11) unsigned DEFAULT NULL,
  `menu_id` int(11) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sortpos` float(16,5) DEFAULT NULL,
  `nleft` int(11) DEFAULT NULL,
  `nright` int(11) DEFAULT NULL,
  `nlevel` int(11) DEFAULT NULL,
  `node_or_leaf` enum('L','N') CHARACTER SET utf8 DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `label_input` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `label_enquiry` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url_input` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url_enquiry` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `controls_input` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `controls_enquiry` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inputter` varchar(50) CHARACTER SET utf8 NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) CHARACTER SET utf8 DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`,`inputter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menudefs_users`
--

LOCK TABLES `menudefs_users` WRITE;
/*!40000 ALTER TABLE `menudefs_users` DISABLE KEYS */;
INSERT INTO `menudefs_users` VALUES (413,50400154,504001,504001.53125,145,146,3,'L','sales','Delivery Note','magicon016.png%IMG%','deliverynote','deliverynote/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(412,50400153,504001,504001.53125,143,144,3,'L','sales','Inventory Checkout','magicon016.png%IMG%','inventchkout','inventchkout/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(411,50400152,504001,504001.53125,141,142,3,'L','sales','Payment','magicon016.png%IMG%','payment','payment/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(409,50400150,504001,504001.50000,137,138,3,'L','sales','Estimator','','estimator','','vw,nw','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(410,50400151,504001,504001.50000,139,140,3,'L','sales','Order','magicon016.png%IMG%','order','order/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(405,504001,5040,5040.00977,136,147,2,'N','sales','Orders & Payments','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(407,50400051,504000,504000.50000,131,132,3,'L','sales','Inventory','magicon016.png%IMG%','inventory','inventory/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(408,50400052,504000,504000.53125,133,134,3,'L','sales','Inventory Update Type','magicon016.png%IMG%','inventupdtype','inventupdtype/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(403,5040,0,50.40000,127,158,1,'N','sales','Sales','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(404,504000,5040,5040.00000,128,135,2,'N','sales','Products','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(406,50400050,504000,504000.50000,129,130,3,'L','sales','Product','magicon016.png%IMG%','product','product/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(401,5010,0,50.10000,99,102,1,'N','customer','Customers','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(402,501050,5010,5010.50000,100,101,2,'L','customer','Customer','magicon016.png%IMG%','customer','customer/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(61,250351,2503,2503.51001,95,96,3,'L','developer','Table Reset Configuration','magicon016.png%IMG%','tableresetconfig','tableresetconfig/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(60,250350,2503,2503.50000,93,94,3,'L','developer','Run Table Reset','magicon016.png%IMG%','tableresetrun','tableresetrun/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(59,2503,25,25.03000,92,97,2,'N','developer','Table Administration','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(58,250251,2502,2502.51001,89,90,3,'L','developer','Report Refresh Configuration','magicon016.png%IMG%','reportrefreshconfig','reportrefreshconfig/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(57,250250,2502,2502.50000,87,88,3,'L','developer','Run Report Refresh','magicon016.png%IMG%','runreportrefresh','runreportrefresh/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(17,2501,25,25.01000,82,85,2,'N','developer','Enquiry Administration','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(56,250055,2501,2501.50000,83,84,3,'L','developer','Fixed Selection','magicon016.png%IMG%','fixedselection','fixedselection/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(55,250054,2500,2500.54004,79,80,3,'L','developer','Report Definition','magicon016.png%IMG%','reportdef','reportdef/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(19,2502,25,25.02000,86,91,2,'N','developer','Report Administration','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(54,250053,2500,2500.53003,77,78,3,'L','developer','Enquiry Definition','magicon016.png%IMG%','enqdef','enqdef/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(49,250050,2500,2500.50000,71,72,3,'L','developer','Param Definition','magicon016.png%IMG%','param','param/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(50,250051,2500,2500.51001,73,74,3,'L','developer','Form Definition','magicon016.png%IMG%','formdef','formdef/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(53,250052,2500,2500.52002,75,76,3,'L','developer','Menu Definition','magicon016.png%IMG%','menudef','menudef/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(4,25,0,0.25000,69,98,1,'N','developer','Developer','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(15,2500,25,25.00000,70,81,2,'N','developer','Definition','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(52,200452,2004,2004.52002,65,66,3,'L','sysadmin','CSV','magicon016.png%IMG%','csv','csv/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(31,2003,20,20.03000,54,59,2,'N','sysadmin','End Of Day','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(806,50200351,502003,502003.50000,121,122,3,'L','businessadmin','Sample Urine','magicon016.png%IMG%','sampledef_urine','sampledef_urine/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(807,50200352,502003,502003.53125,123,124,3,'L','businessadmin','Sample CSF','magicon016.png%IMG%','sampledef_csf','sampledef_csf/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(46,200350,2003,2003.50000,55,56,3,'L','sysadmin','EOD Configuration','magicon016.png%IMG%','endofday','endofday/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(47,200351,2003,2003.51001,57,58,3,'L','sysadmin','Run EOD','magicon016.png%IMG%','runeod','runeod/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(32,2004,20,20.04000,60,67,2,'N','sysadmin','System Maintenance','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(48,200450,2004,2004.51001,61,62,3,'L','sysadmin','Record Lock','magicon016.png%IMG%','recordlock','recordlock/enquiry_default','if,vw,de','ls','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(51,200451,2004,2004.51001,63,64,3,'L','sysadmin','PDF','magicon016.png%IMG%','pdf','pdf/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(805,50200350,502003,502003.50000,119,120,3,'L','businessadmin','Sample Blood','magicon016.png%IMG%','sampledef_blood','sampledef_blood/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(45,200253,2002,2002.55005,51,52,3,'L','sysadmin','Recurrence','magicon016.png%IMG%','recurrence','recurrence/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(804,502003,5020,5020.02979,118,125,2,'N','businessadmin','Sample Definitions','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(43,200250,2002,2002.53003,47,48,3,'L','sysadmin','Weekday','magicon016.png%IMG%','weekday','weekday/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(41,200150,2001,2001.50000,41,42,3,'L','sysadmin','Country','magicon016.png%IMG%','country','country/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(800,502002,5020,5020.02002,110,117,2,'N','businessadmin','Specimen Definitions','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(42,200151,2001,2001.51001,43,44,3,'L','sysadmin','Region','magicon016.png%IMG%','region','region/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(801,50200250,502002,502002.50000,111,112,3,'L','businessadmin','Specimen Blood','magicon016.png%IMG%','specimendef_blood','specimendef_blood/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(44,200251,2002,2002.54004,49,50,3,'L','sysadmin','Daytime','magicon016.png%IMG%','daytime','daytime/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(803,50200252,502002,502002.53125,115,116,3,'L','businessadmin','Specimen CSF','magicon016.png%IMG%','specimendef_csf','specimendef_csf/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(30,2002,20,20.02000,46,53,2,'N','sysadmin','Dates & Times','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(802,50200251,502002,502002.50000,113,114,3,'L','businessadmin','Specimen Urine','magicon016.png%IMG%','specimendef_urine','specimendef_urine/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(13,2001,20,20.01000,40,45,2,'N','sysadmin','Countries & Regions','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(420,50200150,502001,502001.50000,107,108,3,'L','report','Batch Invoices','magicon016.png%IMG%','batchinvoice','batchinvoice/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(601,502001,5020,5020.00977,106,109,2,'N','businessadmin','Batches','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(35,200052,2000,2000.52002,37,38,3,'L','sysadmin','Department','magicon016.png%IMG%','department','department/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(34,200051,2000,2000.51001,35,36,3,'L','sysadmin','Branch','magicon016.png%IMG%','branch','branch/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(518,502000,5020,5020.00000,104,105,2,'N','businessadmin','Support Services','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(33,200050,2000,2000.50000,33,34,3,'L','sysadmin','System Configuration ','magicon016.png%IMG%','sysconfig','sysconfig/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(517,5020,0,50.20000,103,126,1,'N','businessadmin','Business Administration','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(3,20,0,0.20000,31,68,1,'N','sysadmin','System Administration','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(12,2000,20,20.00000,32,39,2,'N','sysadmin','System Configurations','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(603,510001,5100,5100.00977,184,185,2,'N','report','Custom','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(28,150150,1501,1501.50000,27,28,3,'L','useradmin','Role','magicon016.png%IMG%','roleadmin','roleadmin/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(421,51000055,510000,510000.56250,181,182,3,'L','report','Batch Invoices','','batchinvoices_rpt','','vw,pr','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(11,1501,15,15.01000,26,29,2,'N','useradmin','Roles','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(539,51000054,510000,510000.53125,179,180,3,'L','report','Checkout Status','','chkoutstatus_rpt','','vw,pr','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(538,51000053,510000,510000.53125,177,178,3,'L','report','Till','','till_rpt','','vw,pr','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(537,51000052,510000,510000.53125,175,176,3,'L','report','Stock Reorder','','stockreorder_rpt','','vw,pr','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(25,150052,1500,1500.52002,23,24,3,'L','useradmin','User Roles','magicon016.png%IMG%','userrole','userrole/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(24,150051,1500,1500.51001,21,22,3,'L','useradmin','User Password Reset','','userpasswdreset','','if,vw,iw,in,ao,as,rj,hd,va','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(23,150050,1500,1500.50000,19,20,3,'L','useradmin','User','magicon016.png%IMG%','useradmin','useradmin/enquiry_default','if,vw,nw,cp,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(536,51000051,510000,510000.50000,173,174,3,'L','report','Outstanding Balances','','outbalances_rpt','','vw,pr','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(534,510000,5100,5100.00000,170,183,2,'N','report','Standard','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(10,1500,15,15.00000,18,25,2,'N','useradmin','Users','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(535,51000050,510000,510000.50000,171,172,3,'L','report','Sales','','sales_rpt','','vw,pr','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(419,5100,0,51.00000,169,186,1,'N','report','Reports','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(2,15,0,0.15000,17,30,1,'N','useradmin','User Administration','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(40,100150,1001,1001.50000,13,14,3,'L','login','Change Password','magicon016.png%IMG%','userchangepassword','userchangepassword/enquiry_default','vw,in,as,rj,va','ls,is','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(6,1001,10,10.01000,12,15,2,'N','login','User','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(532,50900151,509001,509001.50000,165,166,3,'L','enquiry','Delivery Notes','magicon016.png%IMG%','deliverynotes_enq','deliverynotes_enq/enquiry_custom','vw,pr','df,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(531,50900150,509001,509001.50000,163,164,3,'L','enquiry','Orders','magicon016.png%IMG%','orders_enq','orders_enq/enquiry_custom','vw,pr','df,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(39,100053,1000,1000.53003,9,10,3,'L','login',' ','Sent','','message/sent','df,ls,is,hs,ex','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(38,100052,1000,1000.52002,7,8,3,'L','login',' ','Drafts','','message/drafts','df,ls,is,hs,ex','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(530,509001,5090,5090.00977,162,167,2,'N','enquiry','Sales','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(37,100051,1000,1000.51001,5,6,3,'L','login',' ','Inbox','','message/inbox','df,ls,is,hs,ex','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(515,509000,5090,5090.00000,160,161,2,'N','enquiry','Customer','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(509,5090,0,50.90000,159,168,1,'N','enquiry','Enquiries','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(1,10,0,0.10000,1,16,1,'N','login','My Account','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(418,50400253,504002,504002.53125,155,156,3,'L','sales','Cancel Payment','magicon016.png%IMG%','paymentcancel','paymentcancel/enquiry_default','if,vw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(36,100050,1000,1000.50000,3,4,3,'L','login','Message','magicon016.png%IMG%','message','message/enquiry_default','vw,nw,cp,iw,as,hd','ls,is,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(5,1000,10,10.00000,2,11,2,'N','login','Messages','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(417,50400252,504002,504002.53125,153,154,3,'L','sales','Till Transaction','magicon016.png%IMG%','tilltransaction','tilltransaction/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(416,50400251,504002,504002.50000,151,152,3,'L','sales','Manage Till','magicon016.png%IMG%','tillmanage','tillmanage/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(415,50400250,504002,504002.50000,149,150,3,'L','sales','User Till','magicon016.png%IMG%','tilluser','tilluser/enquiry_default','if,vw,nw,in,ao,as,rj,hd,va','ls,is,hs,ex','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1),(414,504002,5040,5040.02002,148,157,2,'N','sales','Tills','','','','','','ADMIN','2012-10-13 19:36:46','SYSTEM','2012-10-13 19:36:46','LIVE',1);
/*!40000 ALTER TABLE `menudefs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) unsigned NOT NULL,
  `vw` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `recipient` varchar(50) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages_hs`
--

DROP TABLE IF EXISTS `messages_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages_hs` (
  `id` int(11) unsigned NOT NULL,
  `vw` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `recipient` varchar(50) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_hs`
--

LOCK TABLES `messages_hs` WRITE;
/*!40000 ALTER TABLE `messages_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages_is`
--

DROP TABLE IF EXISTS `messages_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vw` enum('Y','N') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `recipient` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) NOT NULL DEFAULT 'IHLD',
  `current_no` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10045 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_is`
--

LOCK TABLES `messages_is` WRITE;
/*!40000 ALTER TABLE `messages_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `id` int(11) unsigned NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `qty` int(11) unsigned NOT NULL,
  `unit_price` float(16,2) NOT NULL,
  `tax_percentage` float(4,2) NOT NULL,
  `taxable` enum('Y','N') NOT NULL,
  `discount_amount` float(16,2) NOT NULL,
  `discount_type` enum('DOLLAR','PERCENT') NOT NULL,
  `description` text NOT NULL,
  `description_type` enum('STANDARD','EXTENDED') NOT NULL,
  `user_text` varchar(255) DEFAULT NULL,
  `inventory_update` enum('STANDARD','RESERVE','BACKORDER','NONE') NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1001,'ORD20120707-0001','G10',1,1895.00,15.00,'Y',0.00,'PERCENT','GPS Tracking System - G10','STANDARD','?','STANDARD','ADMIN','2012-07-07 19:19:48','ADMIN','2012-07-07 19:19:48','LIVE',1),(1002,'ORD20120707-0001','SIM.BMO.PRE100',1,86.96,15.00,'Y',0.00,'PERCENT','Bmobile Pre-Paid SIM Card - Credit $100.00','STANDARD','?','STANDARD','ADMIN','2012-07-07 19:19:48','ADMIN','2012-07-07 19:19:48','LIVE',1),(1004,'ORD20120708-0002','24HRCAL',1,80.00,0.00,'N',0.00,'PERCENT','24 Hr Urine Calcium','STANDARD','?','STANDARD','ADMIN','2012-07-08 13:05:00','ADMIN','2012-07-08 13:05:00','LIVE',1),(1005,'ORD20120708-0002','24HRCREAT',1,80.00,0.00,'N',0.00,'PERCENT','24 Hr Urine Creatinine','STANDARD','?','STANDARD','ADMIN','2012-07-08 13:05:00','ADMIN','2012-07-08 13:05:00','LIVE',1),(1006,'ORD20120708-0003','APA',1,0.00,0.00,'N',0.00,'PERCENT','Anti Phospholipid Antibody','STANDARD','?','STANDARD','ADMIN','2012-07-08 13:13:08','ADMIN','2012-07-08 13:13:08','LIVE',1),(1007,'ORD20120708-0001','APA',1,0.00,0.00,'N',0.00,'PERCENT','Anti Phospholipid Antibody','STANDARD','?','STANDARD','ADMIN','2012-07-08 13:30:34','ADMIN','2012-07-08 13:30:34','LIVE',1),(1008,'ORD20120709-0001','24HRCAL',1,80.00,0.00,'N',0.00,'PERCENT','24 Hr Urine Calcium','STANDARD','?','STANDARD','ADMIN','2012-07-09 09:46:43','ADMIN','2012-07-09 09:46:43','LIVE',1),(1009,'ORD20120709-0001','24HRCREAT',1,80.00,0.00,'N',0.00,'PERCENT','24 Hr Urine Creatinine','STANDARD','?','STANDARD','ADMIN','2012-07-09 09:46:43','ADMIN','2012-07-09 09:46:43','LIVE',1),(1010,'ORD20120923-0001','24HRCREAT',1,80.00,0.00,'N',0.00,'PERCENT','24 Hr Urine Creatinine','STANDARD','?','STANDARD','ADMIN','2012-09-23 15:15:59','ADMIN','2012-09-23 15:15:59','LIVE',1);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails_hs`
--

DROP TABLE IF EXISTS `orderdetails_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails_hs` (
  `id` int(11) unsigned NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `qty` int(11) unsigned NOT NULL,
  `unit_price` float(16,2) NOT NULL,
  `tax_percentage` float(4,2) NOT NULL,
  `taxable` enum('Y','N') NOT NULL,
  `discount_amount` float(16,2) NOT NULL,
  `discount_type` enum('DOLLAR','PERCENT') NOT NULL,
  `description` text,
  `description_type` enum('STANDARD','EXTENDED') NOT NULL,
  `user_text` varchar(255) DEFAULT NULL,
  `inventory_update` enum('STANDARD','RESERVE','BACKORDER','NONE') NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails_hs`
--

LOCK TABLES `orderdetails_hs` WRITE;
/*!40000 ALTER TABLE `orderdetails_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails_is`
--

DROP TABLE IF EXISTS `orderdetails_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) DEFAULT NULL,
  `product_id` varchar(50) DEFAULT NULL,
  `qty` int(11) unsigned DEFAULT '0',
  `unit_price` float(16,2) DEFAULT '0.00',
  `tax_percentage` float(4,2) DEFAULT '0.00',
  `taxable` enum('Y','N') DEFAULT 'Y',
  `discount_amount` float(16,2) DEFAULT '0.00',
  `discount_type` enum('DOLLAR','PERCENT') DEFAULT 'DOLLAR',
  `description` text,
  `description_type` enum('STANDARD','EXTENDED') DEFAULT 'STANDARD',
  `user_text` varchar(255) DEFAULT NULL,
  `inventory_update` enum('STANDARD','RESERVE','BACKORDER','NONE') DEFAULT 'STANDARD',
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails_is`
--

LOCK TABLES `orderdetails_is` WRITE;
/*!40000 ALTER TABLE `orderdetails_is` DISABLE KEYS */;
INSERT INTO `orderdetails_is` VALUES (1003,NULL,NULL,0,0.00,0.00,'Y',0.00,'DOLLAR',NULL,'STANDARD',NULL,'STANDARD',NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `orderdetails_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) unsigned NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `customer_id` varchar(8) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `order_details` text NOT NULL,
  `order_date` date NOT NULL,
  `quotation_date` date NOT NULL,
  `invoice_date` date NOT NULL,
  `status_change_date` date NOT NULL,
  `inventory_checkout_type` enum('AUTO','MANUAL') NOT NULL,
  `inventory_update_type` enum('SALE','LOAN') DEFAULT NULL,
  `inventory_checkout_status` enum('NONE','PARTIAL','COMPLETED') NOT NULL,
  `invoice_note` varchar(256) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1006,'ORD20120923-0001','HEAD.OFFICE','JARH0001','ORDER.CONFIRMED','<?xml version=\'1.0\' standalone=\'yes\'?><rows><row><id>undefined</id><order_id>ORD20120923-0001</order_id><product_id>24HRCREAT</product_id><qty>1</qty><unit_price>80.00</unit_price><unit_total>80.00</unit_total><taxable>N</taxable><tax_percentage>0.00</tax_percentage><tax_amount>0.00</tax_amount><extended>80.00</extended><discount_type>PERCENT</discount_type><discount_amount>0.00</discount_amount><description>24 Hr Urine Creatinine</description><user_text>?</user_text></row></rows>','2012-09-23','2012-09-23','0000-00-00','2012-09-23','AUTO','SALE','COMPLETED','','','ADMIN','2012-09-23 15:15:59','ADMIN','2012-09-23 15:15:59','LIVE',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_hs`
--

DROP TABLE IF EXISTS `orders_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_hs` (
  `id` int(11) unsigned NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `customer_id` varchar(8) NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `order_details` text NOT NULL,
  `order_date` date NOT NULL,
  `quotation_date` date NOT NULL,
  `invoice_date` date NOT NULL,
  `status_change_date` date NOT NULL,
  `inventory_checkout_type` enum('AUTO','MANUAL') NOT NULL,
  `inventory_update_type` enum('SALE','LOAN') DEFAULT NULL,
  `inventory_checkout_status` enum('NONE','PARTIAL','COMPLETED') NOT NULL,
  `invoice_note` varchar(256) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_hs`
--

LOCK TABLES `orders_hs` WRITE;
/*!40000 ALTER TABLE `orders_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_is`
--

DROP TABLE IF EXISTS `orders_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) DEFAULT NULL,
  `branch_id` varchar(50) DEFAULT NULL,
  `customer_id` varchar(8) DEFAULT NULL,
  `order_status` varchar(20) DEFAULT 'NEW',
  `order_details` text,
  `order_date` date DEFAULT NULL,
  `quotation_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `status_change_date` date DEFAULT NULL,
  `inventory_checkout_type` enum('AUTO','MANUAL') DEFAULT 'AUTO',
  `inventory_update_type` enum('SALE','LOAN') DEFAULT 'SALE',
  `inventory_checkout_status` enum('NONE','PARTIAL','COMPLETED') DEFAULT 'NONE',
  `invoice_note` varchar(256) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_is`
--

LOCK TABLES `orders_is` WRITE;
/*!40000 ALTER TABLE `orders_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `params`
--

DROP TABLE IF EXISTS `params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `params` (
  `id` int(11) unsigned NOT NULL,
  `controller` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `formfields` text,
  `module` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `auth_mode_on` tinyint(1) NOT NULL DEFAULT '1',
  `index_field_on` tinyint(1) NOT NULL DEFAULT '1',
  `indexview` varchar(255) CHARACTER SET latin1 DEFAULT 'default_index',
  `viewview` varchar(255) CHARACTER SET latin1 DEFAULT 'default_view',
  `inputview` varchar(255) CHARACTER SET latin1 DEFAULT 'default_input',
  `authorizeview` varchar(255) CHARACTER SET latin1 DEFAULT 'default_authorize',
  `deleteview` varchar(255) CHARACTER SET latin1 DEFAULT 'default_delete',
  `enquiryview` varchar(255) CHARACTER SET latin1 DEFAULT 'default_enquiry',
  `indexfield` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'id' COMMENT 'name of field on indexview',
  `indexfieldvalue` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT 'value of field on indexview',
  `indexlabel` varchar(255) DEFAULT 'Id' COMMENT 'name of field on indexview',
  `appheader` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT 'name of app, usually backend table',
  `primarymodel` varchar(255) CHARACTER SET latin1 DEFAULT 'Site_Model',
  `tb_live` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `tb_inau` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `tb_hist` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `errormsgfile` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `inputter` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) CHARACTER SET latin1 DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`indexfield`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `params`
--

LOCK TABLES `params` WRITE;
/*!40000 ALTER TABLE `params` DISABLE KEYS */;
INSERT INTO `params` VALUES (1,'site',NULL,'core',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','','',NULL,NULL,'Site_Model',NULL,NULL,NULL,NULL,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(2,'message','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>vw</name><label>Message Read</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field>\r\n		<name>recipient</name><label>To</label><type>input</type><value></value><options>size=50 maxlength=50 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n		<popout><enable>yes</enable><table>vw_userbranches</table><selectfields>idname,fullname</selectfields><idfield>idname</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>users</table><selectfields>fullname</selectfields><idfield>idname</idfield><format>*</format>\r\n		</sideinfo>		\r\n	</field>\r\n	<field><name>sender</name><label>From</label><type>input</type><value></value><options>size=50 maxlength=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>subject</name><label>Subject</label><type>input</type><value></value><options>size=50 maxlength=100</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\r\n	<field><name>body</name><label>Message</label><type>textarea</type><value></value><options>rows=5 cols=80</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\r\n</formfields>\r\n','login',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','id',NULL,'Id','Message','Site_Model','messages','messages_is','messages_hs','message_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(3,'useradmin','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>idname</name><label>User Id</label><type>input</type><value></value><options>size=50 maxlength=50</options><onnew>enabled_po</onnew><onedit>readonly</onedit></field>\r\n	<field><name>username</name><label>Signon Name</label><type>input</type><value></value><options>size=32 maxlength=32</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>fullname</name><label>Full Name</label><type>input</type><value></value><options>size=50 maxlength=255</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>email</name><label>Email</label><type>input</type><value></value><options>size=50 maxlength=100</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>enabled</name><label>Enabled</label><type>dropdown</type><value></value><options>Y,N::Y,N</options><onnew></onnew><onedit></onedit></field>\r\n	<field><name>expiry_date</name><label>Expiry Date</label><type>date</type><value>2037/12/31</value><options></options><onnew>enabled_po</onnew><onedit>enabled_po</onedit></field>\r\n	<field><name>branch_id</name><label>Branch Id</label><type>input</type><value></value><options>size=50 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<popout><enable>yes</enable><table>branches</table><selectfields>id,branch_id,description,location,active</selectfields><idfield>branch_id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>branches</table><selectfields>description</selectfields><idfield>branch_id</idfield><format>*</format>\r\n		</sideinfo>\r\n	</field>\r\n	<field><name>department_id</name><label>Department Id</label><type>input</type><value></value><options>size=50 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<popout><enable>yes</enable><table>departments</table><selectfields>id,department_id,description</selectfields><idfield>department_id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>departments</table><selectfields>description</selectfields><idfield>department_id</idfield><format>*</format>\r\n		</sideinfo>\r\n	</field>\r\n	<field><name>password</name><label>Password</label><type>hidden</type><value></value><options></options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>logins</name><label>Logins</label><type>hidden</type><value></value><options></options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>last_login</name><label>Last Login</label><type>hidden</type><value></value><options></options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n</formfields>\r\n','useradmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','username','','Signon Name','User Administration (User)','Site_Model','users','users_is','users_hs','useradmin_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(4,'userpasswdreset','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options>size=0 maxlength=10</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>idname</name><label>User Id</label><type>hidden</type><value></value><options>size=0 maxlength=10</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>username</name><label>Signon Name</label><type>hidden</type><value></value><options>size=0 maxlength=10</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>password</name><label>Password</label><type>password</type><value></value><options>size=20 maxlength=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>\r\n','useradmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','username','','Signon Name','User Password Reset','Site_Model','users','users_is','users_hs','userpasswdreset_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(5,'userrole','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field>\r\n		<name>idname</name><label>User Id</label><type>input</type><value></value><options>size=50</options><onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n		<popout><enable>yes</enable><table>vw_core_users_noroles</table><selectfields>idname,fullname</selectfields><idfield>idname</idfield></popout>\r\n	</field>\r\n	<field><name>roles</name><label>Roles</label><type>textarea</type><value></value><options>rows=5 cols=80</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n</formfields>\r\n','useradmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','idname','','User Id','User Roles','Site_Model','userroles','userroles_is','userroles_hs','userrole_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(6,'param','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>controller</name><label>Controller</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>formfields</name><label>Formfields</label><type>textarea</type><value></value><options>rows=1 cols=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>module</name><label>Module</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>auth_mode_on</name><label>Auth Mode On</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>index_field_on</name><label>Index Field On</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>indexview</name><label>Index View</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>viewview</name><label>View View</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>inputview</name><label>Input View</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>authorizeview</name><label>Authorize View</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>deleteview</name><label>Delete View</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>enquiryview</name><label>Enquiry View</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>indexfield</name><label>Index Field</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>indexfieldvalue</name><label>Index Field Value</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>indexlabel</name><label>Index Label</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>appheader</name><label>App Header</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>primarymodel</name><label>Primary Model</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>tb_live</name><label>Table(live)</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>tb_inau</name><label>Table(inau)</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>tb_hist</name><label>Table(hist)</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>errormsgfile</name><label>Error Message File</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','developer',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','controller','','Param Id','Param Definition','Site_Model','params','params_is','params_hs','param_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(7,'formdef','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>controller</name><label>Controller</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>module</name><label>Module</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>formfields</name><label>Controls</label><type>textarea</type><value></value><options>rows=20 cols=120</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','developer',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','controller','','Form Id','Form Definition','Site_Model','params','params_is','params_hs','formdef_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(8,'menudef','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>menu_id</name><label>Menu Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>parent_id</name><label>Parent Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>sortpos</name><label>Sort Position</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>nleft</name><label>Nleft</label><type>hidden</type><value></value><options>size=50</options><onnew>disabled</onnew><onedit>disabled</onedit></field>\r\n	<field><name>nright</name><label>Nright</label><type>hidden</type><value></value><options>size=50</options><onnew>disabled</onnew><onedit>disabled</onedit></field>\r\n	<field><name>nlevel</name><label>Nlevel</label><type>hidden</type><value></value><options>size=50</options><onnew>disabled</onnew><onedit>disabled</onedit></field>\r\n	<field><name>node_or_leaf</name><label>Node Or Leaf</label><type>dropdown</type><value></value><options>L,N::L,N</options><onnew></onnew><onedit></onedit></field>\r\n	<field><name>module</name><label>Module</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>label_input</name><label>Label (Input)</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>label_enquiry</name><label>Label (Enquiry)</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>url_input</name><label>Url (Input)</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>url_enquiry</name><label>Url (Enquiry)</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>controls_input</name><label>Controls (Input)</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>controls_enquiry</name><label>Controls (Enquiry)</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>','developer',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','id','','Menu Id','Menu Definition','Site_Model','menudefs','menudefs_is','menudefs_hs','menudef_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(9,'recordlock','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>idname</name><label>User Id</label><type>hidden</type><value></value><options>size=50</options><onnew>readonly</onnew><onedit>disabled</onedit></field>\r\n	<field><name>lock_table</name><label>Table</label><type>hidden</type><value></value><options>size=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>record_id</name><label>Locked Record</label><type>hidden</type><value></value><options>size=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>pre_status</name><label>Pre-Locked Status</label><type>hidden</type><value></value><options>size=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n</formfields>','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','id','','Id','Record Lock','Site_Model','recordlocks','recordlocks','recordlocks','recordlock_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(10,'roleadmin','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>name</name><label>Role Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>description</name><label>Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>securityprofile</name><label>Security Profile</label><type>textarea</type><value></value><options>rows=25 cols=120</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n</formfields>\n','useradmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','name','','Role Id','Role Administration (Role)','Site_Model','roles','roles_is','roles_hs','roleadmin_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(11,'country','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>country_id</name><label>Country Id</label><type>input</type><value></value><options>size=3 maxlength=3</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>common_name</name><label>Common Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>formal_name</name><label>Formal Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>capital</name><label>Capital</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>type</name><label>Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>sub_type</name><label>Sub Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>sovereignty</name><label>Sovereignty</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>currency_code</name><label>Currency Code</label><type>input</type><value></value><options>size=3 maxlength=3</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>currency_name</name><label>Currency Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>telephone_code</name><label>Telephone Code</label><type>input</type><value></value><options>size=4 maxlength=4</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>iana_country_code</name><label>IANA Country Code</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','country_id','','Country Id','Country','Site_Model','countrys','countrys_is','countrys_hs','country_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(12,'weekday','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>weekday_id</name><label>Weekday Id</label><type>input</type><value></value><options>size=12</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','weekday_id','','Weekday Id','Weekday','Site_Model','weekdays','weekdays_is','weekdays_hs','weekday_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(13,'daytime','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>daytime_id</name><label>Daytime Id</label><type>input</type><value></value><options>size=7</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>description</name><label>Description</label><type>input</type><value></value><options>size=25</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','daytime_id','','Daytime Id','Daytime','Site_Model','daytimes','daytimes_is','daytimes_hs','daytime_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(14,'recurrence','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>recurrence_id</name><label>Recurrence Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>description</name><label>Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','recurrence_id','','Recurrence Id','Recurrence','Site_Model','recurrences','recurrences_is','recurrences_hs','recurrence_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(15,'branch','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>branch_id</name><label>Branch Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>description</name><label>Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>location</name><label>Location</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>region_id</name><label>Region Id</label><type>input</type><value></value><options>size=2 maxlength=2 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<popout><enable>yes</enable><table>regions</table><selectfields>id,area,region</selectfields><idfield>id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>regions</table><selectfields>area,region</selectfields><idfield>id</idfield><format>*;_*</format>\r\n		</sideinfo>\r\n	</field>\r\n	<field><name>active</name><label>Active</label><type>dropdown</type><value></value><options>Y,N::Y,N</options><onnew></onnew><onedit></onedit></field>\r\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','branch_id','','Branch Id','Branch','Site_Model','branches','branches_is','branches_hs','branch_error','IMPLEMENTATION','2011-04-13 15:04:26','ADMIN','2011-04-13 15:26:21','LIVE',1),(16,'region','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>area</name><label>Area</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>sub_region</name><label>Sub Region</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>region</name><label>Region</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field>\r\n		<name>country_id</name><label>Country Id</label><type>input</type><value></value><options>size=2 maxlength=2 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<popout><enable>yes</enable><table>countrys</table><selectfields>country_id,common_name,capital,currency_code</selectfields><idfield>country_id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>countrys</table><selectfields>common_name</selectfields><idfield>country_id</idfield><format>*</format>\r\n		</sideinfo>		\r\n	</field>\r\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','id','','Region Id','Region','Site_Model','regions','regions_is','regions_is','region_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(17,'department','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>department_id</name><label>Department Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>description</name><label>Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','department_id','','Department Id','Department','Site_Model','departments','departments_is','departments_hs','department_error','IMPLEMENTATION','2011-04-28 03:04:31','ADMIN','2011-04-28 03:23:54','LIVE',1),(18,'enqdef','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>controller</name><label>Controller</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>formfields</name><label>Formfields</label><type>textarea</type><value></value><options>rows=30 cols=120</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>tablename</name><label>Tablename</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>model</name><label>Model</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>view</name><label>View</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>enqheader</name><label>Enquiry Header</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>showfilter</name><label>Show Filter</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>printuser</name><label>Print Username</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>printdatetime</name><label>Print Datetime</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','developer',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','controller','','Enquirydef Id','Enquiry Definition','Site_Model','enquirydefs','enquirydefs_is','enquirydefs_hs','enquirydef_error','IMPLEMENTATION','2011-04-28 03:04:09','ADMIN','2011-04-28 03:24:04','LIVE',1),(19,'pdf','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>pdf_id</name><label>Pdf Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>controller</name><label>Controller</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>type</name><label>Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>html</name><label>HTML</label><type>textarea</type><value></value><options>rows=20 cols=120</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','pdf_id','','Pdf Id','Pdf','Site_Model','pdfs','pdfs_is','pdfs_hs','pdf_error','IMPLEMENTATION','2011-05-03 22:05:05','ADMIN','2011-05-03 22:14:35','LIVE',1),(20,'csv','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>csv_id</name><label>Csv Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>controller</name><label>Controller</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>type</name><label>Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>csv</name><label>CSV</label><type>textarea</type><value></value><options>rows=20 cols=120</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','id','','Csv Id','Csv','Site_Model','csvs','csvs_is','csvs_hs','csv_error','IMPLEMENTATION','2011-05-04 20:05:05','ADMIN','2011-05-04 21:03:26','LIVE',1),(21,'fixedselection','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>fixedselection_id</name><label>Controller</label><type>input</type><value></value><options>size=50</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n		<popout><enable>yes</enable><table>vw_core_fixedselections_available</table><selectfields>fixedselection_id</selectfields><idfield>fixedselection_id</idfield></popout>\r\n	</field>\r\n	<field><name>enquiry_type</name><label>Enquiry Type</label><type>dropdown</type><value></value><options>default,custom::default,custom</options><onnew></onnew><onedit></onedit></field>\r\n	<field><name>formfields</name><label>Formfields</label><type>textarea</type><value></value><options>rows=10 cols=120</options><onnew>readonly</onnew><onedit>readonly</onedit>\r\n		<sidelink>\r\n			<link><src>javascript:void(0)</src><attr>onclick=$.fixedselection_LoadForm()</attr><text>Update</text></link>\r\n		</sidelink>\r\n	</field>\r\n</formfields>\r\n','developer',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','fixedselection_id','','Fixedselection Id','Fixed Selection','Site_Model','fixedselections','fixedselections_is','fixedselections_hs','fixedselection_error','IMPLEMENTATION','2011-05-05 19:05:03','ADMIN','2011-05-05 20:02:27','LIVE',1),(22,'tableresetconfig','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>reset_id</name><label>Reset Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>reset_profile</name><label>Reset Profile</label><type>textarea</type><value></value><options>rows=10 cols=120</options><onnew>readonly</onnew><onedit>readonly</onedit>\r\n		<sidelink>\r\n			<link><src>javascript:void(0)</src><attr>onclick=tableresetconfig.LoadConfigForm()</attr><text>Configure</text></link>\r\n		</sidelink>\r\n	</field>\r\n</formfields>\r\n','developer',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','reset_id','','Reset Id','Table Reset Configuration','Site_Model','tableresetconfigs','tableresetconfigs_is','tableresetconfigs_hs','tableresetconfig_error','IMPLEMENTATION','2011-05-08 15:05:30','ADMIN','2011-05-08 16:25:35','LIVE',1),(23,'tableresetrun','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>resetconfig_id</name><label>Resetconfig Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>lastrun_date</name><label>Lastrun Date</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>log</name><label>Log</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','developer',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','resetconfig_id','','Reset Config Id','Table Reset Run','Site_Model','tableresetruns','tableresetruns_is','tableresetruns_hs','tableresetrun_error','IMPLEMENTATION','2011-05-08 16:05:12','ADMIN','2011-05-08 16:25:44','LIVE',1),(24,'sysconfig','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>sysconfig_id</name><label>Sysconfig Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>initialization_date</name><label>Initialization Date</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>global_authmode_on</name><label>Global Authmode On</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>global_indexfield_on</name><label>Global Indexfield On</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>app_version</name><label>App Version</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>db_version</name><label>Db Version</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>environment</name><label>Environment</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\n','sysadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','id','','Sysconfig Id','Sysconfig','Site_Model','sysconfigs','sysconfigs_is','sysconfigs_hs','sysconfig_error','IMPLEMENTATION','2011-05-11 17:05:29','ADMIN','2011-05-11 17:35:46','LIVE',1),(25,'userchangepassword','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options>size=0 maxlength=10</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>idname</name><label>User Id</label><type>hidden</type><value></value><options>size=0 maxlength=10</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>username</name><label>Signon Name</label><type>hidden</type><value></value><options>size=0 maxlength=10</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>password</name><label>Password</label><type>password</type><value></value><options>size=20 maxlength=50</options><onnew>readonly</onnew><onedit>readonly_po</onedit>\r\n		<sidelink>\r\n			<link><src>javascript:void(0)</src><attr>onclick=window.userchangepassword.LoadForm()</attr><text>Change</text></link>\r\n		</sidelink>\r\n	</field>\n</formfields>\r\n','login',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','username','','Signon Name','User Change Password','Site_Model','users','users_is','users_hs','userpasswdreset_error','ADMIN','2011-11-14 09:34:52','ADMIN','2011-11-14 09:35:17','LIVE',1),(26,'pdftemplate','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>template_id</name><label>Template Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>pdf_template_file</name><label>PDF Template File</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>pdf_logo_file</name><label>PDF Logo File</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>logo_filetype</name><label>Logo Filetype</label><type>dropdown</type><value></value><options>JPG,PNG,GIF::JPG,PNG,GIF</options><onnew></onnew><onedit></onedit></field>\n	<field><name>pdf_page_orientation</name><label>PDF Page Orientation</label><type>dropdown</type><value></value><options>P,L::Portrait,Landscape</options><onnew></onnew><onedit></onedit></field>\n	<field><name>pdf_unit</name><label>PDF Unit</label><type>dropdown</type><value></value><options>mm,cm,in,pt::mm,cm,in,pt</options><onnew></onnew><onedit></onedit></field>\n	<field><name>pdf_page_format</name><label>PDF Page Format</label><type>input</type><value></value><options>size=30</options><onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<popout><enable>yes</enable><table>_sys_pagesizes</table><selectfields>format_id,inch_width,inch_height,mm_width,mm_height</selectfields><idfield>format_id</idfield></popout>\r\n	</field>\n	<field><name>pdf_output</name><label>PDF Output</label><type>dropdown</type><value></value><options>I,D,F,FI,FD,E,S::I,D,F,FI,FD,E,S</options><onnew></onnew><onedit></onedit></field>\r\n</formfields>','developer',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','template_id','','Template Id','PDF Template','Site_Model','pdftemplates','pdftemplates_is','pdftemplates_hs','pdftemplate_error','IMPLEMENTATION','2012-05-30 15:05:47','ADMIN','2012-05-30 15:17:39','LIVE',1),(27,'reportdef','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>controller</name><label>Controller</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>formfields</name><label>Formfields</label><type>textarea</type><value></value><options>rows=30 cols=120</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>model</name><label>Model</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>view</name><label>View</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>rptheader</name><label>Report Header</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>showfilter</name><label>Show Filter</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>printuser</name><label>Print Username</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>printdatetime</name><label>Print Datetime</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>','developer',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','controller','','Reportdef Id','Report Definition','Site_Model','reportdefs','reportdefs_is','reportdefs_hs','reportdef_error','ADMIN','2012-07-22 21:18:53','ADMIN','2012-07-22 21:21:42','LIVE',1),(28,'batchinvoice','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>batch_id</name><label>Batch Id</label><type>input</type><value></value><options>size=20</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>batch_date</name><label>Batch Date</label><type>date</type><value></value><options>size=10</options><onnew>enabled_po</onnew><onedit>readonly</onedit></field>\n	<field><name>batch_description</name><label>Batch Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>batch_type</name><label>Batch Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled_po</onnew><onedit>enabled_po</onedit>\n		<popout><enable>yes</enable><table>vw_batchtypes</table><selectfields>type</selectfields><idfield>type</idfield></popout>\n	</field>\n	<field><name>batch_details</name><label>Batch Details</label><type>subform</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit>\n		<subform>\n			<subformcontroller>batchinvoicedetail</subformcontroller>\n			<subformonnew>enabled</subformonnew>\n			<subformonedit>enabled</subformonedit> \n		</subform>\n	</field>\n	<field><name>comments</name><label>Comments</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew></onnew><onedit></onedit></field>\n</formfields>','businessadmin',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','batch_id','','Batch Id','Batch Invoices','Site_Model','batchinvoices','batchinvoices_is','batchinvoices_hs','batchinvoice_error','ADMIN','2012-07-24 23:46:23','ADMIN','2012-07-24 23:51:38','LIVE',1),(29,'batchinvoicedetail','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>batch_id</name><label>Batch Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>invoice_id</name><label>Invoice Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>alt_invoice_id</name><label>Alt_Invoice Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>order_id</name><label>Order Id</label><type>input</type><value></value><options>size=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>order_date</name><label>Order Date</label><type>date</type><value></value><options>size=10 maxlength=10</options><onnew>enabled_po</onnew><onedit>readonly</onedit></field>\r\n	<field><name>first_name</name><label>First Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>last_name</name><label>Last Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>payment_total</name><label>Payment Total</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>payment_type</name><label>Payment Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<subformfields>\r\n		<subfield><subname>order_id</subname><sublabel>Order Id</sublabel><width>140</width><align>left</align><formatter></formatter><editor>{type:\'combobox\',options:{valueField:\'order_id\',textField:\'order_id\',url:url_orders,onSelect:eominvoice_GetOrderData, mode:\'remote\',required:true}}</editor></subfield>\r\n		<subfield><subname>invoice_id</subname><sublabel>Invoice Id</sublabel><width>80</width><align>left</align><editor></editor></subfield>\r\n		<subfield><subname>alt_invoice_id</subname><sublabel>Alt Invoice Id</sublabel><width>80</width><align>left</align><editor>{type:\'numberbox\',options:{required:true}}</editor></subfield>\r\n		<subfield><subname>order_date</subname><sublabel>Order Date</sublabel><width>80</width><align>left</align><editor></editor></subfield>\r\n		<subfield><subname>first_name</subname><sublabel>First Name</sublabel><width>80</width><align>left</align><editor></editor></subfield>\r\n		<subfield><subname>last_name</subname><sublabel>Last Name</sublabel><width>80</width><align>left</align><editor></editor></subfield>\r\n		<subfield><subname>order_details</subname><sublabel>Order Details</sublabel><width>140</width><align>left</align><editor></editor></subfield>\r\n		<subfield><subname>extended_total</subname><sublabel>Extended</sublabel><width>50</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>tax_total</subname><sublabel>Tax</sublabel><width>50</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>order_total</subname><sublabel>Total</sublabel><width>50</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>payment_total</subname><sublabel>Payments</sublabel><width>50</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>balance</subname><sublabel>Balance</sublabel><width>50</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>payment_type</subname><sublabel>Payment Type</sublabel><width>140</width><align>left</align><editor></editor></subfield>\r\n		<subfield><subname>batch_id</subname><sublabel>Batch Id</sublabel><width>140</width><align>left</align><editor></editor></subfield>\r\n		<subfield><subname>id</subname><sublabel>Id</sublabel><width>50</width><align>left</align><editor></editor></subfield>\r\n	</subformfields>\r\n</formfields>\r\n','businessadmin',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','id','','Id','End Of Month Invoice Details','Site_Model','batchinvoicedetails','batchinvoicedetails_is','batchinvoicedetails_hs','batchinvoicedetail_error','IMPLEMENTATION','0000-00-00 00:00:00','ADMIN','2012-07-21 21:18:51','LIVE',1),(401,'customer','<?xml version=\'1.0\' standalone=\'yes\'?>\r\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>customer_id</name><label>Customer Id</label><type>input</type><value></value><options>size=10</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>customer_type</name><label>Customer Type</label><type>dropdown</type><value></value><options>INDIVIDUAL,COMPANY::INDIVIDUAL,COMPANY</options><onnew></onnew><onedit></onedit></field>\r\n	<field><name>first_name</name><label>First Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>last_name</name><label>Last Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>address1</name><label>Street</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>address2</name><label>Village</label><type>input</type><value></value><options>size=50</options>\r\n		<onnew>enabled_po</onnew><onedit>enabled_po</onedit>\r\n		<popout><enable>yes</enable><table>regions</table><selectfields>area</selectfields><idfield>area</idfield></popout>\r\n	</field>\r\n	<field><name>city</name><label>City</label><type>input</type><value></value><options>size=50</options>\r\n		<onnew>enabled_po</onnew><onedit>enabled_po</onedit>\r\n		<popout><enable>yes</enable><table>regions</table><selectfields>area</selectfields><idfield>area</idfield></popout>\r\n	</field>\r\n	<field><name>region_id</name><label>Region Id</label><type>input</type><value></value><options>size=2 maxlength=2 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<popout><enable>yes</enable><table>regions</table><selectfields>id,area,region</selectfields><idfield>id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>regions</table><selectfields>area,region</selectfields><idfield>id</idfield><format>*;_*</format>\r\n		</sideinfo>\r\n	</field>\r\n	<field>\r\n		<name>country_id</name><label>Country Id</label><type>input</type><value></value><options>size=2 maxlength=2 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<popout><enable>yes</enable><table>countrys</table><selectfields>country_id,common_name,capital,currency_code</selectfields><idfield>country_id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>countrys</table><selectfields>common_name</selectfields><idfield>country_id</idfield><format>*</format>\r\n		</sideinfo>		\r\n	</field>\r\n	<field><name>date_of_birth</name><label>Date Of Birth</label><type>date</type><value></value><options>size=10 maxlength=10 onFocus=sidefunc.Update(%FUNC%,%PARAMFLD%,%SFFORMAT%) onKeyUp=sidefunc.Update(%FUNC%,%PARAMFLD%,%SFFORMAT%)</options>\r\n		<onnew>enabled_po</onnew><onedit>enabled_po</onedit>\r\n		<sidefunc><enable>yes</enable><func>dobtoage</func><idfield>date_of_birth</idfield><format>Age:_*</format></sidefunc>\r\n	</field>\r\n	<field><name>gender</name><label>Gender</label><type>dropdown</type><value></value><options>M,F,N::M,F,N</options><onnew></onnew><onedit></onedit></field>\r\n	<field><name>phone_home</name><label>Phone(Home)</label><type>input</type><value></value><options>size=7 maxlength=9</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>phone_work</name><label>Phone(Work)</label><type>input</type><value></value><options>size=7 maxlength=9</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>phone_mobile1</name><label>Phone Mobile 1</label><type>input</type><value></value><options>size=7 maxlength=9</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>phone_mobile2</name><label>Phone Mobile 2</label><type>input</type><value></value><options>size=7 maxlength=9</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>email_address</name><label>Email Address</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>driver_permit</name><label>Driver\'s Permit No.</label><type>input</type><value></value><options>size=10 maxlength=12</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n		<field><name>identification_card</name><label>Id Card No.</label><type>input</type><value></value><options>size=12 maxlength=14</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>passport</name><label>Passport No.</label><type>input</type><value></value><options>size=10 maxlength=12</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	\r\n	<field><name>branch_id</name><label>Branch Id</label><type>input</type><value>HEAD.OFFICE</value><options>size=50 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<popout><enable>yes</enable><table>branches</table><selectfields>id,branch_id,description,location,active</selectfields><idfield>branch_id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>branches</table><selectfields>description</selectfields><idfield>branch_id</idfield><format>*</format>\r\n		</sideinfo>\r\n	</field>	\r\n	<field><name>referrer_id</name><label>Referrer Id</label><type>input</type><value></value><options>size=10 maxlength=8 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>enabled_po</onnew><onedit>enabled_po</onedit>\r\n		<popout><enable>yes</enable><table>customers</table><selectfields>id,customer_id,first_name,last_name</selectfields><idfield>customer_id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>customers</table><selectfields>first_name,last_name</selectfields><idfield>customer_id</idfield><format>*_*</format>\r\n		</sideinfo>\r\n	</field>\r\n	<field><name>comments</name><label>Comments</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>','customer',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','customer_id','','Customer Id','Customer','Site_Model','customers','customers_is','customers_hs','customer_error','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(402,'product','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>product_id</name><label>Product Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>type</name><label>Type</label><type>dropdown</type><value></value><options>STOCK,SERVICE,PACKAGE::STOCK,SERVICE,PACKAGE</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>package_items</name><label>Package Items</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>product_description</name><label>Product Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>extended_description</name><label>Extended Description</label><type>textarea</type><value></value><options>rows=5 cols=80</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>category</name><label>Category</label><type>input</type><value></value><options>size=50</options><onnew>enabled_po</onnew><onedit>enabled_po</onedit>\r\n		<popout><enable>yes</enable><table>vw_distinct_product_category</table><selectfields>category</selectfields><idfield>category</idfield></popout>\r\n	</field>\r\n	<field><name>sub_category</name><label>Sub Category</label><type>input</type><value></value><options>size=50</options><onnew>enabled_po</onnew><onedit>enabled_po</onedit>\r\n		<popout><enable>yes</enable><table>vw_distinct_product_subcategory</table><selectfields>sub_category</selectfields><idfield>sub_category</idfield></popout>\r\n	</field>\r\n	<field><name>unit_price</name><label>Unit Price</label><type>input</type><value></value><options>size=10</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>taxable</name><label>Taxable</label><type>dropdown</type><value></value><options>Y,N::Y,N</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>tax_percentage</name><label>Tax (%)</label><type>input</type><value></value><options>size=10</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>transfer_code</name><label>Transfer Code</label><type>input</type><value></value><options>size=20</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>status</name><label>Status</label><type>dropdown</type><value></value><options>ACTIVE,INACTIVE,DISCONTINUED::ACTIVE,INACTIVE,DISCONTINUED</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','product_id','','Product Id','Product','Site_Model','products','products_is','products_hs','product_error','IMPLEMENTATION','2011-08-29 18:08:03','ADMIN','2011-08-29 18:58:51','LIVE',1),(403,'inventupdtype','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>update_type_id</name><label>Update Type Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>description</name><label>Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>stock_movement</name><label>Stock Movement</label><type>dropdown</type><value></value><options>STOCK.IN,STOCK.OUT,STOCK.RESET::STOCK.IN,STOCK.OUT,STOCK.RESET</options><onnew></onnew><onedit></onedit></field>\n	<field><name>comments</name><label>Comments</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>','sales',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','update_type_id','','Update Type Id','Inventory Update Type','Site_Model','inventupdtypes','inventupdtypes_is','inventupdtypes_hs','inventupdtype_error','ADMIN','2011-11-18 08:40:44','ADMIN','2011-11-18 08:40:55','LIVE',4),(404,'inventory','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>product_id</name><label>Product Id</label><type>input</type><value></value><options>size=25</options><onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n		<popout><enable>yes</enable><table>vw_inventprod_available</table><selectfields>id,product_id,description</selectfields><idfield>product_id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>products</table><selectfields>product_description</selectfields><idfield>product_id</idfield><format>*</format>\r\n		</sideinfo>\r\n	</field>\n	<field><name>branch_id</name><label>Branch Id</label><type>input</type><value></value><options>size=25</options><onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n		<popout><enable>yes</enable><table>branches</table><selectfields>id,branch_id,description</selectfields><idfield>branch_id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>branches</table><selectfields>description</selectfields><idfield>branch_id</idfield><format>*</format>\r\n		</sideinfo>\r\n	</field>\r\n	<field><name>qty_instock</name><label>Quantity Instock</label><type>input</type><value></value><options>size=12</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<sidelink>\r\n			<link><src>javascript:void(0)</src><attr>onclick=window.inventory.LoadForm()</attr><text>Adjust</text></link>\r\n		</sidelink>\r\n	</field>\n	<field><name>qty_diff</name><label>Difference</label><type>input</type><value></value><options>size=12</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>reorder_level</name><label>Reorder Level</label><type>input</type><value></value><options>size=12</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>last_update_type</name><label>Update Type</label><type>input</type><value></value><options>size=25 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n		<onnew>readonly_po</onnew><onedit>readonly_po</onedit>\n		<popout><enable>yes</enable><table>inventupdtypes</table><selectfields>id,update_type_id,description,stock_movement</selectfields><idfield>update_type_id</idfield></popout>\n		<sideinfo>\n			<enable>yes</enable><table>inventupdtypes</table><selectfields>description,stock_movement</selectfields><idfield>update_type_id</idfield><format>*;_*</format>\n		</sideinfo>\n	</field>\n	<field><name>comments</name><label>Comments</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>\r\n','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','id','','Inventory Id','Inventory','Site_Model','inventorys','inventorys_is','inventorys_hs','inventory_error','ADMIN','2011-11-18 08:49:35','ADMIN','2011-11-18 08:57:59','LIVE',1),(405,'order','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n <field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n <field><name>order_id</name><label>Order Id</label><type>input</type><value></value><options>size=25</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n <field><name>branch_id</name><label>Branch Id</label><type>input</type><value></value><options>size=25</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n <field><name>customer_id</name><label>Customer Id</label><type>input</type><value></value><options>size=10 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options>\r\n  <onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n  <popout><enable>yes</enable><table>customers</table><selectfields>id,customer_id,first_name,last_name,phone_mobile1</selectfields><idfield>customer_id</idfield></popout>\r\n  <sideinfo>\r\n   <enable>yes</enable><table>customers</table><selectfields>first_name,last_name</selectfields><idfield>customer_id</idfield><format>*_*</format>\r\n  </sideinfo>\r\n </field>\n <field><name>order_status</name><label>Order Status</label><type>input</type><value></value><options>size=25</options>\r\n  <onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n  <sidelink>\r\n   <link><src>javascript:void(0)</src><attr>onclick=order_StatusPopOut()</attr><text>%IMG%media/img/site/lubw020.png</text></link>\r\n  </sidelink>\r\n </field>\n <field><name>order_details</name><label>Order Details</label><type>subform</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit>\r\n  <subform>\r\n   <subformcontroller>orderdetail</subformcontroller>\r\n   <subformonnew>enabled</subformonnew>\r\n  \n<subformonedit>enabled</subformonedit> \r\n  </subform>\r\n </field>\n <field><name>order_date</name><label>Order Date</label><type>date</type><value></value><options>size=10 maxlength=10</options>\r\n  <onnew>enabled_po</onnew><onedit>readonly</onedit>\r\n </field> \r\n <field><name>quotation_date</name><label>Quotation Date</label><type>date</type><value></value><options>size=10 maxlength=10</options>\r\n  <onnew>enabled_po</onnew><onedit>enabled_po</onedit>\r\n </field>\r\n <field><name>invoice_date</name><label>Invoice Date</label><type>date</type><value></value><options>size=10 maxlength=10 </options>\r\n  <onnew>readonly</onnew><onedit>readonly</onedit>\r\n </field>\r\n <field><name>status_change_date</name><label>Status Change Date</label><type>date</type><value></value><options>size=10 maxlength=10</options>\r\n  <onnew>enabled_po</onnew><onedit>enabled_po</onedit>\r\n </field> \r\n <field><name>inventory_checkout_type</name><label>Inventory Checkout</label><type>input</type><value></value><options>size=15</options><onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n  <sidelink>\r\n   <link><src>javascript:void(0)</src><attr>onclick=order_ToggleCheckoutType()</attr><text>Change</text></link>\r\n  </sidelink>\r\n </field>\r\n <field><name>inventory_update_type</name><label>Inventory Update</label><type>input</type><value></value><options>size=15</options><onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n  <sidelink>\r\n   <link><src>javascript:void(0)</src><attr>onclick=order_ToggleUpdateType()</attr><text>Change</text></link>\r\n  </sidelink>\r\n </field>\r\n <field><name>inventory_checkout_status</name><label>Checkout Status</label><type>input</type><value></value><options>size=15</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n<field><name>invoice_note</name><label>Invoice Note</label><type>textarea</type><value></value><options>rows=2 cols=50 maxlength=256</options><onnew></onnew><onedit></onedit></field> \r\n<field><name>comments</name><label>Comments</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew></onnew><onedit></onedit></field>\r\n</formfields>','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','order_id','','Order Id','Order','Site_Model','orders','orders_is','orders_hs','order_error','IMPLEMENTATION','2011-11-20 01:11:16','ADMIN','2011-11-20 01:36:25','LIVE',1),(406,'orderdetail','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>order_id</name><label>Order Id</label><type>input</type><value></value><options>size=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>product_id</name><label>Product Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>qty</name><label>Qty</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>unit_price</name><label>Unit Price</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>taxable</name><label>Taxable</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>tax_percentage</name><label>Tax Amount</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>discount_type</name><label>Discount Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>discount_amount</name><label>Discount Amount</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>description_type</name><label>Description Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>description</name><label>Description</label><type>input</type><value></value>size=50<options></options><onnew>enabled</onnew><onedit>enabled</onedit></field><field><name>user_text</name><label>Inventory Update</label><type>input</type><value></value><options>size=60</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>user_text</name><label>User Text</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew></onnew><onedit></onedit></field>\r\n	<field><name>inventory_update</name><label>Inventory Update</label><type>input</type><value></value><options>size=60</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<subformfields>\r\n		<subfield><subname>product_id</subname><sublabel>Product Id</sublabel><width>120</width><align>left</align><formatter></formatter><editor>{type:\'combobox\',options:{valueField:\'product_id\',textField:\'product_id\', url:url_products,onSelect:order_GetProductData, mode:\'remote\',required:true}}</editor></subfield>\r\n		<subfield><subname>description</subname><sublabel>Description</sublabel><width>200</width><align>left</align><editor></editor></subfield>\r\n		<subfield><subname>qty</subname><sublabel>Qty</sublabel><width>30</width><align>center</align><editor>{type:\'numberbox\',options:{required:true}}</editor></subfield>\r\n		<subfield><subname>unit_price</subname><sublabel>Unit Price</sublabel><width>70</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>qty*unit_price:unit_total</subname><sublabel>Unit Total</sublabel><width>70</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>discount_amount</subname><sublabel>Discount</sublabel><width>70</width><align>right</align><editor>{type:\'numberbox\',options:{required:true,precision:2}}</editor></subfield>\r\n		<subfield><subname>round(func_OrderDetailSubTotal(qty,unit_price,discount_amount,discount_type),2):extended</subname><sublabel>Extended</sublabel><width>70</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>round(func_OrderDetailTaxTotal(qty,unit_price,discount_amount,tax_percentage,taxable,discount_type),2):tax_amount</subname><sublabel>Tax Amt</sublabel><width>50</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>round(func_OrderDetailOrderTotal(qty,unit_price,discount_amount,tax_percentage,taxable,discount_type),2):total</subname><sublabel>Total</sublabel><width>70</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>tax_percentage</subname><sublabel>Tax(%)</sublabel><width>50</width><align>right</align><editor></editor></subfield>\r\n		<subfield><subname>taxable</subname><sublabel>Taxable</sublabel><width>50</width><align>center</align><editor></editor></subfield>\r\n		<subfield><subname>discount_type</subname><sublabel>DiscountType</sublabel><width>50</width><align>left</align><editor>{type:\'checkbox\',options:{on:\'DOLLAR\',off:\'PERCENT\'}}</editor></subfield>\r\n		<subfield><subname>description_type</subname><sublabel>DescriptionType</sublabel><width>100</width><align>left</align><editor>{type:\'checkbox\',options:{on:\'EXTENDED\',off:\'STANDARD\'}}</editor></subfield>\r\n		<subfield><subname>user_text</subname><sublabel>User Text</sublabel><width>140</width><align>left</align><editor>{type:\'textarea\'}</editor></subfield>\r\n		<subfield><subname>order_id</subname><sublabel>Order Id</sublabel><width>140</width><align>left</align><editor></editor></subfield>\r\n		<subfield><subname>id</subname><sublabel>Id</sublabel><width>50</width><align>left</align><editor></editor></subfield>\r\n	</subformfields>\r\n</formfields>\r\n','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','id','','Orderdetail Id','Order Detail','Site_Model','orderdetails','orderdetails_is','orderdetails_hs','orderdetails_error','IMPLEMENTATION','2011-11-20 21:11:56','ADMIN','2011-11-20 21:29:00','LIVE',1),(407,'inventchkout','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>order_id</name><label>Order Id</label><type>input</type><value></value><options>size=20 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options><onnew>readonly</onnew><onedit>readonly</onedit>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>vw_inventchkout_sideinfo</table><selectfields>branch_id,first_name,last_name,order_status,inventory_checkout_status</selectfields><idfield>order_id</idfield><format>*;_*_*;_ORDER_STATUS:_*;_CHECKOUT_STATUS:_*</format>\r\n		</sideinfo>	\r\n	</field>\n	<field><name>checkout_details</name><label>Checkout Details</label><type>xmltable</type><value></value><options>rows=10 cols=100</options><onnew></onnew><onedit></onedit>\r\n	<subtable>\r\n		<subfield><subname>product_id</subname><sublabel>Product Id</sublabel><width>120</width><align>left</align></subfield>\r\n		<subfield><subname>description</subname><sublabel>Description</sublabel><width>200</width><align>left</align></subfield>\r\n		<subfield><subname>order_qty</subname><sublabel>Order Qty</sublabel><width>100</width><align>center</align></subfield>\r\n		<subfield><subname>filled_qty</subname><sublabel>Filled Qty</sublabel><width>100</width><align>center</align></subfield>\r\n		<subfield><subname>checkout_qty</subname><sublabel>Checkout Qty</sublabel><width>100</width><align>center</align><editor>{type:\'numberbox\',options:{required:true}}</editor></subfield>\r\n		<subfield><subname>status</subname><sublabel>Checkout Status</sublabel><width>125</width><align>left</align></subfield>\r\n	</subtable>\r\n	<sidelink>\r\n		<link><src>javascript:void(0)</src><attr>onclick=setCheckout()</attr><text>Set Checkout</text></link>\r\n	</sidelink>\r\n	</field>\n	<field><name>run</name><label>Run Inventory Update</label><type>dropdown</type><value></value><options>Y,N::Y,N</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>comments</name><label>Comments</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew></onnew><onedit></onedit></field>\r\n\r\n</formfields>','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','order_id','','Order Id','Inventory Checkout','Site_Model','inventchkouts','inventchkouts_is','inventchkouts_hs','inventchkout_error','IMPLEMENTATION','2012-01-11 01:01:33','ADMIN','2012-01-11 01:16:51','LIVE',1),(408,'deliverynote','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>deliverynote_id</name><label>Deliverynote Id</label><type>input</type><value></value><options>size=20</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>order_id</name><label>Order Id</label><type>input</type><value></value><options>size=20 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options><onnew>readonly</onnew><onedit>readonly</onedit>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>vw_inventchkout_sideinfo</table><selectfields>branch_id,first_name,last_name,order_status,inventory_checkout_status</selectfields><idfield>order_id</idfield><format>*;_*_*;_ORDER_STATUS:_*;_CHECKOUT_STATUS:_*</format>\r\n		</sideinfo>	\r\n	</field>	\r\n	<field><name>deliverynote_date</name><label>Deliverynote Date</label><type>date</type><value></value><options>size=10</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>details</name><label>Details</label><type>xmltable</type><value></value><options>rows=10 cols=100</options><onnew></onnew><onedit></onedit>\r\n		<subtable>\r\n			<subfield><subname>product_id</subname><sublabel>Product Id</sublabel><width>120</width><align>left</align></subfield>\r\n			<subfield><subname>description</subname><sublabel>Description</sublabel><width>400</width><align>left</align></subfield>\r\n			<subfield><subname>filled_qty</subname><sublabel>Quantity</sublabel><width>120</width><align>center</align></subfield>\r\n		</subtable>\r\n	</field>\r\n	<field><name>status</name><label>Status</label><type>input</type><value></value><options>size=30</options><onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<sidelink>\r\n			<link><src>javascript:void(0)</src><attr>onclick=order_ToggleStatus()</attr><text>Change</text></link>\r\n		</sidelink>\r\n	</field>\n	<field><name>delivered_by</name><label>Delivered By</label><type>input</type><value></value><options>size=30</options><onnew>enabled_po</onnew><onedit>enabled_po</onedit>\r\n		<popout><enable>yes</enable><table>vw_userbranches</table><selectfields>idname,fullname</selectfields><idfield>idname</idfield></popout>\r\n	</field>\n	<field><name>delivery_date</name><label>Delivery Date</label><type>date</type><value></value><options>size=10</options><onnew>readonly_po</onnew><onedit>readonly_po</onedit></field>\n	<field><name>returned_signed_by</name><label>Returned Signed By</label><type>input</type><value></value><options>size=30</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>returned_signed_date</name><label>Returned Signed Date</label><type>date</type><value></value><options>size=10</options><onnew>readonly_po</onnew><onedit>readonly_po</onedit></field>\n	<field><name>comments</name><label>Comments</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew></onnew><onedit></onedit></field>\r\n</formfields>','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','deliverynote_id','','Deliverynote Id','Delivery Note','Site_Model','deliverynotes','deliverynotes_is','deliverynotes_hs','deliverynote_error','IMPLEMENTATION','2012-04-30 13:04:01','ADMIN','2012-04-30 13:01:24','LIVE',1),(409,'tilluser','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>till_id</name><label>Till Id</label><type>input</type><value></value><options>size=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>till_user</name><label>Till User</label><type>input</type><value></value><options>size=30</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>till_date</name><label>Till Date</label><type>date</type><value></value><options>size=10 maxlength=10</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>initial_balance</name><label>Initial Balance</label><type>input</type><value></value><options>size=10 </options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>status</name><label>Status</label><type>dropdown</type><value></value><options>OPEN,CLOSED::OPEN,CLOSED</options><onnew></onnew><onedit></onedit></field>\n	<field><name>expiry_date</name><label>Expiry Date</label><type>date</type><value></value><options>size=10 maxlength=10</options><onnew>readonly</onnew><onedit>readonly</onedit></field>	\r\n	<field><name>expiry_time</name><label>Expiry Time</label><type>input</type><value></value><options>size=10 maxlength=10</options><onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n		<popout><enable>yes</enable><table>daytimes</table><selectfields>daytime_id,description</selectfields><idfield>daytime_id</idfield></popout>\r\n	</field>\n</formfields>','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','till_id','','Till_Id','Till User','Site_Model','tills','tills_is','tills_hs','till_error','IMPLEMENTATION','2012-05-02 19:05:38','ADMIN','2012-05-02 19:06:25','LIVE',1),(410,'tillmanage','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\r\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>till_id</name><label>Till Id</label><type>input</type><value></value><options>size=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>till_user</name><label>Till User</label><type>input</type><value></value><options>size=30</options><onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n		<popout><enable>yes</enable><table>vw_userbranches</table><selectfields>idname,fullname</selectfields><idfield>idname</idfield></popout>\r\n	</field>\r\n	<field><name>till_date</name><label>Till Date</label><type>date</type><value></value><options>size=10 maxlength=10</options><onnew>readonly_po</onnew><onedit>readonly</onedit></field>\r\n	<field><name>initial_balance</name><label>Initial Balance</label><type>input</type><value></value><options>size=10 </options><onnew>enabled</onnew><onedit>readonly</onedit></field>\r\n	<field><name>status</name><label>Status</label><type>dropdown</type><value></value><options>OPEN,CLOSED::OPEN,CLOSED</options><onnew></onnew><onedit></onedit></field>\r\n	<field><name>expiry_date</name><label>Expiry Date</label><type>date</type><value></value><options>size=10 maxlength=10</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>expiry_time</name><label>Expiry Time</label><type>input</type><value></value><options>size=10 maxlength=10</options><onnew>readonly_po</onnew><onedit>readonly_po</onedit>\r\n		<popout><enable>yes</enable><table>daytimes</table><selectfields>daytime_id,description</selectfields><idfield>daytime_id</idfield></popout>	\r\n	</field>\r\n</formfields>\r\n','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','till_id','','Till_Id','Till Manage','Site_Model','tills','tills_is','tills_hs','till_error','IMPLEMENTATION','2012-05-02 20:05:11','ADMIN','2012-05-02 20:02:16','LIVE',1),(411,'tilltransaction','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>transaction_id</name><label>Transaction Id</label><type>input</type><value></value><options>size=20</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>till_id</name><label>Till Id</label><type>input</type><value></value><options>size=50</options><onnew>enable</onnew><onedit>readonly</onedit></field>\n	<field><name>amount</name><label>Amount</label><type>input</type><value></value><options>size=12</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>transaction_type</name><label>Transaction Type</label><type>dropdown</type><value></value><options>CASH,CHEQUE,DEBIT.CARD,CREDIT.CARD::CASH,CHEQUE,DEBIT.CARD,CREDIT.CARD</options><onnew></onnew><onedit></onedit></field>\n	<field><name>transaction_date</name><label>Transaction Date</label><type>input</type><value></value><options>size=12</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>movement</name><label>Movement</label><type>dropdown</type><value></value><options>IN,OUT::IN,OUT</options><onnew></onnew><onedit></onedit></field>\n	<field><name>reason</name><label>Reason</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>comments</name><label>Comments</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew></onnew><onedit></onedit></field>\r\n</formfields>','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','transaction_id','','Tilltransaction Id','Till Transaction','Site_Model','tilltransactions','tilltransactions_is','tilltransactions_hs','tilltransaction_error','IMPLEMENTATION','2012-05-03 16:05:10','ADMIN','2012-05-03 16:02:13','LIVE',1),(412,'payment','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>payment_id</name><label>Payment Id</label><type>input</type><value></value><options>size=20</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>branch_id</name><label>Branch Id</label><type>input</type><value></value><options>size=25</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>till_id</name><label>Till Id</label><type>input</type><value></value><options>size=50</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>order_id</name><label>Order Id</label><type>input</type><value></value><options>size=20 onFocus=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%) onKeyUp=sideinfo.Update(%FIELDS%,%TABLE%,%IDFIELD%,%RETFIELD%,%FORMAT%)</options><onnew>readonly_po</onnew><onedit>readonly</onedit>\r\n		<popout><enable>yes</enable><table>vw_orderbalances_nonzero</table><selectfields>order_id,order_date,first_name,last_name,order_total,payment_total,balance,order_status,branch_id</selectfields><idfield>order_id</idfield></popout>\r\n		<sideinfo>\r\n			<enable>yes</enable><table>vw_inventchkout_sideinfo</table><selectfields>branch_id,first_name,last_name,order_status,order_date</selectfields><idfield>order_id</idfield><format>*;_*_*;_ORDER_STATUS:_*;_ORDER_DATE:_*</format>\r\n		</sideinfo>\r\n	</field>\n	<field><name>amount</name><label>Amount</label><type>input</type><value></value><options>size=20</options><onnew>enabled</onnew><onedit>enabled</onedit>\r\n		<sidefunc><enable>yes</enable><func></func><idfield></idfield><format>Order_Balance:_*</format></sidefunc>\r\n	</field>\n	<field><name>payment_type</name><label>Payment Type</label><type>dropdown</type><value></value><options>CASH,CHEQUE,DEBIT.CARD,CREDIT.CARD::CASH,CHEQUE,DEBIT.CARD,CREDIT.CARD</options><onnew></onnew><onedit></onedit></field>\n	<field><name>payment_date</name><label>Payment Date</label><type>date</type><value></value><options>size=10 maxlength=10</options><onnew>enabled_po</onnew><onedit>readonly</onedit></field>\r\n	<field><name>ref_no</name><label>Ref No</label><type>input</type><value></value><options>size=20</options><onnew>enabled</onnew><onedit>readonly</onedit></field>\n	<field><name>payment_status</name><label>Payment Status</label><type>input</type><value></value><options>size=20</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>comments</name><label>Comments</label><type>textarea</type><value></value><options>rows=2 cols=50</options><onnew></onnew><onedit></onedit></field>\n</formfields>','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','payment_id','','Payment Id','Payment','Site_Model','payments','payments_is','payments_hs','payment_error','IMPLEMENTATION','2012-05-04 09:05:31','ADMIN','2012-05-04 09:02:22','LIVE',1),(413,'paymentcancel','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>payment_id</name><label>Payment Id</label><type>input</type><value></value><options>size=20</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n	<field><name>amount</name><label>Amount</label><type>input</type><value></value><options>size=20</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\r\n	<field><name>payment_status</name><label>Payment Status</label><type>input</type><value></value><options>size=20</options><onnew>readonly</onnew><onedit>readonly</onedit></field>\n</formfields>','sales',0,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','payment_id','','Payment Id','Payment Cancel','Site_Model','payments','payments_is','payments_hs','payment_error','IMPLEMENTATION','2012-05-05 23:05:00','ADMIN','2012-05-05 23:35:52','LIVE',1),(801,'sampledef_blood','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>sampledef_id</name><label>Sampledef Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>test_id</name><label>Test Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>specimendef_id</name><label>Specimendef Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>test_location</name><label>Test Location</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>test_alt_name</name><label>Test Alt Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>department</name><label>Department</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>volume_required</name><label>Volume Required</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_unit</name><label>Result Unit</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_format</name><label>Result Format</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_range_normal_lower</name><label>Result Range Normal Lower</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_range_normal_upper</name><label>Result Range Normal Upper</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_normal</name><label>Result Normal</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_abnormal</name><label>Result Abnormal</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>testrun_day</name><label>Testrun Days</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>rushrun_day</name><label>Rushrun Days</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>sample_submit_cutoff_time</name><label>Sample Submit Cutoff Time</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>testrun_time</name><label>Testrun Times</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>','businessadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','sampledef_id','','Sampledef Id','Sample Definition(Blood)','Site_Model','sampledef_bloods','sampledef_bloods_is','sampledef_bloods_hs','sampledef_blood_error','IMPLEMENTATION','2012-09-24 15:09:52','ADMIN','2012-09-24 15:28:22','LIVE',1),(802,'sampledef_csf','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>sampledef_id</name><label>Sampledef Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>test_id</name><label>Test Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>specimendef_id</name><label>Specimendef Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>test_alt_name</name><label>Test Alt Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>department</name><label>Department</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>volume_required</name><label>Volume Required</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_unit</name><label>Result Unit</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_format</name><label>Result Format</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_range_normal_lower</name><label>Result Range Normal Lower</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_range_normal_upper</name><label>Result Range Normal Upper</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>testrun_day</name><label>Testrun Day</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_day</name><label>Result Day</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>sample_submit_cutoff_time</name><label>Sample Submit Cutoff Time</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_delivery_time</name><label>Result Delivery Time</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>','businessadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','sampledef_id','','Sampledef Id','Sample Definition(CSF)','Site_Model','sampledef_csfs','sampledef_csfs_is','sampledef_csfs_hs','sampledef_csf_error','IMPLEMENTATION','2012-09-24 15:09:30','ADMIN','2012-09-24 15:28:32','LIVE',1),(803,'sampledef_urine','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>sampledef_id</name><label>Sampledef Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>test_id</name><label>Test Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>specimendef_id</name><label>Specimendef Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>test_alt_name</name><label>Test Alt Name</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>department</name><label>Department</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>volume_required</name><label>Volume Required</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_unit</name><label>Result Unit</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_format</name><label>Result Format</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_range_normal_lower</name><label>Result Range Normal Lower</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_range_normal_upper</name><label>Result Range Normal Upper</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>testrun_day</name><label>Testrun Day</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_day</name><label>Result Day</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>sample_submit_cutoff_time</name><label>Sample Submit Cutoff Time</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>result_delivery_time</name><label>Result Delivery Time</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>','businessadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','sampledef_id','','Sampledef Id','Sample Definition(Urine)','Site_Model','sampledef_urines','sampledef_urines_is','sampledef_urines_hs','sampledef_urine_error','IMPLEMENTATION','2012-09-24 15:09:40','ADMIN','2012-09-24 15:28:40','LIVE',1),(804,'specimendef_blood','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>specimendef_id</name><label>Specimendef Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>description</name><label>Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>full_size_unit</name><label>Full Size Unit</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>aliquot_size_unit</name><label>Aliquot Size</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>unit</name><label>Unit</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n	<field><name>aliquot_type</name><label>Aliquot Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\n</formfields>','businessadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','specimendef_id','','Specimendef Id','Specimen Definition(Blood)','Site_Model','specimendef_bloods','specimendef_bloods_is','specimendef_bloods_hs','specimendef_blood_error','IMPLEMENTATION','2012-09-24 15:09:51','ADMIN','2012-09-24 15:28:48','LIVE',1),(805,'specimendef_csf','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>specimendef_id</name><label>Specimendef Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>description</name><label>Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>full_size_unit</name><label>Full Size Unit</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>aliquot_size_unit</name><label>Aliquot Size</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>unit</name><label>Unit</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>aliquot_type</name><label>Aliquot Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>','businessadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','specimendef_id','','Specimendef Id','Specimen Definition(CSF)','Site_Model','specimendef_csfs','specimendef_csfs_is','specimendef_csfs_hs','specimendef_csf_error','IMPLEMENTATION','2012-09-24 15:09:01','ADMIN','2012-09-24 15:33:11','LIVE',1),(806,'specimendef_urine','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n	<field><name>id</name><label>Id</label><type>hidden</type><value></value><options></options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>specimendef_id</name><label>Specimendef Id</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>description</name><label>Description</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>full_size_unit</name><label>Full Size Unit</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>aliquot_size_unit</name><label>Aliquot Size</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>unit</name><label>Unit</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n	<field><name>aliquot_type</name><label>Aliquot Type</label><type>input</type><value></value><options>size=50</options><onnew>enabled</onnew><onedit>enabled</onedit></field>\r\n</formfields>','businessadmin',1,1,'default_index','default_view','default_input','default_authorize','default_delete','default_enquiry','specimendef_id','','Specimendef Id','Specimen Definition(Urine)','Site_Model','specimendef_urines','specimendef_urines_is','specimendef_urines_hs','specimendef_urine_error','IMPLEMENTATION','2012-09-24 15:09:15','ADMIN','2012-09-24 15:29:02','LIVE',1);
/*!40000 ALTER TABLE `params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `params_hs`
--

DROP TABLE IF EXISTS `params_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `params_hs` (
  `id` int(11) unsigned NOT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `formfields` text,
  `module` varchar(255) DEFAULT NULL,
  `auth_mode_on` tinyint(1) NOT NULL DEFAULT '1',
  `index_field_on` tinyint(1) NOT NULL DEFAULT '1',
  `indexview` varchar(255) DEFAULT 'default_index',
  `viewview` varchar(255) DEFAULT 'default_view',
  `inputview` varchar(255) DEFAULT 'default_input',
  `authorizeview` varchar(255) DEFAULT 'default_authorize',
  `deleteview` varchar(255) DEFAULT 'default_delete',
  `enquiryview` varchar(255) DEFAULT 'default_enquiry',
  `indexfield` varchar(255) NOT NULL DEFAULT 'id' COMMENT 'name of field on indexview',
  `indexfieldvalue` varchar(255) DEFAULT NULL COMMENT 'value of field on indexview',
  `indexlabel` varchar(255) DEFAULT 'Id' COMMENT 'name of field on indexview',
  `appheader` varchar(255) DEFAULT NULL COMMENT 'name of app usually backend table',
  `primarymodel` varchar(255) DEFAULT 'Site_Model',
  `tb_live` varchar(255) DEFAULT NULL,
  `tb_inau` varchar(255) DEFAULT NULL,
  `tb_hist` varchar(255) DEFAULT NULL,
  `errormsgfile` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `params_hs`
--

LOCK TABLES `params_hs` WRITE;
/*!40000 ALTER TABLE `params_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `params_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `params_is`
--

DROP TABLE IF EXISTS `params_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `params_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) DEFAULT NULL,
  `formfields` text,
  `module` varchar(255) DEFAULT NULL,
  `auth_mode_on` tinyint(1) DEFAULT '1',
  `index_field_on` tinyint(1) DEFAULT '1',
  `indexview` varchar(255) DEFAULT 'default_index',
  `viewview` varchar(255) DEFAULT 'default_view',
  `inputview` varchar(255) DEFAULT 'default_input',
  `authorizeview` varchar(255) DEFAULT 'default_authorize',
  `deleteview` varchar(255) DEFAULT 'default_delete',
  `enquiryview` varchar(255) DEFAULT 'default_enquiry',
  `indexfield` varchar(255) DEFAULT 'id' COMMENT 'name of field on indexview',
  `indexfieldvalue` varchar(255) DEFAULT NULL COMMENT 'value of field on indexview',
  `indexlabel` varchar(255) DEFAULT 'Id' COMMENT 'name of field on indexview',
  `appheader` varchar(255) DEFAULT NULL COMMENT 'name of app usually backend table',
  `primarymodel` varchar(255) DEFAULT 'Site_Model',
  `tb_live` varchar(255) DEFAULT NULL,
  `tb_inau` varchar(255) DEFAULT NULL,
  `tb_hist` varchar(255) DEFAULT NULL,
  `errormsgfile` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_controller` (`controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `params_is`
--

LOCK TABLES `params_is` WRITE;
/*!40000 ALTER TABLE `params_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `params_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) unsigned NOT NULL,
  `payment_id` varchar(16) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `till_id` varchar(59) NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `amount` float(16,2) NOT NULL,
  `payment_type` enum('CASH','CHEQUE','DEBIT.CARD','CREDIT.CARD') NOT NULL,
  `payment_date` date NOT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_payment_id` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1001,'PMT20120707-0001','HEAD.OFFICE','ADMIN-20120707','ORD20120707-0001',2279.25,'CASH','2012-07-07','','VALID','','ADMIN','2012-07-07 19:20:05','ADMIN','2012-07-07 19:20:05','LIVE',1),(1002,'PMT20120708-0001','HEAD.OFFICE','ADMIN-20120708','ORD20120708-0002',160.00,'CASH','2012-07-08','','VALID','','ADMIN','2012-07-08 13:06:53','ADMIN','2012-07-08 13:06:53','LIVE',1),(1003,'PMT20120709-0001','HEAD.OFFICE','ADMIN-20120709','ORD20120709-0001',160.00,'CASH','2012-07-09','','VALID','','ADMIN','2012-07-09 09:51:59','ADMIN','2012-07-09 09:51:59','LIVE',1);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_hs`
--

DROP TABLE IF EXISTS `payments_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_hs` (
  `id` int(11) unsigned NOT NULL,
  `payment_id` varchar(16) NOT NULL,
  `branch_id` varchar(50) NOT NULL,
  `till_id` varchar(59) NOT NULL,
  `order_id` varchar(16) NOT NULL,
  `amount` float(16,2) NOT NULL,
  `payment_type` enum('CASH','CHEQUE','DEBIT.CARD','CREDIT.CARD') NOT NULL,
  `payment_date` date NOT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_hs`
--

LOCK TABLES `payments_hs` WRITE;
/*!40000 ALTER TABLE `payments_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments_is`
--

DROP TABLE IF EXISTS `payments_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(16) DEFAULT NULL,
  `branch_id` varchar(50) DEFAULT NULL,
  `till_id` varchar(59) DEFAULT NULL,
  `order_id` varchar(16) DEFAULT NULL,
  `amount` float(16,2) DEFAULT NULL,
  `payment_type` enum('CASH','CHEQUE','DEBIT.CARD','CREDIT.CARD') DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_payment_id` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments_is`
--

LOCK TABLES `payments_is` WRITE;
/*!40000 ALTER TABLE `payments_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdfs`
--

DROP TABLE IF EXISTS `pdfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdfs` (
  `id` int(11) unsigned NOT NULL,
  `pdf_id` varchar(30) NOT NULL,
  `pdf_template` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `data` longtext,
  `data_type` enum('html','xml','json','csv','text') NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_pdf_id` (`pdf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdfs`
--

LOCK TABLES `pdfs` WRITE;
/*!40000 ALTER TABLE `pdfs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdfs_hs`
--

DROP TABLE IF EXISTS `pdfs_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdfs_hs` (
  `id` int(11) unsigned NOT NULL,
  `pdf_id` varchar(30) NOT NULL,
  `pdf_template` varchar(50) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `data` longtext,
  `data_type` enum('html','xml','json','csv','text') NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdfs_hs`
--

LOCK TABLES `pdfs_hs` WRITE;
/*!40000 ALTER TABLE `pdfs_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdfs_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdfs_is`
--

DROP TABLE IF EXISTS `pdfs_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdfs_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pdf_id` varchar(30) DEFAULT NULL,
  `pdf_template` varchar(50) DEFAULT NULL,
  `controller` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `data` longtext,
  `data_type` enum('html','xml','json','csv','text') DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_pdf_id` (`pdf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdfs_is`
--

LOCK TABLES `pdfs_is` WRITE;
/*!40000 ALTER TABLE `pdfs_is` DISABLE KEYS */;
INSERT INTO `pdfs_is` VALUES (97,'INV20121012214010199310','INVOICE','orders_enq','enquiry','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n<fields>\r\n	<id><label>Id</label><value>1006</value></id>	\r\n	<order_id><label>Order Id</label><value>ORD20120923-0001</value></order_id>\r\n	<branch_id><label>Branch Id</label><value>HEAD.OFFICE</value></branch_id>\r\n	<inputter><label>Inputter</label><value>ADMIN</value></inputter>\r\n	<first_name><label>First Name</label><value>Haman</value></first_name>\r\n	<last_name><label>Last Name</label><value>Jaroo</value></last_name>\r\n	<customer_type><label>Customer Type</label><value>INDIVIDUAL</value></customer_type>\r\n	<address1><label>Address1</label><value>235 Stone Road</value></address1>\r\n	<address2><label>Address2</label><value></value></address2>\r\n	<city><label>City</label><value>Piparo</value></city>\r\n	<phone_mobile1><label>Phone Mobile1</label><value>7702785</value></phone_mobile1>\r\n	<phone_home><label>Phone Home</label><value>0</value></phone_home>\r\n	<phone_work><label>Phone Work</label><value>0</value></phone_work>\r\n	<quotation_date><label>Quotation Date</label><value>2012-09-23</value></quotation_date>\r\n	<invoice_date><label>Invoice Date</label><value>0000-00-00</value></invoice_date>\r\n	<current_no><label>Current No</label><value>1</value></current_no>\r\n	<sub_total><label>Sub Total</label><value>80.00</value></sub_total>\r\n	<discount_total><label>Discount Total</label><value>0.00</value></discount_total>\r\n	<tax_total><label>Tax Total</label><value>0.00</value></tax_total>\r\n	<order_total><label>Order Total</label><value>80.00</value></order_total>\r\n	<payment_total><label>Payment Total</label><value>0.00</value></payment_total>\r\n	<balance><label>Balance</label><value>80.00</value></balance>\r\n	<invoice_note><label>Invoice Note</label><value></value></invoice_note>\r\n</fields>\n<audit><printuser>Printed By : ADMIN</printuser><printdate>Print Date : 2012-10-12 21:40:10</printdate></audit>\n</formfields>\n','xml','ADMIN','2012-10-12 21:40:10','ADMIN','2012-10-12 21:40:10','HLD',0),(98,'QTE20121012214010199310','QUOTATION','orders_enq','enquiry','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n<fields>\r\n	<id><label>Id</label><value>1006</value></id>	\r\n	<order_id><label>Order Id</label><value>ORD20120923-0001</value></order_id>\r\n	<branch_id><label>Branch Id</label><value>HEAD.OFFICE</value></branch_id>\r\n	<inputter><label>Inputter</label><value>ADMIN</value></inputter>\r\n	<first_name><label>First Name</label><value>Haman</value></first_name>\r\n	<last_name><label>Last Name</label><value>Jaroo</value></last_name>\r\n	<customer_type><label>Customer Type</label><value>INDIVIDUAL</value></customer_type>\r\n	<address1><label>Address1</label><value>235 Stone Road</value></address1>\r\n	<address2><label>Address2</label><value></value></address2>\r\n	<city><label>City</label><value>Piparo</value></city>\r\n	<phone_mobile1><label>Phone Mobile1</label><value>7702785</value></phone_mobile1>\r\n	<phone_home><label>Phone Home</label><value>0</value></phone_home>\r\n	<phone_work><label>Phone Work</label><value>0</value></phone_work>\r\n	<quotation_date><label>Quotation Date</label><value>2012-09-23</value></quotation_date>\r\n	<invoice_date><label>Invoice Date</label><value>0000-00-00</value></invoice_date>\r\n	<current_no><label>Current No</label><value>1</value></current_no>\r\n	<sub_total><label>Sub Total</label><value>80.00</value></sub_total>\r\n	<discount_total><label>Discount Total</label><value>0.00</value></discount_total>\r\n	<tax_total><label>Tax Total</label><value>0.00</value></tax_total>\r\n	<order_total><label>Order Total</label><value>80.00</value></order_total>\r\n	<payment_total><label>Payment Total</label><value>0.00</value></payment_total>\r\n	<balance><label>Balance</label><value>80.00</value></balance>\r\n	<invoice_note><label>Invoice Note</label><value></value></invoice_note>\r\n</fields>\n<audit><printuser>Printed By : ADMIN</printuser><printdate>Print Date : 2012-10-12 21:40:10</printdate></audit>\n</formfields>\n','xml','ADMIN','2012-10-12 21:40:10','ADMIN','2012-10-12 21:40:10','HLD',0);
/*!40000 ALTER TABLE `pdfs_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdftemplates`
--

DROP TABLE IF EXISTS `pdftemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdftemplates` (
  `id` int(11) unsigned NOT NULL,
  `template_id` varchar(50) NOT NULL,
  `pdf_header_class` varchar(50) NOT NULL,
  `pdf_template_file` varchar(255) NOT NULL,
  `pdf_page_orientation` enum('P','L') NOT NULL,
  `pdf_unit` enum('mm','cm','in','pt') NOT NULL,
  `pdf_page_format` varchar(50) NOT NULL,
  `pdf_output` enum('I','D','F','FI','FD','E','S') NOT NULL,
  `pdf_margin_top` float(5,2) unsigned NOT NULL,
  `pdf_margin_right` float(5,2) unsigned NOT NULL,
  `pdf_margin_bottom` float(5,2) unsigned NOT NULL,
  `pdf_margin_left` float(5,2) unsigned NOT NULL,
  `pdf_font_monospaced` varchar(50) NOT NULL,
  `pdf_font` varchar(50) NOT NULL,
  `pdf_fontstyle` varchar(3) DEFAULT NULL,
  `pdf_fontsize` int(4) unsigned NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_template_id` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdftemplates`
--

LOCK TABLES `pdftemplates` WRITE;
/*!40000 ALTER TABLE `pdftemplates` DISABLE KEYS */;
INSERT INTO `pdftemplates` VALUES (501,'INVOICE','SITEPDF','cmlsl_invoice.php','P','mm','LETTER','FI',38.00,12.00,15.00,12.00,'courier','helvetica',NULL,9,'ADMIN','2012-05-30 15:44:23','ADMIN','2012-05-30 15:44:35','LIVE',1),(502,'QUOTATION','SITEPDF','cmlsl_quotation.php','P','mm','LETTER','FI',38.00,12.00,15.00,12.00,'courier','helvetica','',9,'ADMIN','2012-07-24 16:06:16','ADMIN','2012-07-24 16:08:20','LIVE',1),(503,'BATCHINVOICESUMMARY','SITEPDF','cmlsl_batchinvoicesummary.php','L','mm','LETTER','FI',38.00,12.00,15.00,12.00,'courier','helvetica','',8,'ADMIN','2012-07-24 23:23:14','ADMIN','2012-07-24 23:23:23','LIVE',1),(504,'BATCHINVOICES','SITEPDF','cmlsl_batchinvoices.php','P','mm','LETTER','FI',38.00,12.00,15.00,12.00,'courier','helvetica','',9,'ADMIN','2012-07-24 16:09:39','ADMIN','2012-07-24 16:09:48','LIVE',1);
/*!40000 ALTER TABLE `pdftemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdftemplates_hs`
--

DROP TABLE IF EXISTS `pdftemplates_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdftemplates_hs` (
  `id` int(11) unsigned NOT NULL,
  `template_id` varchar(50) NOT NULL,
  `pdf_header_class` varchar(50) NOT NULL,
  `pdf_template_file` varchar(255) NOT NULL,
  `pdf_page_orientation` enum('P','L') NOT NULL,
  `pdf_unit` enum('mm','cm','in','pt') NOT NULL,
  `pdf_page_format` varchar(50) NOT NULL,
  `pdf_output` enum('I','D','F','FI','FD','E','S') NOT NULL,
  `pdf_margin_top` float(5,2) unsigned NOT NULL,
  `pdf_margin_right` float(5,2) unsigned NOT NULL,
  `pdf_margin_bottom` float(5,2) unsigned NOT NULL,
  `pdf_margin_left` float(5,2) unsigned NOT NULL,
  `pdf_font_monospaced` varchar(50) NOT NULL,
  `pdf_font` varchar(50) NOT NULL,
  `pdf_fontstyle` varchar(3) DEFAULT NULL,
  `pdf_fontsize` int(4) unsigned NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdftemplates_hs`
--

LOCK TABLES `pdftemplates_hs` WRITE;
/*!40000 ALTER TABLE `pdftemplates_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdftemplates_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdftemplates_is`
--

DROP TABLE IF EXISTS `pdftemplates_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdftemplates_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` varchar(50) DEFAULT NULL,
  `pdf_header_class` varchar(50) DEFAULT 'SITEPDF',
  `pdf_template_file` varchar(255) DEFAULT NULL,
  `pdf_page_orientation` enum('P','L') DEFAULT 'P',
  `pdf_unit` enum('mm','cm','in','pt') DEFAULT 'mm',
  `pdf_page_format` varchar(50) DEFAULT 'LETTER',
  `pdf_output` enum('I','D','F','FI','FD','E','S') DEFAULT 'I',
  `pdf_margin_top` float(5,2) unsigned DEFAULT '35.00',
  `pdf_margin_right` float(5,2) unsigned DEFAULT '12.00',
  `pdf_margin_bottom` float(5,2) unsigned DEFAULT '25.00',
  `pdf_margin_left` float(5,2) unsigned DEFAULT '12.00',
  `pdf_font_monospaced` varchar(50) DEFAULT 'courier',
  `pdf_font` varchar(50) DEFAULT 'helvetica',
  `pdf_fontstyle` varchar(3) DEFAULT NULL,
  `pdf_fontsize` int(4) unsigned DEFAULT '12',
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_template_id` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdftemplates_is`
--

LOCK TABLES `pdftemplates_is` WRITE;
/*!40000 ALTER TABLE `pdftemplates_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdftemplates_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `package_items` varchar(255) DEFAULT NULL,
  `product_description` varchar(255) NOT NULL,
  `extended_description` text,
  `category` varchar(50) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `unit_price` float(15,2) NOT NULL,
  `taxable` enum('Y','N') NOT NULL,
  `tax_percentage` float(4,2) NOT NULL,
  `transfer_code` varchar(50) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','DISCONTINUED') NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'RUSH.CHARGE','SERVICE',NULL,'Rush Charge',NULL,'CHARGE','RUSH',100.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(51,'BTIME','SERVICE',NULL,'Bleeding Time',NULL,'LABTEST','CALCULATION',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(52,'FTI','SERVICE',NULL,'FTI T4 Index',NULL,'LABTEST','CALCULATION',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(53,'IBILI','SERVICE',' ','Indirect Bilirubin',NULL,'LABTEST','CALCULATION',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(54,'NPT','SERVICE',NULL,'Normal Prothrombin Time',NULL,'LABTEST','CALCULATION',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(55,'NPTT','SERVICE',NULL,'Normal Partial Thrombhoplastin Time',NULL,'LABTEST','CALCULATION',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(56,'PT ','SERVICE','ALB=1;ALP=1','Prothrombin Time',NULL,'LABTEST','CALCULATION',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(57,'PTT','SERVICE','CAL125=1;CAL153=1','Partial Thrombhoplastin Time',NULL,'LABTEST','CALCULATION',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(101,'2HRPP','SERVICE',NULL,'2 HR Post Prandial',NULL,'LABTEST','BLOOD',50.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(102,'AFP','SERVICE',NULL,'Alpha Feto Protein',NULL,'LABTEST','BLOOD',215.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(103,'ALB','SERVICE',NULL,'Albumin',NULL,'LABTEST','BLOOD',55.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(104,'ALP','SERVICE',NULL,'Alkaline Phosphatase',NULL,'LABTEST','BLOOD',70.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(105,'AMA','SERVICE',NULL,'Anti Microsomal Antibody',NULL,'LABTEST','BLOOD',300.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(106,'AMYL','SERVICE',NULL,'Amylase',NULL,'LABTEST','BLOOD',80.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(107,'ANA','SERVICE',NULL,'Anti Nuclear Factor',NULL,'LABTEST','BLOOD',140.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(108,'APAA','SERVICE',NULL,'Anti-phospholipid Antibody IgA',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(109,'APAG','SERVICE',NULL,'Anti-phospholipid Antibody IgG',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(110,'APAM','SERVICE',NULL,'Anti-phospholipid Antibody IgM',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(111,'ASOT','SERVICE',NULL,'Anti Strep-O-Lysin',NULL,'LABTEST','BLOOD',90.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(112,'ATA','SERVICE',NULL,'Anti Thyroglobulin Antibody',NULL,'LABTEST','BLOOD',300.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(113,'BASOPDIFF','SERVICE',NULL,'Basophils',NULL,'LABTEST','BLOOD',20.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(114,'BHCG','SERVICE',NULL,'Beta Hcg',NULL,'LABTEST','BLOOD',305.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(115,'BUN','SERVICE',NULL,'BUN',NULL,'LABTEST','BLOOD',50.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(116,'CA125','SERVICE',NULL,'CA 12.5',NULL,'LABTEST','BLOOD',305.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(117,'CA153','SERVICE',NULL,'CA 15.3',NULL,'LABTEST','BLOOD',350.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(118,'CA199','SERVICE',NULL,'CA 19.9',NULL,'LABTEST','BLOOD',350.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(119,'CALCI','SERVICE',NULL,'Calcium',NULL,'LABTEST','BLOOD',70.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(120,'CEA','SERVICE',NULL,'Carcinioembryotic Antigen',NULL,'LABTEST','BLOOD',305.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(121,'CHLAMG','SERVICE',NULL,'Chlamydia IgG',NULL,'LABTEST','BLOOD',150.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(122,'CHLAMM','SERVICE',NULL,'Chlamydia  IgM',NULL,'LABTEST','BLOOD',200.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(123,'CHLORIDE','SERVICE',NULL,'Chloride -serum',NULL,'LABTEST','BLOOD',65.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(124,'CHOL ','SERVICE',NULL,'Cholesterol',NULL,'LABTEST','BLOOD',50.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(125,'CHOLINES','SERVICE',NULL,'Acetylcholinesterase',NULL,'LABTEST','BLOOD',170.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(126,'CKMB','SERVICE',NULL,'CK-MB',NULL,'LABTEST','BLOOD',200.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(127,'CPK','SERVICE',NULL,'Creatine Phosphokinase',NULL,'LABTEST','BLOOD',80.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(128,'CREATSER','SERVICE',NULL,'Creatinine ',NULL,'LABTEST','BLOOD',55.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(129,'CREATU','SERVICE',NULL,'Creatinine ',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(130,'CRP','SERVICE',NULL,'C-Reactive Protein',NULL,'LABTEST','BLOOD',90.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(131,'DBILI','SERVICE',NULL,'Direct Bilirubin',NULL,'LABTEST','BLOOD',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(132,'DCT','SERVICE',NULL,'Direct Coombs Test',NULL,'LABTEST','BLOOD',100.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(133,'DSDNA','SERVICE',NULL,'Anti DsDNA',NULL,'LABTEST','BLOOD',140.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(134,'EOSINODIFF','SERVICE',NULL,'Eosinophils',NULL,'LABTEST','BLOOD',20.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(135,'ESR','SERVICE',NULL,'Erythrocyte Sedimentation Rate',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(136,'FBS','SERVICE',NULL,'Fasting  Blood  Sugar',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(137,'FERRI','SERVICE',NULL,'Ferritin',NULL,'LABTEST','BLOOD',255.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(138,'FSH','SERVICE',NULL,'Folicle Stimulating Hormone',NULL,'LABTEST','BLOOD',135.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(139,'FT3','SERVICE',NULL,'Free T3',NULL,'LABTEST','BLOOD',85.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(140,'FT4','SERVICE',NULL,'Free T4',NULL,'LABTEST','BLOOD',85.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(141,'G6PD','SERVICE',NULL,'Glucose 6-PHOS. DEHYDROGENASE',NULL,'LABTEST','BLOOD',200.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(142,'GGT','SERVICE',NULL,'Gammm-Glutamyl Transminase',NULL,'LABTEST','BLOOD',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(143,'GLOB','SERVICE',NULL,'Globulin',NULL,'LABTEST','BLOOD',55.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(144,'GP','SERVICE',NULL,'Blood Group',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(145,'HBA1C','SERVICE',NULL,'Gylcohemoglobin',NULL,'LABTEST','BLOOD',130.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(146,'HBEP','SERVICE',NULL,'Hemoglobin Electrophorsis',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(147,'HDL','SERVICE',NULL,'High Density Lipoprotein',NULL,'LABTEST','BLOOD',80.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(148,'HGB','SERVICE',NULL,'Hemoglobin',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(149,'HSV1G','SERVICE',NULL,'Herpes I IgG',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(150,'HSV1M','SERVICE',NULL,'Herpes I IgM',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(151,'HSV2G','SERVICE',NULL,'Herpes II IgG',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(152,'HSV2M','SERVICE',NULL,'Herpes II IgM',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(153,'IDCT','SERVICE',NULL,'Indirect Coombs Test',NULL,'LABTEST','BLOOD',160.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(154,'IRON','SERVICE',NULL,'Iron',NULL,'LABTEST','BLOOD',100.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(155,'LDH','SERVICE',NULL,'Lactate Dehydrogenase',NULL,'LABTEST','BLOOD',70.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(156,'LIPASE','SERVICE',NULL,'Lipase',NULL,'LABTEST','BLOOD',200.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(157,'LITH','SERVICE',NULL,'Lithium -serum',NULL,'LABTEST','BLOOD',120.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(158,'LYMPHSDIFF','SERVICE',NULL,'Lymphocytes',NULL,'LABTEST','BLOOD',20.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(159,'MAG','SERVICE',NULL,'Magnesium',NULL,'LABTEST','BLOOD',120.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(160,'MCH','SERVICE',NULL,'Mean Corpuscular hemoglobin',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(161,'MCHC','SERVICE',NULL,'Mean Corpuscular Hemoglobin Concentration',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(162,'MCV','SERVICE',NULL,'Mean corpuscular Volume',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(163,'MONOCDIFF','SERVICE',NULL,'Monocytes',NULL,'LABTEST','BLOOD',20.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(164,'PCV','SERVICE',NULL,'Pack Cell Volume',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(165,'PHOS','SERVICE',NULL,'Phosphorus',NULL,'LABTEST','BLOOD',65.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(166,'PLT','SERVICE',NULL,'Platelets',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(167,'POLYSDIFF','SERVICE',NULL,'Polymorphs',NULL,'LABTEST','BLOOD',20.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(168,'POTAS','SERVICE',NULL,'Potassium',NULL,'LABTEST','BLOOD',65.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(169,'RBCCBC','SERVICE',NULL,'Red Blood Cells',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(170,'RBCFOL','SERVICE',NULL,'Folate - RBC',NULL,'LABTEST','BLOOD',400.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(171,'RBS','SERVICE',NULL,'Random Blood Sugar',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(172,'RETIC','SERVICE',NULL,'Reticulocyte Count',NULL,'LABTEST','BLOOD',90.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(173,'SERFOL','SERVICE',NULL,'Folate-Serum',NULL,'LABTEST','BLOOD',250.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(174,'SGOT','SERVICE',NULL,'SGOT/AST',NULL,'LABTEST','BLOOD',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(175,'SGPT','SERVICE',NULL,'SGPT/ALT',NULL,'LABTEST','BLOOD',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(176,'SODIUM','SERVICE',NULL,'Sodium',NULL,'LABTEST','BLOOD',65.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(177,'SPE','SERVICE',NULL,'Protein Electrophoresis',NULL,'LABTEST','BLOOD',250.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(178,'T3UPT','SERVICE',NULL,'T3 Uptake',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(179,'TBILI','SERVICE',NULL,'Total  Bilirubin',NULL,'LABTEST','BLOOD',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(180,'TPROT','SERVICE',NULL,'Total Protein',NULL,'LABTEST','BLOOD',80.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(181,'TRIG','SERVICE',NULL,'Trigylcerides',NULL,'LABTEST','BLOOD',55.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(182,'TSH','SERVICE',NULL,'Thyroid Stimulating Hormone',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(183,'TT3','SERVICE',NULL,'Total T3',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(184,'TT4','SERVICE',NULL,'Total T4',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(185,'URC','SERVICE',NULL,'Uric  Acid',NULL,'LABTEST','BLOOD',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(186,'VDRL','SERVICE',NULL,'Veneral Disease Research Laboratory',NULL,'LABTEST','BLOOD',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(187,'VLDL','SERVICE',NULL,'Very Low density Lipoprotein',NULL,'LABTEST','BLOOD',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(188,'WBCCBC','SERVICE',NULL,'White Blood Cells',NULL,'LABTEST','BLOOD',40.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(189,'XMATCH','SERVICE',NULL,'Cross Match',NULL,'LABTEST','BLOOD',150.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(301,'24HRCAL','SERVICE',NULL,'24 Hr Urine Calcium',NULL,'LABTEST','24URINE',80.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(302,'24HRCREAT','SERVICE',NULL,'24 Hr Urine Creatinine',NULL,'LABTEST','24URINE',80.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(303,'24HRPHOS','SERVICE',NULL,'24 Hr Urine Phosphorus',NULL,'LABTEST','24URINE',80.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(304,'24HRPROT','SERVICE',NULL,'24 Hr Urine Protein',NULL,'LABTEST','24URINE',80.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(305,'24HRURIC','SERVICE',NULL,'24 Hr Urine Uric Acid',NULL,'LABTEST','24URINE',80.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(351,'ACR','SERVICE',NULL,'Albumin/Creatinine Ratio ',NULL,'LABTEST','URINE',180.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(352,'ALCO','SERVICE',NULL,'Alcohol (Urine)',NULL,'LABTEST','URINE',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(353,'AMP','SERVICE',NULL,'Amphetamines',NULL,'LABTEST','URINE',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(354,'BJP','SERVICE',NULL,'Bence Jones Protein',NULL,'LABTEST','URINE',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(355,'COC','SERVICE',NULL,'Cocaine',NULL,'LABTEST','URINE',60.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(356,'MICROALB','SERVICE',NULL,'Microalbumin',NULL,'LABTEST','URINE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(357,'MICROPU','SERVICE',NULL,'Microprotein',NULL,'LABTEST','URINE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(401,'GLUCSF','SERVICE',NULL,'Glucose (CSF)',NULL,'LABTEST','CSF',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(402,'LYMPHSCSF','SERVICE',NULL,'Lymphocytes (CSF)',NULL,'LABTEST','CSF',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(403,'MICROPCSF','SERVICE',NULL,'Microprotein',NULL,'LABTEST','CSF',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(404,'POLYSCSF','SERVICE',NULL,'Polymorphs (CSF)',NULL,'LABTEST','CSF',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(405,'RBCCSF','SERVICE',NULL,'Red Blood Cells (CSF)',NULL,'LABTEST','CSF',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(901,'APA','','APAA=1;APAM=1;APAG=1','Anti Phospholipid Antibody',NULL,'LABTEST','PROFILE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(902,'BILI','','TBILI=1;DBILI=1;IBILI=1','Bilirubin',NULL,'LABTEST','PROFILE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(903,'CARDENZY','','SGOT=1;CPK=1;LDH=1;CKMB=1','Cardiac Enzymes',NULL,'LABTEST','PROFILE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(904,'DIFF','','POLYSDIFF=1;LYMPHSDIFF=1;MONOCDIFF=1;EOSINODIFF=1;BASOPDIFF=1','Differential Count',NULL,'LABTEST','PROFILE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(905,'LYTES','','SODIUM=1;POTAS=1;CHLORIDE=1','Electrolytes',NULL,'LABTEST','PROFILE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(906,'PROT','','TPROT=1;ALB=1;GLOB=1','Proteins Serum',NULL,'LABTEST','PROFILE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(907,'RFT','','BUN=1;CREATSER=1;PROT=1;SODIUM=1;POTAS=1;CHLORIDE=1','Renal Function Test',NULL,'LABTEST','PROFILE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(908,'TFT','','TT3=1;TT4=1;T3UPT=1;TSH=1;FTI=1','Thyroid Function Test',NULL,'LABTEST','PROFILE',0.00,'N',0.00,NULL,'ACTIVE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_hs`
--

DROP TABLE IF EXISTS `products_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_hs` (
  `id` int(11) unsigned NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `package_items` varchar(255) DEFAULT NULL,
  `product_description` varchar(255) NOT NULL,
  `extended_description` text,
  `category` varchar(50) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `unit_price` float(15,2) NOT NULL,
  `taxable` enum('Y','N') NOT NULL,
  `tax_percentage` float(4,2) NOT NULL,
  `transfer_code` varchar(50) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','DISCONTINUED') NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_hs`
--

LOCK TABLES `products_hs` WRITE;
/*!40000 ALTER TABLE `products_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_is`
--

DROP TABLE IF EXISTS `products_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `package_items` varchar(255) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `extended_description` text,
  `category` varchar(50) DEFAULT NULL,
  `sub_category` varchar(50) DEFAULT NULL,
  `unit_price` float(15,2) DEFAULT '0.00',
  `taxable` enum('Y','N') DEFAULT 'Y',
  `tax_percentage` float(4,2) DEFAULT '15.00',
  `transfer_code` varchar(50) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE','DISCONTINUED') DEFAULT 'ACTIVE',
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_is`
--

LOCK TABLES `products_is` WRITE;
/*!40000 ALTER TABLE `products_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recordlocks`
--

DROP TABLE IF EXISTS `recordlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recordlocks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idname` varchar(50) DEFAULT NULL,
  `lock_table` varchar(255) NOT NULL,
  `record_id` int(11) NOT NULL,
  `pre_status` varchar(4) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recordlocks`
--

LOCK TABLES `recordlocks` WRITE;
/*!40000 ALTER TABLE `recordlocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `recordlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrences`
--

DROP TABLE IF EXISTS `recurrences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrences` (
  `id` int(11) unsigned NOT NULL,
  `recurrence_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_recurrence_id` (`recurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrences`
--

LOCK TABLES `recurrences` WRITE;
/*!40000 ALTER TABLE `recurrences` DISABLE KEYS */;
INSERT INTO `recurrences` VALUES (0,'ADHOC','Adhoc / Random','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(1,'SECBYSEC','Second By Second','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(2,'MINBYMIN','Minute By Minute','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(3,'HALFHOUR','Every 30 minutes','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(4,'HOURLY','Every Hour','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(5,'BI HOURLY','Every 2 Hours','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(6,'TRIHOURLY','Every 3 Hours','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(7,'FOURHOURLY','Every 4 Hours','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(8,'FIVEHOURLY','Every 5 Hours','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(9,'SIXHOURLY','Every  6 Hours','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(10,'EIGHTHOURLY','Every  8 Hours','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(11,'TWELVEHOURLY','Every  12 Hours','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(12,'DAILY','Daily','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(13,'WEEKLY','Weekly','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(14,'MONTHLY','Monthly','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(15,'52DAYS','52 Days','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(16,'QTRYEARLY','3 Months','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(17,'SEMIANNUAL','6 Months','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(18,'YEARLY','Yearly / Annual','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(19,'BIYEARLY','2 Years','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(20,'FIRSTTHU','Every 1st Thursday of The Month','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(21,'SECONDTHU','Every 2nd Thursday of The Month','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(22,'THIRDTHU','Every 3rd Thursday of The Month','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `recurrences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrences_hs`
--

DROP TABLE IF EXISTS `recurrences_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrences_hs` (
  `id` int(11) unsigned NOT NULL,
  `recurrence_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrences_hs`
--

LOCK TABLES `recurrences_hs` WRITE;
/*!40000 ALTER TABLE `recurrences_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrences_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurrences_is`
--

DROP TABLE IF EXISTS `recurrences_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurrences_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `recurrence_id` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_recurrence_id` (`recurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurrences_is`
--

LOCK TABLES `recurrences_is` WRITE;
/*!40000 ALTER TABLE `recurrences_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurrences_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` int(11) unsigned NOT NULL,
  `area` varchar(255) NOT NULL,
  `sub_region` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `country_id` varchar(2) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (501,'Aranguez','Barataria/San Juan','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(502,'Arima','Arima','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(503,'Arouca','Arouca/Maloney','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(504,'Barataria','Barataria/San Juan','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(505,'Barrackpore','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(506,'Bayshore','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(507,'Belmont','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(508,'Brazil','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(509,'California','Couva South','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(510,'Carapichaima','Couva North','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(511,'Carenage','Caroni Central','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(512,'Caroni','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(513,'Cascade','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(514,'Cedros','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(515,'Chaguanas','Chaguanas West','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(516,'Chaguaramas','Diego Martin West','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(517,'Champs Fleurs','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(518,'Claxton Bay','Couva South','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(519,'Cocorite','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(520,'Cocoyea Village','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(521,'Couva','Couva North','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(522,'Cross Crossing','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(523,'Cumana','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(524,'Cumuto','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(525,'Cunupia','Caroni East','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(526,'Curepe','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(527,'D\'Abadie','D’Abadie/O’Meara','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(528,'Debe','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(529,'Diego Martin','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(530,'Duncan Village','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(531,'El Dorado','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(532,'El Socorro','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(533,'Flanagin','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(534,'Freeport','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(535,'Fullarton','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(536,'Fyzabad','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(537,'Gasparillo','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(538,'Glencoe','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(539,'Gonzales','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(540,'Goodwood Park','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(541,'Gran Couva','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(542,'Guaico','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(543,'Guayaguayare','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(544,'Gulf View','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(545,'La Brea','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(546,'La Romaine','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(547,'Laventille','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(548,'Macoya','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(549,'Manzanilla','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(550,'Marabella','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(551,'Maracas','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(552,'Maraval','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(553,'Mayaro','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(554,'Moruga','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(555,'Morvant','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(556,'Mount Hope','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(557,'New Grant','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(558,'Oropouche','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(559,'Palmiste','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(560,'Palmyra','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(561,'Palo Seco','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(562,'Paramaribo','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(563,'Penal','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(564,'Petit Valley','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(565,'Phillipine','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(566,'Piarco','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(567,'Pierreville','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(568,'Pleasantville','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(569,'Point Fortin','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(570,'Point Lisas','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(571,'Pointe-a-Pierre','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(572,'Port of Spain','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(573,'Princes Town','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(574,'Pt. Cumana','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(575,'Pt. Lisas','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(576,'Rio Claro','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(577,'Rousillac','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(578,'Salybia','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(579,'San Fernando','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(580,'San Francique','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(581,'San Juan','Barataria/San Juan','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(582,'Sangre Grande','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(583,'Santa Cruz','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(584,'Santa Flora','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(585,'Signal Hill','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(586,'Siparia','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(587,'South Oropouche','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(588,'St. Ann\'s','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(589,'St. Augustine','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(590,'St. Clair','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(591,'St. Georges','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(592,'St. James','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(593,'St. Joseph','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(594,'Ste. Madeleine','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(595,'Tabaquite','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(596,'Tableland','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(597,'Tacarigua','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(598,'Toco','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(599,'Trincity','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(600,'Tunapuna','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(601,'Valencia','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(602,'Valsayn','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(603,'Vistabella','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(604,'Westmoorings','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(605,'Whim','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(606,'Williamsville','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(607,'Woodbrook','.','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(608,'Lambeau','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(609,'Lowlands','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(610,'Bon Accord','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(611,'Carnbee','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(612,'Crown Point','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(613,'Mt. Lambert','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(614,'Mt. St George','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(615,'Plymouth','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(616,'Roxborough','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(617,'Scarborough','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(618,'Charlotteville','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(619,'Canaan','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(620,'Moriah','.','Tobago','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(621,'Maloney','Arouca/Maloney','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(622,'Enterprise','Chaguanas East','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(623,'Piparo','Tabaquite','Trinidad','TT','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions_hs`
--

DROP TABLE IF EXISTS `regions_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions_hs` (
  `id` int(11) unsigned NOT NULL,
  `area` varchar(255) NOT NULL,
  `sub_region` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `country_id` varchar(2) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions_hs`
--

LOCK TABLES `regions_hs` WRITE;
/*!40000 ALTER TABLE `regions_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `regions_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions_is`
--

DROP TABLE IF EXISTS `regions_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `area` varchar(255) DEFAULT NULL,
  `sub_region` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country_id` varchar(2) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions_is`
--

LOCK TABLES `regions_is` WRITE;
/*!40000 ALTER TABLE `regions_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `regions_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportdefs`
--

DROP TABLE IF EXISTS `reportdefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportdefs` (
  `id` int(11) unsigned NOT NULL,
  `controller` varchar(255) NOT NULL,
  `formfields` text,
  `model` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `rptheader` varchar(255) NOT NULL,
  `showfilter` tinyint(1) NOT NULL,
  `printuser` tinyint(1) NOT NULL,
  `printdatetime` tinyint(1) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_controller` (`controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportdefs`
--

LOCK TABLES `reportdefs` WRITE;
/*!40000 ALTER TABLE `reportdefs` DISABLE KEYS */;
INSERT INTO `reportdefs` VALUES (401,'batchinvoices_rpt','<?xml version=\'1.0\' standalone=\'yes\'?>\n<formfields>\n<field>\n<name>batch_id</name><label>Batch Id</label><type>input</type><value></value><options>size=50</options>\n<popout><enable>yes</enable><table>batchinvoices</table><selectfields>batch_id,batch_type,batch_description,batch_date</selectfields><idfield>batch_id</idfield></popout>\n</field>\n</formfields>','site','report/default_report','Batch Invoices',1,1,1,'ADMIN','2012-07-25 01:01:50','ADMIN','2012-07-25 01:02:37','LIVE',1);
/*!40000 ALTER TABLE `reportdefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportdefs_hs`
--

DROP TABLE IF EXISTS `reportdefs_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportdefs_hs` (
  `id` int(11) unsigned NOT NULL,
  `controller` varchar(255) NOT NULL,
  `formfields` text,
  `model` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `rptheader` varchar(255) NOT NULL,
  `showfilter` tinyint(1) NOT NULL,
  `printuser` tinyint(1) NOT NULL,
  `printdatetime` tinyint(1) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportdefs_hs`
--

LOCK TABLES `reportdefs_hs` WRITE;
/*!40000 ALTER TABLE `reportdefs_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportdefs_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportdefs_is`
--

DROP TABLE IF EXISTS `reportdefs_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportdefs_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) DEFAULT NULL,
  `formfields` text,
  `model` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `rptheader` varchar(255) DEFAULT NULL,
  `showfilter` tinyint(1) DEFAULT NULL,
  `printuser` tinyint(1) DEFAULT NULL,
  `printdatetime` tinyint(1) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_controller` (`controller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportdefs_is`
--

LOCK TABLES `reportdefs_is` WRITE;
/*!40000 ALTER TABLE `reportdefs_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportdefs_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `securityprofile` longtext,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'login','Newly created user, default role, very limted access including My Messages(DO NOT REMOVE)','<?xml version=\'1.0\' standalone=\'yes\'?>\n<securityprofile>\n<menu><menu_id>10</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>1000</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>100050</menu_id><controls_input>vw,nw,cp,iw,as,hd</controls_input><controls_enquiry>ls,is,ex</controls_enquiry></menu>\n<menu><menu_id>100051</menu_id><controls_input>df,ls,is,hs,ex</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>100052</menu_id><controls_input>df,ls,is,hs,ex</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>100053</menu_id><controls_input>df,ls,is,hs,ex</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>1001</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>100150</menu_id><controls_input>vw,in,as,rj,va</controls_input><controls_enquiry>ls,is</controls_enquiry></menu>\n</securityprofile>\n','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(2,'useradmin_super','Can access all Useradmin components only.','<?xml version=\'1.0\' standalone=\'yes\'?>\n<securityprofile>\n<menu><menu_id>15</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>1500</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>150050</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>150051</menu_id><controls_input>if,vw,iw,in,ao,as,rj,hd,va</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>150052</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>1501</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>150150</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n</securityprofile>\n','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(3,'sysadmin_super','Can access all System Administration components only.','<?xml version=\'1.0\' standalone=\'yes\'?>\n<securityprofile>\n<menu><menu_id>20</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>2000</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>200050</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>200051</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>200052</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>2001</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>200150</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>200151</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>2002</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>200250</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>200251</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>200253</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>2003</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>200350</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>200351</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>2004</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>200450</menu_id><controls_input>if,vw,de</controls_input><controls_enquiry>ls</controls_enquiry></menu>\n<menu><menu_id>200451</menu_id><controls_input>if,vw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>200452</menu_id><controls_input>if,vw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n</securityprofile>\n','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(4,'developer_super','Can access all Developer components only.','<?xml version=\'1.0\' standalone=\'yes\'?>\n<securityprofile>\n<menu><menu_id>25</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>2500</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>250050</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>250051</menu_id><controls_input>if,vw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>250052</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>250053</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>250054</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>2501</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>250055</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>2502</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>250250</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>250251</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>2503</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>250350</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>250351</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n</securityprofile>\n','IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(1001,'customer_super','Can access all Customer components only.','<?xml version=\'1.0\' standalone=\'yes\'?>\n<securityprofile>\n<menu><menu_id>5010</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>501050</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n</securityprofile>\n','ADMIN','2010-12-11 01:57:23','ADMIN','2010-12-11 02:23:50','LIVE',1),(1004,'sales_super','Can access all Sales components only.','<?xml version=\'1.0\' standalone=\'yes\'?>\n<securityprofile>\n<menu><menu_id>5040</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>504000</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>50400050</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50400051</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50400052</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>504001</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>50400150</menu_id><controls_input>vw,nw</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>50400151</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50400152</menu_id><controls_input>if,vw,nw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50400153</menu_id><controls_input>if,vw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50400154</menu_id><controls_input>if,vw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>504002</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>50400250</menu_id><controls_input>if,vw,nw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50400251</menu_id><controls_input>if,vw,nw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50400252</menu_id><controls_input>if,vw,nw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50400253</menu_id><controls_input>if,vw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n</securityprofile>\n',NULL,NULL,NULL,NULL,NULL,NULL),(1005,'enquiry_super','Can access all Enquiry components only.','<?xml version=\'1.0\' standalone=\'yes\'?>\n<securityprofile>\n<menu><menu_id>5090</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>509000</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>509001</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>50900150</menu_id><controls_input>vw,pr</controls_input><controls_enquiry>df,ex</controls_enquiry></menu>\n<menu><menu_id>50900151</menu_id><controls_input>vw,pr</controls_input><controls_enquiry>df,ex</controls_enquiry></menu>\n</securityprofile>\n',NULL,NULL,NULL,NULL,NULL,NULL),(1006,'report_super','Can access all Report components only.','<?xml version=\'1.0\' standalone=\'yes\'?>\n<securityprofile>\n<menu><menu_id>5100</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>510000</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>51000050</menu_id><controls_input>vw,pr</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>51000051</menu_id><controls_input>vw,pr</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>51000052</menu_id><controls_input>vw,pr</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>51000053</menu_id><controls_input>vw,pr</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>51000054</menu_id><controls_input>vw,pr</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>51000055</menu_id><controls_input>vw,pr</controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>510001</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n</securityprofile>\n',NULL,NULL,NULL,NULL,NULL,NULL),(1007,'businessadmin_super','Can access all Business Administration components only.','<?xml version=\'1.0\' standalone=\'yes\'?>\n<securityprofile>\n<menu><menu_id>5020</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>502000</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>502001</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>50200150</menu_id><controls_input>if,vw,nw,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>502002</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>50200250</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50200251</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50200252</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>502003</menu_id><controls_input></controls_input><controls_enquiry></controls_enquiry></menu>\n<menu><menu_id>50200350</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50200351</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n<menu><menu_id>50200352</menu_id><controls_input>if,vw,nw,cp,in,ao,as,rj,hd,va</controls_input><controls_enquiry>ls,is,hs,ex</controls_enquiry></menu>\n</securityprofile>\n',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_hs`
--

DROP TABLE IF EXISTS `roles_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_hs` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `securityprofile` longtext NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_hs`
--

LOCK TABLES `roles_hs` WRITE;
/*!40000 ALTER TABLE `roles_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_is`
--

DROP TABLE IF EXISTS `roles_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `securityprofile` longtext,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_is`
--

LOCK TABLES `roles_is` WRITE;
/*!40000 ALTER TABLE `roles_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(2,1),(1,2),(1,3),(2,3),(1,4),(1,1001),(2,1001),(1,1004),(1,1005),(1,1006),(1,1007);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampledef_bloods`
--

DROP TABLE IF EXISTS `sampledef_bloods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampledef_bloods` (
  `id` int(11) unsigned NOT NULL,
  `sampledef_id` varchar(71) NOT NULL,
  `test_id` varchar(50) NOT NULL,
  `specimendef_id` varchar(20) NOT NULL,
  `test_location` enum('INTERNAL','EXTERNAL') NOT NULL,
  `test_alt_name` varchar(255) NOT NULL,
  `department` varchar(50) NOT NULL,
  `volume_required` float(16,1) NOT NULL,
  `result_unit` varchar(20) DEFAULT NULL,
  `result_format` varchar(10) DEFAULT NULL,
  `result_range_normal_lower` varchar(255) DEFAULT NULL,
  `result_range_normal_upper` varchar(255) DEFAULT NULL,
  `result_normal` varchar(255) DEFAULT NULL,
  `result_abnormal` varchar(255) DEFAULT NULL,
  `testrun_result_day` varchar(27) NOT NULL,
  `rushrun_result_day` varchar(27) NOT NULL,
  `sample_submit_cutoff_time` varchar(255) NOT NULL,
  `testrun_time` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_sampledef_id` (`sampledef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampledef_bloods`
--

LOCK TABLES `sampledef_bloods` WRITE;
/*!40000 ALTER TABLE `sampledef_bloods` DISABLE KEYS */;
INSERT INTO `sampledef_bloods` VALUES (501,'2HRPP.GREY','2HRPP','GREY','INTERNAL','2 Hr PP','BIOCHEMISTRY',1.0,'mg/dl','INTEGER',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(502,'AFP.RED4U','AFP','RED4U','INTERNAL','AFP; α-FP; α-feto Protein','ENDOCRINOLOGY',2.0,'IU/l','FLOAT;1','0.5','5.5',NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(503,'ALB.RED4U','ALB','RED4U','INTERNAL','Albumin','BIOCHEMISTRY',2.0,'g/dl','FLOAT;1','3.5','5.3',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(504,'ALP.RED4U','ALP','RED4U','INTERNAL','ALK. PHOS; ALP','BIOCHEMISTRY',2.0,'IU/l','INTEGER',NULL,'123.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(505,'AMA.RED4U','AMA','RED4U','INTERNAL','Anti-Thyroid Peroxidase Antibody; AMA; Anti-TPO','ENDOCRINOLOGY',2.0,'IU/ml','INTEGER','0.0','35.0',NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(506,'AMYL.RED4U','AMYL','RED4U','INTERNAL','Amylase','BIOCHEMISTRY',2.0,'u/l','INTEGER','0.0','95.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(507,'ANA.RED4U','ANA','RED4U','INTERNAL','ANA; Anti Nuclear Antibody','IMMUNOLOGY',2.0,NULL,'TEXT',NULL,NULL,'negative','positive; +; ++; +++; ++++; homogeneous pattern; peripheral pattern; speckled pattern; discrete speckled; fine speckled pattern;  nucleolar pattern; cytoplasmic speckled; cytoplasmic spider web pattern','1=2;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(508,'APAA.RED4U','APAA','RED4U','INTERNAL','Anti-phospholipid Antibody IgA','UNDEFINED',2.0,NULL,'FLOAT;1',NULL,NULL,NULL,NULL,'2=3;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(509,'APAG.RED4U','APAG','RED4U','INTERNAL','Anti-phospholipid Antibody IgG','UNDEFINED',2.0,NULL,'FLOAT;1',NULL,NULL,NULL,NULL,'2=3;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(510,'APAM.RED4U','APAM','RED4U','INTERNAL','Anti-phospholipid Antibody IgM','UNDEFINED',2.0,NULL,'FLOAT;1',NULL,NULL,NULL,NULL,'2=3;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(511,'ASOT.RED4U','ASOT','RED4U','INTERNAL','ASOT','IMMUNOLOGY',2.0,NULL,'TEXT',NULL,NULL,'negative','positive 1-2 dils; 1-4 dils; 1-8 dils; etc','1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1400;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(512,'ATA.RED4U','ATA','RED4U','INTERNAL','Anti- Tg Antibody; ATG','ENDOCRINOLOGY',2.0,'IU/ml','INTEGER','0.0','40.0',NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(513,'BASOPDIFF.PURPLE','BASOPDIFF','PURPLE','INTERNAL','Basophils','HEMATOLOGY',1.0,'percent','INTEGER','0.0','1.0',NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1500;RUN2=2359','RUN1=ONEHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(514,'BHCG.RED4U','BHCG','RED4U','INTERNAL','BHCG','ENDOCRINOLOGY',2.0,'mIU/ml','INTEGER',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(515,'BUN.RED4U','BUN','RED4U','INTERNAL','U; Blood Urea Nitrogen','BIOCHEMISTRY',2.0,'mg/dl','INTEGER','7.0','18.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(516,'CA125.RED4U','CA125','RED4U','INTERNAL','Ovarian Cancer','ENDOCRINOLOGY',2.0,'u/ml','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(517,'CA153.RED4U','CA153','RED4U','INTERNAL','Breast Cancer','ENDOCRINOLOGY',2.0,'u/ml','FLOAT;1','6.4',NULL,NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(518,'CA199.RED4U','CA199','RED4U','INTERNAL','CA 19.9','ENDOCRINOLOGY',2.0,'u/ml','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(519,'CALCI.RED4U','CALCI','RED4U','INTERNAL','CA 2+; caltrate','BIOCHEMISTRY',2.0,'mg/dl','FLOAT;1','8.5','10.5',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(520,'CEA.RED4U','CEA','RED4U','INTERNAL','CEA','ENDOCRINOLOGY',2.0,'ng/ml','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(521,'CHLAMG.RED4U','CHLAMG','RED4U','INTERNAL','Chlamydia Trachomatis  IgG','IMMUNOLOGY',2.0,NULL,'FLOAT;1','0.0',NULL,NULL,NULL,'2=3;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(522,'CHLAMM.RED4U','CHLAMM','RED4U','INTERNAL','Chlamydia Trachomatis  IgM','IMMUNOLOGY',2.0,NULL,'FLOAT;1','0.0',NULL,NULL,NULL,'2=3;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(523,'CHLORIDE.RED4U','CHLORIDE','RED4U','INTERNAL','CL-','BIOCHEMISTRY',2.0,'mmol/l','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(524,'CHOL .RED4U','CHOL ','RED4U','INTERNAL','CHOL','BIOCHEMISTRY',2.0,'mg/dl','INTEGER','0.0','200.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(525,'CHOLINES.RED4U','CHOLINES','RED4U','INTERNAL','Cholinesterase','BIOCHEMISTRY',2.0,'u/l','INTEGER','3100.0','7700.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(526,'CKMB.RED4U','CKMB','RED4U','INTERNAL','CPK-MB','BIOCHEMISTRY',2.0,'u/l','FLOAT;1','1.8','19.4',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(527,'CPK.RED4U','CPK','RED4U','INTERNAL','CPK ','BIOCHEMISTRY',2.0,'u/l','INTEGER',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(528,'CREATSER.RED4U','CREATSER','RED4U','INTERNAL','Creat.; Cr','BIOCHEMISTRY',2.0,'mg/dl','FLOAT;1','0.4','1.4',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(529,'CREATU.RED4U','CREATU','RED4U','INTERNAL','Creat.; Cr','BIOCHEMISTRY',2.0,'mg/dl','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(530,'CRP.RED4U','CRP','RED4U','INTERNAL','C-Reactive Protein','BIOCHEMISTRY',2.0,NULL,'TEXT',NULL,NULL,'negative','positive 1-2 dils; 1-4 dils; 1-8 dils; etc','1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1400;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(531,'DBILI.RED4U','DBILI','RED4U','INTERNAL','D. BILI','BIOCHEMISTRY',2.0,'mg/dl','FLOAT;1','0.0','0.2',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(532,'DCT.PURPLE','DCT','PURPLE','INTERNAL','DCT','HEMATOLOGY',1.0,NULL,'TEXT',NULL,NULL,'negative','positive','1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1400;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(533,'DSDNA.RED4U','DSDNA','RED4U','INTERNAL','Anti DNA','IMMUNOLOGY',2.0,NULL,'TEXT',NULL,NULL,'negative','positive','1=2;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(534,'EOSINODIFF.PURPLE','EOSINODIFF','PURPLE','INTERNAL','Eosinophils','HEMATOLOGY',1.0,'percent','INTEGER','0.0','7.0',NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1500;RUN2=2359','RUN1=ONEHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(535,'ESR.PURPLE','ESR','PURPLE','INTERNAL','Erythrocyte Sedimentation Rate','HEMATOLOGY',1.0,'mm/hr','INTEGER',NULL,NULL,NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1430;RUN2=2359','RUN1=ONEHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(536,'FBS.GREY','FBS','GREY','INTERNAL','FBG; FBS; Fasting Blood Glucose','BIOCHEMISTRY',1.0,'mg/dl','INTEGER','65.0','110.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(537,'FERRI.RED4U','FERRI','RED4U','INTERNAL','Ferritin','ENDOCRINOLOGY',2.0,'ng/ml','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(538,'FSH.RED4U','FSH','RED4U','INTERNAL','FSH','ENDOCRINOLOGY',2.0,'mIU/ml','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(539,'FT3.RED4U','FT3','RED4U','INTERNAL','FT3','ENDOCRINOLOGY',2.0,'pg/ml','FLOAT;1','1.5','4.1',NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(540,'FT4.RED4U','FT4','RED4U','INTERNAL','F T4','ENDOCRINOLOGY',2.0,'ng/dl','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(541,'G6PD.PURPLE','G6PD','PURPLE','INTERNAL','G6PD','BIOCHEMISTRY',1.0,'u/g','FLOAT;1',NULL,'14.2',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(542,'GGT.RED4U','GGT','RED4U','INTERNAL','GGTP','BIOCHEMISTRY',2.0,'u/g','INTEGER',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(543,'GLOB.RED4U','GLOB','RED4U','INTERNAL','GLOBULIN','BIOCHEMISTRY',2.0,'g/dl','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(544,'GP.PURPLE','GP','PURPLE','INTERNAL','Blood Type / GP & RH','HEMATOLOGY',1.0,NULL,'TEXT',NULL,NULL,'negative','GP-> A; B; AB; O; Rhesus-> positive; negative','1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1530;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(545,'GP.RED4U','GP','RED4U','INTERNAL','Blood Type / GP & RH','HEMATOLOGY',2.0,NULL,'TEXT',NULL,NULL,'negative','GP-> A; B; AB; O; Rhesus-> positive; negative','1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1530;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(546,'HBA1C.PURPLE','HBA1C','PURPLE','INTERNAL','HBA1C','BIOCHEMISTRY',1.0,'percent','FLOAT;1','4.5','6.3',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(547,'HBEP.PURPLE','HBEP','PURPLE','INTERNAL','Hemoglobin Electrophorsis','HEMATOLOGY',2.0,NULL,'TEXT',NULL,NULL,'AA pattern','AS pattern; SS pattern; AF pattern; A; A2/C pattern; S; A2/C pattern; etc','5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1300;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(548,'HDL.RED4U','HDL','RED4U','INTERNAL','HDL','BIOCHEMISTRY',2.0,'mg/dl','INTEGER',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(549,'HGB.PURPLE','HGB','PURPLE','INTERNAL','Hb ','HEMATOLOGY',1.0,'g/dl','INTEGER',NULL,NULL,NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1600;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(550,'HSV1G.RED4U','HSV1G','RED4U','INTERNAL','Herpes I IgG','IMMUNOLOGY',2.0,NULL,'FLOAT;1',NULL,NULL,NULL,NULL,'2=3;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(551,'HSV1M.RED4U','HSV1M','RED4U','INTERNAL','Herpes I IgM','IMMUNOLOGY',2.0,NULL,'FLOAT;1',NULL,NULL,NULL,NULL,'2=3;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(552,'HSV2G.RED4U','HSV2G','RED4U','INTERNAL','Herpes II IgG','IMMUNOLOGY',2.0,NULL,'FLOAT;1',NULL,NULL,NULL,NULL,'2=3;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(553,'HSV2M.RED4U','HSV2M','RED4U','INTERNAL','Herpes II IgM','IMMUNOLOGY',2.0,NULL,'FLOAT;1',NULL,NULL,NULL,NULL,'2=3;4=5','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(554,'IDCT.RED4U','IDCT','RED4U','INTERNAL','IDCT','HEMATOLOGY',2.0,NULL,'TEXT',NULL,NULL,'negative','positive 1-2 dils; 1-4 dils; 1-8 dils; 1-16 dils; etc','1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1400;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(555,'IRON.RED4U','IRON','RED4U','INTERNAL','Iron','BIOCHEMISTRY',2.0,'ug/dl','INTEGER',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(556,'LDH.RED4U','LDH','RED4U','INTERNAL','LDH-L','BIOCHEMISTRY',2.0,'IU/l','INTEGER',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(557,'LIPASE.RED4U','LIPASE','RED4U','INTERNAL','Lipase','BIOCHEMISTRY',2.0,'IU/l','INTEGER',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(558,'LITH.RED4U','LITH','RED4U','INTERNAL','LITHIUM','BIOCHEMISTRY',2.0,'mmol/l','FLOAT;1','0.3','1.2',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(559,'LYMPHSDIFF.PURPLE','LYMPHSDIFF','PURPLE','INTERNAL','Lymphocytes','HEMATOLOGY',1.0,'percent','INTEGER','20.0','35.0',NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1500;RUN2=2359','RUN1=ONEHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(560,'MAG.RED4U','MAG','RED4U','INTERNAL','MG++','BIOCHEMISTRY',2.0,'mg/dl','FLOAT;1','1.8','2.9',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(561,'MCH.PURPLE','MCH','PURPLE','INTERNAL','Mean Corpuscular hemoglobin','HEMATOLOGY',1.0,'pg ','INTEGER','27.0','31.0',NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1600;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(562,'MCHC.PURPLE','MCHC','PURPLE','INTERNAL','Mean Corpuscular Hemoglobin Concentration','HEMATOLOGY',1.0,'g/dl','INTEGER','33.0','37.0',NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1600;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(563,'MCV.PURPLE','MCV','PURPLE','INTERNAL','MCV','HEMATOLOGY',1.0,'fl','INTEGER',NULL,NULL,NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1600;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(564,'MONOCDIFF.PURPLE','MONOCDIFF','PURPLE','INTERNAL','Monocytes','HEMATOLOGY',1.0,'percent','INTEGER','2.0','6.0',NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1500;RUN2=2359','RUN1=ONEHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(565,'PCV.PURPLE','PCV','PURPLE','INTERNAL','HCT','HEMATOLOGY',1.0,'percent','INTEGER',NULL,NULL,NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1600;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(566,'PHOS.RED4U','PHOS','RED4U','INTERNAL','Phosphate','BIOCHEMISTRY',2.0,'mg/dl','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(567,'PLT.PURPLE','PLT','PURPLE','INTERNAL','Platelets','HEMATOLOGY',1.0,'x10^9 /l','INTEGER','150.0','400.0',NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1600;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(568,'POLYSDIFF.PURPLE','POLYSDIFF','PURPLE','INTERNAL','Polymorphs','HEMATOLOGY',1.0,'percent','INTEGER','55.0','75.0',NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1500;RUN2=2359','RUN1=ONEHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(569,'POTAS.RED4U','POTAS','RED4U','INTERNAL','K+','BIOCHEMISTRY',2.0,'mmol/l','FLOAT;1','3.5','5.3',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(570,'PT .BLUE','PT ','BLUE','INTERNAL','PT ','HEMATOLOGY',3.2,'secs','INTEGER',NULL,NULL,NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1400;RUN2=2359','RUN1=TWOHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(571,'PTT.BLUE','PTT','BLUE','INTERNAL','PTT','HEMATOLOGY',3.2,'secs','INTEGER',NULL,NULL,NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1400;RUN2=2359','RUN1=TWOHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(572,'RBCCBC.PURPLE','RBCCBC','PURPLE','INTERNAL','RBC ','HEMATOLOGY',1.0,'x10^12 /l','FLOAT;1',NULL,NULL,NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1600;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(573,'RBCFOL.PURPLE','RBCFOL','PURPLE','INTERNAL','RBC Folate','ENDOCRINOLOGY',1.0,'ng/ml','INTEGER','93.0','641.0',NULL,NULL,'1=2;3=4;5=6','1=2;3=4;5=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(574,'RBCFOL.RED4U','RBCFOL','RED4U','INTERNAL','RBC Folate','ENDOCRINOLOGY',2.0,'ng/ml','INTEGER','93.0','641.0',NULL,NULL,'1=2;3=4;5=6','1=2;3=4;5=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(575,'RBS.GREY','RBS','GREY','INTERNAL','RBG; Random Blood Glucose','BIOCHEMISTRY',1.0,'mg/dl','INTEGER',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(576,'RETIC.PURPLE','RETIC','PURPLE','INTERNAL','Reticulocyte Count','HEMATOLOGY',1.0,'percent','FLOAT;1',NULL,NULL,NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1500;RUN2=2359','RUN1=ONEHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(577,'SERFOL.RED4U','SERFOL','RED4U','INTERNAL','Folic Acid','ENDOCRINOLOGY',2.0,'ng/ml','FLOAT;1',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(578,'SGOT.RED4U','SGOT','RED4U','INTERNAL','AST','BIOCHEMISTRY',2.0,'IU/l','INTEGER','0.0','40.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(579,'SGPT.RED4U','SGPT','RED4U','INTERNAL','ALT','BIOCHEMISTRY',2.0,'IU/l','INTEGER','0.0','38.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(580,'SODIUM.RED4U','SODIUM','RED4U','INTERNAL','Sodium','BIOCHEMISTRY',2.0,'mmol/l','INTEGER','135.0','148.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(581,'SPE.RED4U','SPE','RED4U','INTERNAL','Protein Electrophoresis','IMMUNOLOGY',2.0,NULL,'GRAPH',NULL,NULL,' ',' ','5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1300;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(582,'T3UPT.RED4U','T3UPT','RED4U','INTERNAL','T3upt','ENDOCRINOLOGY',2.0,NULL,'INTEGER',NULL,NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(583,'TBILI.RED4U','TBILI','RED4U','INTERNAL','T.BILI','BIOCHEMISTRY',2.0,'mg/dl','FLOAT;1','0.2',NULL,NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(584,'TPROT.RED4U','TPROT','RED4U','INTERNAL','T.PROT.','BIOCHEMISTRY',2.0,'g/dl','FLOAT;1','6.4','8.3',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(585,'TRIG.RED4U','TRIG','RED4U','INTERNAL','TRIG; Tg','BIOCHEMISTRY',2.0,'mg/dl','INTEGER','35.0','165.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(586,'TSH.RED4U','TSH','RED4U','INTERNAL','TSH','ENDOCRINOLOGY',2.0,NULL,'INTEGER',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=2;3=4;5=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(587,'TT3.RED4U','TT3','RED4U','INTERNAL','T3','ENDOCRINOLOGY',2.0,NULL,'INTEGER',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=2;3=4;5=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(588,'TT4.RED4U','TT4','RED4U','INTERNAL','T4','ENDOCRINOLOGY',2.0,NULL,'INTEGER',NULL,NULL,NULL,NULL,'1=2;3=4;5=6','1=2;3=4;5=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(589,'URC.RED4U','URC','RED4U','INTERNAL','U/ACID','BIOCHEMISTRY',2.0,'mg/dl','FLOAT;1','2.5','7.7',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(590,'VDRL.RED4U','VDRL','RED4U','INTERNAL','Very Low density Lipoprotein','IMMUNOLOGY',2.0,NULL,'TEXT',NULL,NULL,'non-reactive','reactive 1-2 dils; 1-4 dils; 1-8 dils; etc','2=3;5=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=0800;RUN2=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(591,'VLDL.RED4U','VLDL','RED4U','INTERNAL','VLDL','BIOCHEMISTRY',2.0,'mg/dl','INTEGER','0.0','38.0',NULL,NULL,'1=2;2=3;3=4;4=5;5=6;6=1','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1230;RUN2=1400;RUN3=2359#RUSH1=1400;RUSH2=2359','RUN1=SAMEDAY;RUN2=NEXTDAY;RUN3=DAYAFTER#RUSH1=SAMEDAY;RUSH2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(592,'WBCCBC.PURPLE','WBCCBC','PURPLE','INTERNAL','WBC','HEMATOLOGY',1.0,'x10^9 /l','INTEGER','5.0','10.0',NULL,NULL,'1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1600;RUN2=2359','RUN1=HALFHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1),(593,'XMATCH.RED4U','XMATCH','RED4U','INTERNAL','Cross Match','HEMATOLOGY',1.0,NULL,'TEXT',NULL,NULL,'compatible','non-compatible','1=1;2=2;3=3;4=4;5=5;6=6','1=1;2=2;3=3;4=4;5=5;6=6','RUN1=1400;RUN2=2359','RUN1=TWOHOUR;RUN2=NEXTDAY','IMPLEMENTATION','2012-10-13 00:00:00','ADMIN','2012-10-13 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `sampledef_bloods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampledef_bloods_hs`
--

DROP TABLE IF EXISTS `sampledef_bloods_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampledef_bloods_hs` (
  `id` int(11) unsigned NOT NULL,
  `sampledef_id` varchar(71) NOT NULL,
  `test_id` varchar(50) NOT NULL,
  `specimendef_id` varchar(20) NOT NULL,
  `test_location` enum('INTERNAL','EXTERNAL') NOT NULL,
  `test_alt_name` varchar(255) NOT NULL,
  `department` varchar(50) NOT NULL,
  `volume_required` float(16,1) NOT NULL,
  `result_unit` varchar(20) DEFAULT NULL,
  `result_format` varchar(10) DEFAULT NULL,
  `result_range_normal_lower` varchar(255) DEFAULT NULL,
  `result_range_normal_upper` varchar(255) DEFAULT NULL,
  `result_normal` varchar(255) DEFAULT NULL,
  `result_abnormal` varchar(255) DEFAULT NULL,
  `testrun_result_day` varchar(27) NOT NULL,
  `rushrun_result_day` varchar(27) NOT NULL,
  `sample_submit_cutoff_time` varchar(255) NOT NULL,
  `testrun_time` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampledef_bloods_hs`
--

LOCK TABLES `sampledef_bloods_hs` WRITE;
/*!40000 ALTER TABLE `sampledef_bloods_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sampledef_bloods_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampledef_bloods_is`
--

DROP TABLE IF EXISTS `sampledef_bloods_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampledef_bloods_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sampledef_id` varchar(71) DEFAULT NULL,
  `test_id` varchar(50) DEFAULT NULL,
  `specimendef_id` varchar(20) DEFAULT NULL,
  `test_location` enum('INTERNAL','EXTERNAL') DEFAULT NULL,
  `test_alt_name` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `volume_required` float(16,1) DEFAULT NULL,
  `result_unit` varchar(20) DEFAULT NULL,
  `result_format` varchar(10) DEFAULT NULL,
  `result_range_normal_lower` varchar(255) DEFAULT NULL,
  `result_range_normal_upper` varchar(255) DEFAULT NULL,
  `result_normal` varchar(255) DEFAULT NULL,
  `result_abnormal` varchar(255) DEFAULT NULL,
  `testrun_result_day` varchar(27) DEFAULT NULL,
  `rushrun_result_day` varchar(27) DEFAULT NULL,
  `sample_submit_cutoff_time` varchar(255) DEFAULT NULL,
  `testrun_time` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_sampledef_id` (`sampledef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampledef_bloods_is`
--

LOCK TABLES `sampledef_bloods_is` WRITE;
/*!40000 ALTER TABLE `sampledef_bloods_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `sampledef_bloods_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampledef_csfs`
--

DROP TABLE IF EXISTS `sampledef_csfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampledef_csfs` (
  `id` int(11) unsigned NOT NULL,
  `sampledef_id` varchar(255) NOT NULL,
  `test_id` varchar(255) NOT NULL,
  `specimendef_id` varchar(255) NOT NULL,
  `required_unit` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_sampledef_id` (`sampledef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampledef_csfs`
--

LOCK TABLES `sampledef_csfs` WRITE;
/*!40000 ALTER TABLE `sampledef_csfs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sampledef_csfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampledef_csfs_hs`
--

DROP TABLE IF EXISTS `sampledef_csfs_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampledef_csfs_hs` (
  `id` int(11) unsigned NOT NULL,
  `sampledef_id` varchar(255) NOT NULL,
  `test_id` varchar(255) NOT NULL,
  `specimendef_id` varchar(255) NOT NULL,
  `required_unit` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampledef_csfs_hs`
--

LOCK TABLES `sampledef_csfs_hs` WRITE;
/*!40000 ALTER TABLE `sampledef_csfs_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sampledef_csfs_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampledef_csfs_is`
--

DROP TABLE IF EXISTS `sampledef_csfs_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampledef_csfs_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sampledef_id` varchar(255) DEFAULT NULL,
  `test_id` varchar(255) DEFAULT NULL,
  `specimendef_id` varchar(255) DEFAULT NULL,
  `required_unit` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_sampledef_id` (`sampledef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampledef_csfs_is`
--

LOCK TABLES `sampledef_csfs_is` WRITE;
/*!40000 ALTER TABLE `sampledef_csfs_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `sampledef_csfs_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampledef_urines`
--

DROP TABLE IF EXISTS `sampledef_urines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampledef_urines` (
  `id` int(11) unsigned NOT NULL,
  `sampledef_id` varchar(255) NOT NULL,
  `test_id` varchar(255) NOT NULL,
  `specimendef_id` varchar(255) NOT NULL,
  `required_unit` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_sampledef_id` (`sampledef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampledef_urines`
--

LOCK TABLES `sampledef_urines` WRITE;
/*!40000 ALTER TABLE `sampledef_urines` DISABLE KEYS */;
/*!40000 ALTER TABLE `sampledef_urines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampledef_urines_hs`
--

DROP TABLE IF EXISTS `sampledef_urines_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampledef_urines_hs` (
  `id` int(11) unsigned NOT NULL,
  `sampledef_id` varchar(255) NOT NULL,
  `test_id` varchar(255) NOT NULL,
  `specimendef_id` varchar(255) NOT NULL,
  `required_unit` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampledef_urines_hs`
--

LOCK TABLES `sampledef_urines_hs` WRITE;
/*!40000 ALTER TABLE `sampledef_urines_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sampledef_urines_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sampledef_urines_is`
--

DROP TABLE IF EXISTS `sampledef_urines_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sampledef_urines_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sampledef_id` varchar(255) DEFAULT NULL,
  `test_id` varchar(255) DEFAULT NULL,
  `specimendef_id` varchar(255) DEFAULT NULL,
  `required_unit` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_sampledef_id` (`sampledef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sampledef_urines_is`
--

LOCK TABLES `sampledef_urines_is` WRITE;
/*!40000 ALTER TABLE `sampledef_urines_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `sampledef_urines_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimendef_bloods`
--

DROP TABLE IF EXISTS `specimendef_bloods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimendef_bloods` (
  `id` int(11) unsigned NOT NULL,
  `specimendef_id` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `full_size_unit` float(16,1) NOT NULL,
  `aliquot_size_unit` float(16,1) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `aliquot_type` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_specimendef_id` (`specimendef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimendef_bloods`
--

LOCK TABLES `specimendef_bloods` WRITE;
/*!40000 ALTER TABLE `specimendef_bloods` DISABLE KEYS */;
INSERT INTO `specimendef_bloods` VALUES (501,'RED4U','RED Top Tube (4ml)',4.0,2.0,'ml','SERUM','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(502,'RED6U','RED Top Tube (6ml)',6.0,3.0,'ml','SERUM','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(503,'GREY','GREY Top Tube (2ml)',2.0,1.0,'ml','PLASMA','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(504,'PURPLE','PURPLE Top Tube (2ml)',2.0,1.0,'ml','PLASMA','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(505,'BLUE','BLUE Top Tube (3.2ml)',3.2,1.0,'ml','PLASMA','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `specimendef_bloods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimendef_bloods_hs`
--

DROP TABLE IF EXISTS `specimendef_bloods_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimendef_bloods_hs` (
  `id` int(11) unsigned NOT NULL,
  `specimendef_id` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `full_size_unit` float(16,1) NOT NULL,
  `aliquot_size_unit` float(16,1) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `aliquot_type` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimendef_bloods_hs`
--

LOCK TABLES `specimendef_bloods_hs` WRITE;
/*!40000 ALTER TABLE `specimendef_bloods_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `specimendef_bloods_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimendef_bloods_is`
--

DROP TABLE IF EXISTS `specimendef_bloods_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimendef_bloods_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `specimendef_id` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `full_size_unit` float(16,1) DEFAULT NULL,
  `aliquot_size_unit` float(16,1) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `aliquot_type` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_specimendef_id` (`specimendef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimendef_bloods_is`
--

LOCK TABLES `specimendef_bloods_is` WRITE;
/*!40000 ALTER TABLE `specimendef_bloods_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `specimendef_bloods_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimendef_csfs`
--

DROP TABLE IF EXISTS `specimendef_csfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimendef_csfs` (
  `id` int(11) unsigned NOT NULL,
  `specimendef_id` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `full_size_unit` float(16,1) NOT NULL,
  `aliquot_size_unit` float(16,1) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `aliquot_type` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_specimendef_id` (`specimendef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimendef_csfs`
--

LOCK TABLES `specimendef_csfs` WRITE;
/*!40000 ALTER TABLE `specimendef_csfs` DISABLE KEYS */;
INSERT INTO `specimendef_csfs` VALUES (501,'STERILTUBE','RED Top Sterile Tube (4ml)',1.0,0.5,'ml','CSF','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `specimendef_csfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimendef_csfs_hs`
--

DROP TABLE IF EXISTS `specimendef_csfs_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimendef_csfs_hs` (
  `id` int(11) unsigned NOT NULL,
  `specimendef_id` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `full_size_unit` float(16,1) NOT NULL,
  `aliquot_size_unit` float(16,1) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `aliquot_type` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimendef_csfs_hs`
--

LOCK TABLES `specimendef_csfs_hs` WRITE;
/*!40000 ALTER TABLE `specimendef_csfs_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `specimendef_csfs_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimendef_csfs_is`
--

DROP TABLE IF EXISTS `specimendef_csfs_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimendef_csfs_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `specimendef_id` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `full_size_unit` float(16,1) DEFAULT NULL,
  `aliquot_size_unit` float(16,1) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `aliquot_type` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_specimendef_id` (`specimendef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimendef_csfs_is`
--

LOCK TABLES `specimendef_csfs_is` WRITE;
/*!40000 ALTER TABLE `specimendef_csfs_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `specimendef_csfs_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimendef_urines`
--

DROP TABLE IF EXISTS `specimendef_urines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimendef_urines` (
  `id` int(11) unsigned NOT NULL,
  `specimendef_id` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `full_size_unit` float(16,1) NOT NULL,
  `aliquot_size_unit` float(16,1) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `aliquot_type` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_specimendef_id` (`specimendef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimendef_urines`
--

LOCK TABLES `specimendef_urines` WRITE;
/*!40000 ALTER TABLE `specimendef_urines` DISABLE KEYS */;
INSERT INTO `specimendef_urines` VALUES (501,'STERILECUP','Urine sample cup',100.0,15.0,'ml','URINE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1),(502,'NONSTERILE','Non-sterile container',2000.0,3.0,'ml','URINE','IMPLEMENTATION','2012-09-24 00:00:00','ADMIN','2012-09-24 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `specimendef_urines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimendef_urines_hs`
--

DROP TABLE IF EXISTS `specimendef_urines_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimendef_urines_hs` (
  `id` int(11) unsigned NOT NULL,
  `specimendef_id` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `full_size_unit` float(16,1) NOT NULL,
  `aliquot_size_unit` float(16,1) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `aliquot_type` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimendef_urines_hs`
--

LOCK TABLES `specimendef_urines_hs` WRITE;
/*!40000 ALTER TABLE `specimendef_urines_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `specimendef_urines_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specimendef_urines_is`
--

DROP TABLE IF EXISTS `specimendef_urines_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specimendef_urines_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `specimendef_id` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `full_size_unit` float(16,1) DEFAULT NULL,
  `aliquot_size_unit` float(16,1) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `aliquot_type` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_specimendef_id` (`specimendef_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specimendef_urines_is`
--

LOCK TABLES `specimendef_urines_is` WRITE;
/*!40000 ALTER TABLE `specimendef_urines_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `specimendef_urines_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysconfigs`
--

DROP TABLE IF EXISTS `sysconfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysconfigs` (
  `id` int(11) unsigned NOT NULL,
  `sysconfig_id` varchar(50) NOT NULL,
  `initialization_date` date NOT NULL,
  `global_authmode_on` enum('1','0') DEFAULT '1',
  `global_indexfield_on` enum('1','0') DEFAULT '1',
  `app_version` varchar(20) NOT NULL,
  `db_version` varchar(20) NOT NULL,
  `environment` varchar(50) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_sysconfig_id` (`sysconfig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysconfigs`
--

LOCK TABLES `sysconfigs` WRITE;
/*!40000 ALTER TABLE `sysconfigs` DISABLE KEYS */;
INSERT INTO `sysconfigs` VALUES (1,'SYSTEM','2011-08-12','1','1','20120701-01','20120701-01','DEVELOPMENT','ADMIN','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `sysconfigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysconfigs_hs`
--

DROP TABLE IF EXISTS `sysconfigs_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysconfigs_hs` (
  `id` int(11) unsigned NOT NULL,
  `sysconfig_id` varchar(50) NOT NULL,
  `initialization_date` date NOT NULL,
  `global_authmode_on` enum('1','0') DEFAULT '1',
  `global_indexfield_on` enum('1','0') DEFAULT '1',
  `app_version` varchar(20) NOT NULL,
  `db_version` varchar(20) NOT NULL,
  `environment` varchar(50) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysconfigs_hs`
--

LOCK TABLES `sysconfigs_hs` WRITE;
/*!40000 ALTER TABLE `sysconfigs_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysconfigs_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysconfigs_is`
--

DROP TABLE IF EXISTS `sysconfigs_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysconfigs_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sysconfig_id` varchar(50) DEFAULT NULL,
  `initialization_date` date DEFAULT NULL,
  `global_authmode_on` enum('1','0') DEFAULT '1',
  `global_indexfield_on` enum('1','0') DEFAULT '1',
  `app_version` varchar(20) DEFAULT NULL,
  `db_version` varchar(20) DEFAULT NULL,
  `environment` varchar(50) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_sysconfig_id` (`sysconfig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysconfigs_is`
--

LOCK TABLES `sysconfigs_is` WRITE;
/*!40000 ALTER TABLE `sysconfigs_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `sysconfigs_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableresetconfigs`
--

DROP TABLE IF EXISTS `tableresetconfigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableresetconfigs` (
  `id` int(11) unsigned NOT NULL,
  `reset_id` varchar(255) NOT NULL,
  `reset_profile` text NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_reset_id` (`reset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableresetconfigs`
--

LOCK TABLES `tableresetconfigs` WRITE;
/*!40000 ALTER TABLE `tableresetconfigs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tableresetconfigs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableresetconfigs_hs`
--

DROP TABLE IF EXISTS `tableresetconfigs_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableresetconfigs_hs` (
  `id` int(11) unsigned NOT NULL,
  `reset_id` varchar(255) NOT NULL,
  `reset_profile` text NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableresetconfigs_hs`
--

LOCK TABLES `tableresetconfigs_hs` WRITE;
/*!40000 ALTER TABLE `tableresetconfigs_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tableresetconfigs_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableresetconfigs_is`
--

DROP TABLE IF EXISTS `tableresetconfigs_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableresetconfigs_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reset_id` varchar(255) DEFAULT NULL,
  `reset_profile` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_reset_id` (`reset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableresetconfigs_is`
--

LOCK TABLES `tableresetconfigs_is` WRITE;
/*!40000 ALTER TABLE `tableresetconfigs_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `tableresetconfigs_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableresetruns`
--

DROP TABLE IF EXISTS `tableresetruns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableresetruns` (
  `id` int(11) unsigned NOT NULL,
  `resetconfig_id` varchar(255) NOT NULL,
  `lastrun_date` varchar(255) NOT NULL,
  `log` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_resetconfig_id` (`resetconfig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableresetruns`
--

LOCK TABLES `tableresetruns` WRITE;
/*!40000 ALTER TABLE `tableresetruns` DISABLE KEYS */;
/*!40000 ALTER TABLE `tableresetruns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableresetruns_hs`
--

DROP TABLE IF EXISTS `tableresetruns_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableresetruns_hs` (
  `id` int(11) unsigned NOT NULL,
  `resetconfig_id` varchar(255) NOT NULL,
  `lastrun_date` varchar(255) NOT NULL,
  `log` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableresetruns_hs`
--

LOCK TABLES `tableresetruns_hs` WRITE;
/*!40000 ALTER TABLE `tableresetruns_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tableresetruns_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableresetruns_is`
--

DROP TABLE IF EXISTS `tableresetruns_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tableresetruns_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `resetconfig_id` varchar(255) DEFAULT NULL,
  `lastrun_date` varchar(255) DEFAULT NULL,
  `log` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_resetconfig_id` (`resetconfig_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableresetruns_is`
--

LOCK TABLES `tableresetruns_is` WRITE;
/*!40000 ALTER TABLE `tableresetruns_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `tableresetruns_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tills`
--

DROP TABLE IF EXISTS `tills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tills` (
  `id` int(11) unsigned NOT NULL,
  `till_id` varchar(59) NOT NULL,
  `till_user` varchar(50) NOT NULL,
  `till_date` date NOT NULL,
  `initial_balance` float(16,2) NOT NULL,
  `status` enum('OPEN','SUSPENDED','CLOSED') NOT NULL,
  `expiry_date` date NOT NULL,
  `expiry_time` time NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_till_id` (`till_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tills`
--

LOCK TABLES `tills` WRITE;
/*!40000 ALTER TABLE `tills` DISABLE KEYS */;
INSERT INTO `tills` VALUES (1001,'ADMIN-20120707','ADMIN','2012-07-07',0.00,'OPEN','2012-07-07','23:59:00','ADMIN','2012-07-07 19:16:57','ADMIN','2012-07-07 19:16:57','LIVE',1),(1002,'ADMIN-20120708','ADMIN','2012-07-08',0.00,'OPEN','2012-07-08','23:59:00','ADMIN','2012-07-08 13:06:16','ADMIN','2012-07-08 13:06:16','LIVE',1),(1003,'ADMIN-20120709','ADMIN','2012-07-09',0.00,'OPEN','2012-07-09','23:59:00','ADMIN','2012-07-09 09:50:38','ADMIN','2012-07-09 09:50:39','LIVE',1);
/*!40000 ALTER TABLE `tills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tills_hs`
--

DROP TABLE IF EXISTS `tills_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tills_hs` (
  `id` int(11) unsigned NOT NULL,
  `till_id` varchar(59) NOT NULL,
  `till_user` varchar(50) NOT NULL,
  `till_date` date NOT NULL,
  `initial_balance` float(16,2) NOT NULL,
  `status` enum('OPEN','SUSPENDED','CLOSED') NOT NULL,
  `expiry_date` date NOT NULL,
  `expiry_time` time NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tills_hs`
--

LOCK TABLES `tills_hs` WRITE;
/*!40000 ALTER TABLE `tills_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tills_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tills_is`
--

DROP TABLE IF EXISTS `tills_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tills_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `till_id` varchar(59) DEFAULT NULL,
  `till_user` varchar(50) DEFAULT NULL,
  `till_date` date DEFAULT NULL,
  `initial_balance` float(16,2) DEFAULT '0.00',
  `status` enum('OPEN','SUSPENDED','CLOSED') DEFAULT 'OPEN',
  `expiry_date` date DEFAULT NULL,
  `expiry_time` time DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_till_id` (`till_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tills_is`
--

LOCK TABLES `tills_is` WRITE;
/*!40000 ALTER TABLE `tills_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `tills_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tilltransactions`
--

DROP TABLE IF EXISTS `tilltransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tilltransactions` (
  `id` int(11) unsigned NOT NULL,
  `transaction_id` varchar(16) NOT NULL,
  `till_id` varchar(59) NOT NULL,
  `amount` float(16,2) NOT NULL,
  `transaction_type` enum('CASH','CHEQUE','DEBIT.CARD','CREDIT.CARD') NOT NULL,
  `transaction_date` date NOT NULL,
  `movement` enum('IN','OUT') NOT NULL,
  `reason` varchar(255) NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tilltransactions`
--

LOCK TABLES `tilltransactions` WRITE;
/*!40000 ALTER TABLE `tilltransactions` DISABLE KEYS */;
INSERT INTO `tilltransactions` VALUES (1001,'TLL20120707-0001','ADMIN-20120707',0.00,'CASH','0000-00-00','IN','Initial balance for till ADMIN-20120707','','ADMIN','2012-07-07 19:16:57','SYSAUTH','2012-07-07 19:16:57','LIVE',1),(1002,'TLL20120708-0001','ADMIN-20120708',0.00,'CASH','0000-00-00','IN','Initial balance for till ADMIN-20120708','','ADMIN','2012-07-08 13:06:17','SYSAUTH','2012-07-08 13:06:17','LIVE',1),(1003,'TLL20120709-0001','ADMIN-20120709',0.00,'CASH','0000-00-00','IN','Initial balance for till ADMIN-20120709','','ADMIN','2012-07-09 09:50:39','SYSAUTH','2012-07-09 09:50:39','LIVE',1);
/*!40000 ALTER TABLE `tilltransactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tilltransactions_hs`
--

DROP TABLE IF EXISTS `tilltransactions_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tilltransactions_hs` (
  `id` int(11) unsigned NOT NULL,
  `transaction_id` varchar(16) NOT NULL,
  `till_id` varchar(59) NOT NULL,
  `amount` float(16,2) NOT NULL,
  `transaction_type` enum('CASH','CHEQUE','DEBIT.CARD','CREDIT.CARD') NOT NULL,
  `transaction_date` date NOT NULL,
  `movement` enum('IN','OUT') NOT NULL,
  `reason` varchar(255) NOT NULL,
  `comments` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tilltransactions_hs`
--

LOCK TABLES `tilltransactions_hs` WRITE;
/*!40000 ALTER TABLE `tilltransactions_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tilltransactions_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tilltransactions_is`
--

DROP TABLE IF EXISTS `tilltransactions_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tilltransactions_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(16) DEFAULT NULL,
  `till_id` varchar(59) DEFAULT NULL,
  `amount` float(16,2) DEFAULT '0.00',
  `transaction_type` enum('CASH','CHEQUE','DEBIT.CARD','CREDIT.CARD') DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `movement` enum('IN','OUT') DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `comments` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tilltransactions_is`
--

LOCK TABLES `tilltransactions_is` WRITE;
/*!40000 ALTER TABLE `tilltransactions_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `tilltransactions_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(32) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tokens`
--

LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userroles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idname` varchar(50) NOT NULL,
  `roles` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_idname` (`idname`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (1,'ADMIN','useradmin_super,sysadmin_super,developer_super,customer_super,sales_super,enquiry_super,report_super,businessadmin_super','ADMIN','2011-04-29 15:26:25','ADMIN','2011-04-29 15:26:40','LIVE',1),(1001,'DUNSTAN.NESBIT','useradmin_super,sysadmin_super,developer_super,customer_super,vehicle_super,device_super,sales_super,enquiry_super,report_super','ADMIN','2011-04-20 15:48:08','ADMIN','2011-04-20 15:50:49','LIVE',1);
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles_hs`
--

DROP TABLE IF EXISTS `userroles_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userroles_hs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idname` varchar(50) NOT NULL,
  `roles` text,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=MyISAM AUTO_INCREMENT=10002 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles_hs`
--

LOCK TABLES `userroles_hs` WRITE;
/*!40000 ALTER TABLE `userroles_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `userroles_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles_is`
--

DROP TABLE IF EXISTS `userroles_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userroles_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idname` varchar(50) DEFAULT NULL,
  `roles` text,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT 'IHLD',
  `current_no` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1009 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles_is`
--

LOCK TABLES `userroles_is` WRITE;
/*!40000 ALTER TABLE `userroles_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `userroles_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL,
  `idname` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `fullname` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `enabled` enum('Y','N') NOT NULL DEFAULT 'Y',
  `expiry_date` date NOT NULL DEFAULT '2037-12-31',
  `branch_id` varchar(50) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `password` char(50) DEFAULT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_idname` (`idname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ADMIN','admin','Administrator','admin@icm.com','Y','2037-12-31','HEAD.OFFICE','SYSTEM','9cc34344277ce828fbb9458d325a60f701d6012d3',353,1350149773,'IMPLEMENTATION','2010-08-12 00:00:00','ADMIN','2010-08-12 00:00:00','LIVE',1),(2,'IMPLEMENTATION','implementation','Implementation','implementation@icm.com','Y','2037-12-31','HEAD.OFFICE','SYSTEM','9cc34344277ce828fbb9458d325a60f701d6012d3',20,1301580113,'ADMIN','2011-01-21 12:57:20','ADMIN','2011-01-21 12:57:56','LIVE',1),(1001,'DUNSTAN.NESBIT','dnesbit','Dunstan Nesbit','dunstan.nesbit@gmail.com','Y','2037-12-31','HEAD.OFFICE','INFORMATION.TECHNOLOGY','9cc34344277ce828fbb9458d325a60f701d6012d3',45,1341588131,'ADMIN','2011-08-10 12:12:54','ADMIN','2011-08-10 12:13:06','LIVE',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_hs`
--

DROP TABLE IF EXISTS `users_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_hs` (
  `id` int(11) unsigned NOT NULL,
  `idname` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `fullname` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `enabled` enum('Y','N') NOT NULL DEFAULT 'Y',
  `expiry_date` date NOT NULL DEFAULT '2037-12-31',
  `branch_id` varchar(50) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `password` char(50) DEFAULT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_hs`
--

LOCK TABLES `users_hs` WRITE;
/*!40000 ALTER TABLE `users_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_is`
--

DROP TABLE IF EXISTS `users_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idname` varchar(50) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `enabled` enum('Y','N') NOT NULL DEFAULT 'Y',
  `expiry_date` date NOT NULL DEFAULT '2037-12-31',
  `branch_id` varchar(50) DEFAULT NULL,
  `department_id` varchar(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  `logins` int(10) unsigned DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) NOT NULL DEFAULT 'IHLD',
  `current_no` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_is`
--

LOCK TABLES `users_is` WRITE;
/*!40000 ALTER TABLE `users_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_batchorders_lookup`
--

DROP TABLE IF EXISTS `vw_batchorders_lookup`;
/*!50001 DROP VIEW IF EXISTS `vw_batchorders_lookup`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_batchorders_lookup` (
  `invoice_id` int(11) unsigned,
  `order_id` varchar(20),
  `order_date` date,
  `first_name` varchar(255),
  `order_details` varchar(341),
  `last_name` varchar(255),
  `extended_total` double(19,2),
  `tax_total` double(19,2),
  `order_total` double(19,2),
  `payment_total` double(19,2),
  `balance` double(19,2),
  `payment_type` varchar(341)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_batchtypes`
--

DROP TABLE IF EXISTS `vw_batchtypes`;
/*!50001 DROP VIEW IF EXISTS `vw_batchtypes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_batchtypes` (
  `type` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_core_fixedselections_available`
--

DROP TABLE IF EXISTS `vw_core_fixedselections_available`;
/*!50001 DROP VIEW IF EXISTS `vw_core_fixedselections_available`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_core_fixedselections_available` (
  `fixedselection_id` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_core_users_noroles`
--

DROP TABLE IF EXISTS `vw_core_users_noroles`;
/*!50001 DROP VIEW IF EXISTS `vw_core_users_noroles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_core_users_noroles` (
  `idname` varchar(50),
  `fullname` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_distinct_product_category`
--

DROP TABLE IF EXISTS `vw_distinct_product_category`;
/*!50001 DROP VIEW IF EXISTS `vw_distinct_product_category`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_distinct_product_category` (
  `category` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_distinct_product_subcategory`
--

DROP TABLE IF EXISTS `vw_distinct_product_subcategory`;
/*!50001 DROP VIEW IF EXISTS `vw_distinct_product_subcategory`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_distinct_product_subcategory` (
  `sub_category` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_estimator_products`
--

DROP TABLE IF EXISTS `vw_estimator_products`;
/*!50001 DROP VIEW IF EXISTS `vw_estimator_products`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_estimator_products` (
  `product_id` varchar(50),
  `product_description` varchar(255),
  `extended_description` text,
  `type` varchar(20),
  `taxable` enum('Y','N'),
  `unit_price` float(15,2),
  `total_price` float(16,2),
  `category` varchar(50),
  `sub_category` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_inventchkout_sideinfo`
--

DROP TABLE IF EXISTS `vw_inventchkout_sideinfo`;
/*!50001 DROP VIEW IF EXISTS `vw_inventchkout_sideinfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_inventchkout_sideinfo` (
  `id` int(11) unsigned,
  `order_id` varchar(20),
  `branch_id` varchar(50),
  `customer_id` varchar(8),
  `first_name` varchar(255),
  `last_name` varchar(255),
  `order_date` date,
  `order_status` varchar(20),
  `inventory_checkout_status` enum('NONE','PARTIAL','COMPLETED')
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_inventprod_available`
--

DROP TABLE IF EXISTS `vw_inventprod_available`;
/*!50001 DROP VIEW IF EXISTS `vw_inventprod_available`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_inventprod_available` (
  `id` int(11) unsigned,
  `product_id` varchar(50),
  `description` varchar(255)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_nonpackageproducts`
--

DROP TABLE IF EXISTS `vw_nonpackageproducts`;
/*!50001 DROP VIEW IF EXISTS `vw_nonpackageproducts`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_nonpackageproducts` (
  `id` int(11) unsigned,
  `product_id` varchar(50),
  `type` varchar(20),
  `package_items` varchar(255),
  `product_description` varchar(255),
  `extended_description` text,
  `category` varchar(50),
  `sub_category` varchar(50),
  `unit_price` float(15,2),
  `taxable` enum('Y','N'),
  `tax_percentage` float(4,2),
  `status` enum('ACTIVE','INACTIVE','DISCONTINUED'),
  `inputter` varchar(50),
  `input_date` datetime,
  `authorizer` varchar(50),
  `auth_date` datetime,
  `record_status` char(4),
  `current_no` int(11)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_orderbalances`
--

DROP TABLE IF EXISTS `vw_orderbalances`;
/*!50001 DROP VIEW IF EXISTS `vw_orderbalances`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_orderbalances` (
  `id` int(11) unsigned,
  `order_id` varchar(20),
  `branch_id` varchar(50),
  `customer_id` varchar(8),
  `first_name` varchar(255),
  `last_name` varchar(255),
  `customer_type` enum('INDIVIDUAL','COMPANY'),
  `address1` varchar(255),
  `address2` varchar(255),
  `city` varchar(255),
  `phone_mobile1` varchar(15),
  `phone_home` varchar(15),
  `phone_work` varchar(15),
  `order_details` varchar(341),
  `payment_type` varchar(341),
  `order_date` date,
  `quotation_date` date,
  `invoice_date` date,
  `order_status` varchar(20),
  `inventory_checkout_status` enum('NONE','PARTIAL','COMPLETED'),
  `inventory_update_type` enum('SALE','LOAN'),
  `inputter` varchar(50),
  `input_date` datetime,
  `invoice_note` varchar(256),
  `comments` text,
  `current_no` int(11),
  `unit_total` double(19,2),
  `discount_total` double(19,2),
  `extended_total` double(19,2),
  `tax_total` double(19,2),
  `order_total` double(19,2),
  `payment_total` double(19,2),
  `balance` double(19,2)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_orderbalances_nonzero`
--

DROP TABLE IF EXISTS `vw_orderbalances_nonzero`;
/*!50001 DROP VIEW IF EXISTS `vw_orderbalances_nonzero`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_orderbalances_nonzero` (
  `order_id` varchar(20),
  `branch_id` varchar(50),
  `customer_id` varchar(8),
  `first_name` varchar(255),
  `last_name` varchar(255),
  `order_date` date,
  `order_status` varchar(20),
  `order_total` double(19,2),
  `payment_total` double(19,2),
  `balance` double(19,2)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_orderstatus`
--

DROP TABLE IF EXISTS `vw_orderstatus`;
/*!50001 DROP VIEW IF EXISTS `vw_orderstatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_orderstatus` (
  `id` int(2),
  `order_status_id` varchar(20)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_userbranches`
--

DROP TABLE IF EXISTS `vw_userbranches`;
/*!50001 DROP VIEW IF EXISTS `vw_userbranches`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vw_userbranches` (
  `id` int(11) unsigned,
  `idname` varchar(50),
  `username` varchar(32),
  `fullname` varchar(255),
  `email` varchar(100),
  `enabled` enum('Y','N'),
  `expiry_date` date,
  `branch_id` varchar(50),
  `department_id` varchar(50),
  `description` varchar(255),
  `location` varchar(255),
  `region_id` int(11) unsigned,
  `active` enum('Y','N')
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `weekdays`
--

DROP TABLE IF EXISTS `weekdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekdays` (
  `id` int(11) unsigned NOT NULL,
  `weekday_id` varchar(21) NOT NULL,
  `description` varchar(255) NOT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_weekday_id` (`weekday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekdays`
--

LOCK TABLES `weekdays` WRITE;
/*!40000 ALTER TABLE `weekdays` DISABLE KEYS */;
INSERT INTO `weekdays` VALUES (0,'NODAY','No day Assigned','IMPLEMENTATAION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(1,'SUNDAY','Sunday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(2,'MONDAY','Monday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(3,'TUESDAY','Tuesday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(4,'WEDNESDAY','Wednesday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(5,'THURSDAY','Thursday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(6,'FRIDAY','Friday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(7,'SATURDAY','Saturday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(8,'MONWED','Monday,Wednesday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(9,'TUETHU','Tuesday,Thursday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(10,'FRISAT','Friday,Saturday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1),(11,'MON-FRI','Monday - Friday','IMPLEMENTATION','2010-08-28 00:00:00','ADMIN','2010-08-28 00:00:00','LIVE',1);
/*!40000 ALTER TABLE `weekdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekdays_hs`
--

DROP TABLE IF EXISTS `weekdays_hs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekdays_hs` (
  `id` int(11) unsigned NOT NULL,
  `weekday_id` varchar(21) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) NOT NULL,
  `input_date` datetime NOT NULL,
  `authorizer` varchar(50) NOT NULL,
  `auth_date` datetime NOT NULL,
  `record_status` char(4) NOT NULL,
  `current_no` int(11) NOT NULL,
  PRIMARY KEY (`id`,`current_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekdays_hs`
--

LOCK TABLES `weekdays_hs` WRITE;
/*!40000 ALTER TABLE `weekdays_hs` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekdays_hs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekdays_is`
--

DROP TABLE IF EXISTS `weekdays_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekdays_is` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weekday_id` varchar(21) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `inputter` varchar(50) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `authorizer` varchar(50) DEFAULT NULL,
  `auth_date` datetime DEFAULT NULL,
  `record_status` char(4) DEFAULT NULL,
  `current_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_weekday_id` (`weekday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekdays_is`
--

LOCK TABLES `weekdays_is` WRITE;
/*!40000 ALTER TABLE `weekdays_is` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekdays_is` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cmlsl'
--
/*!50003 DROP FUNCTION IF EXISTS `func_CalculateExtendedPrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 FUNCTION `func_CalculateExtendedPrice`(unit_price FLOAT, tax_percentage FLOAT, taxable VARCHAR(1)) RETURNS float(16,2)
BEGIN
	DECLARE ret FLOAT;		
	DECLARE tax_amount FLOAT;		
	IF taxable = 'Y' THEN
	    SET tax_amount = unit_price * (tax_percentage/100);
	ELSE
	    SET tax_amount ='0';
        END IF;
	set ret = unit_price + tax_amount;
	return (ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_CalculateTotalPrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 FUNCTION `func_CalculateTotalPrice`(unit_price FLOAT, tax_percentage FLOAT, taxable VARCHAR(1)) RETURNS float(16,2)
BEGIN
	DECLARE ret FLOAT;		
	DECLARE tax_amount FLOAT;		
	IF taxable = 'Y' THEN
	    SET tax_amount = unit_price * (tax_percentage/100);
	ELSE
	    SET tax_amount ='0';
        END IF;
	set ret = unit_price + tax_amount;
	return (ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_DuplicateTelbookPhoneNo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 FUNCTION `func_DuplicateTelbookPhoneNo`(var INT(7)) RETURNS char(1) CHARSET latin1
    READS SQL DATA
BEGIN
	DECLARE ret CHAR(1);
	DECLARE rcount int(11);
	SELECT count(telno) into rcount from telbooks where telno = var;
	IF rcount > 0 THEN
	    SET ret='Y';
	ELSE
	    SET ret='N';
        END IF;
        RETURN(ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_GETAGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 FUNCTION `func_GETAGE`(dob DATE) RETURNS int(11)
    DETERMINISTIC
BEGIN
	DECLARE age INT;
	SELECT DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(dob, '%Y') - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(dob, '00-%m-%d')) into age;
	RETURN age;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_OrderDetailDiscountTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 FUNCTION `func_OrderDetailDiscountTotal`(qty FLOAT, unit_price FLOAT, discount_amount FLOAT, discount_type VARCHAR(10)) RETURNS float(16,2)
BEGIN
	DECLARE ret FLOAT;		
	IF discount_type = 'PERCENT' THEN
	    set discount_amount = (qty*unit_price) * (discount_amount / 100);
	END IF;
	set ret = discount_amount;
	return (ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_OrderDetailOrderTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 FUNCTION `func_OrderDetailOrderTotal`(qty FLOAT, unit_price FLOAT, discount_amount FLOAT, tax_percentage FLOAT, taxable varchar(1), discount_type VARCHAR(10)) RETURNS float(16,2)
BEGIN
	DECLARE ret FLOAT;		
	DECLARE tax_amount FLOAT;		
	IF discount_type = 'PERCENT' THEN
	    set discount_amount = (qty*unit_price) * (discount_amount / 100);
	END IF;
	IF taxable = 'Y' THEN
	    SET tax_amount = ((qty*unit_price)-discount_amount) * (tax_percentage/ 100);
	ELSE
	    SET tax_amount ='0.00';
	END IF;
	set ret = (qty*unit_price) - discount_amount + tax_amount;
	return (ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_OrderDetailSubTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 FUNCTION `func_OrderDetailSubTotal`(qty FLOAT, unit_price FLOAT, discount_amount FLOAT, discount_type VARCHAR(10)) RETURNS float(16,2)
BEGIN
	DECLARE ret FLOAT;		
	IF discount_type = 'PERCENT' THEN
	    set discount_amount = (qty*unit_price) * (discount_amount / 100);
	END IF;
	set ret = (qty*unit_price) - discount_amount;
	return (ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_OrderDetailTaxTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 FUNCTION `func_OrderDetailTaxTotal`(qty FLOAT, unit_price FLOAT, discount_amount FLOAT, tax_percentage FLOAT, taxable VARCHAR(1), discount_type VARCHAR(10)) RETURNS float(16,2)
BEGIN
	DECLARE ret FLOAT;		
	DECLARE tax_amount FLOAT;		
	IF discount_type = 'PERCENT' THEN
	    set discount_amount = (qty*unit_price) * (discount_amount / 100);
	END IF;
	IF taxable = 'Y' THEN
	    SET tax_amount = ((qty*unit_price)-discount_amount) * (tax_percentage/ 100);
	ELSE
	    SET tax_amount ='0.00';
	END IF;
	set ret = tax_amount;
	return (ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_OrderDetailUnitTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 FUNCTION `func_OrderDetailUnitTotal`(qty FLOAT, unit_price FLOAT) RETURNS float(16,2)
BEGIN
	DECLARE ret FLOAT;
	set ret = (qty*unit_price);
	return (ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_SetNullToZero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`%`*/ /*!50003 FUNCTION `func_SetNullToZero`(var VARCHAR(20)) RETURNS float(16,2)
    DETERMINISTIC
BEGIN
	DECLARE ret FLOAT(16,2);
	IF var=null THEN
             SET ret='0.00';
          ELSE
             SET ret=var;
        END IF;
        RETURN(ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_SetToBlankCo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`%`*/ /*!50003 FUNCTION `func_SetToBlankCo`(var VARCHAR(255)) RETURNS varchar(255) CHARSET latin1
BEGIN
	DECLARE ret VARCHAR(255);
	IF var='CO.' THEN
             SET ret='';
          ELSE
             SET ret=var;
        END IF;
        RETURN(ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_SetToBlankZero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`%`*/ /*!50003 FUNCTION `func_SetToBlankZero`(var INT(11)) RETURNS varchar(255) CHARSET latin1
BEGIN
	DECLARE ret VARCHAR(255);
	IF var=0 THEN
             SET ret='';
          ELSE
             SET ret=var;
        END IF;
        RETURN(ret);
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_AddAuditFields` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 PROCEDURE `sp_AddAuditFields`(IN tablename varchar(100), IN opt char(1))
BEGIN
	IF opt = 'I' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN inputter varchar(50) NULL DEFAULT NULL");
	ELSEIF opt = 'L' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN inputter varchar(50) NOT NULL DEFAULT ''");
	END IF;
 	PREPARE stmt FROM @qry;
 	EXECUTE stmt;
 	
 	IF opt = 'I' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN input_date datetime NULL DEFAULT NULL");
	ELSEIF opt = 'L' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN input_date datetime NOT NULL DEFAULT ''");
	END IF;
 	PREPARE stmt FROM @qry;
 	EXECUTE stmt;
		
	if opt = 'I' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN authorizer varchar(50) NULL DEFAULT NULL");
	elseIF opt = 'L' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN authorizer varchar(50) NOT NULL DEFAULT ''");
	end if;
 	PREPARE stmt FROM @qry;
 	EXECUTE stmt;
 	
 	IF opt = 'I' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN auth_date datetime NULL DEFAULT NULL");
	ELSEIF opt = 'L' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN auth_date datetime NOT NULL DEFAULT ''");
	END IF;
 	PREPARE stmt FROM @qry;
 	EXECUTE stmt;
 	
 	IF opt = 'I' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN record_status char(4) NULL DEFAULT NULL");
	ELSEIF opt = 'L' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN record_status char(4) NOT NULL DEFAULT ''");
	END IF;
 	PREPARE stmt FROM @qry;
 	EXECUTE stmt;
 	
 	IF opt = 'I' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN current_no int(11) NULL DEFAULT NULL");
	ELSEIF opt = 'L' THEN
		SET @qry = CONCAT("ALTER TABLE ",tablename," ADD COLUMN current_no int(11) NOT NULL DEFAULT ''");
	END IF;
 	PREPARE stmt FROM @qry;
 	EXECUTE stmt;
 	DEALLOCATE PREPARE stmt;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CopyRecord` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 PROCEDURE `sp_CopyRecord`(IN tablename VARCHAR(255), alt_id_fld VARCHAR(255), src INT(11), dest int(11), alt_dest VARCHAR(255) )
BEGIN
	DROP table IF EXISTS `tmp`;
	SET @qry = CONCAT('CREATE TEMPORARY TABLE tmp SELECT * FROM ',tablename,' WHERE id=',src);
	PREPARE stmt FROM @qry;
 	EXECUTE stmt;
	
	IF alt_id_fld is not null THEN
		SET @qry = CONCAT('UPDATE tmp SET ',alt_id_fld,'="',alt_dest,'" WHERE id=',src);
		PREPARE stmt FROM @qry; 
		EXECUTE stmt;
	END IF;
		
	SET @qry = CONCAT('UPDATE tmp SET id=',dest,' WHERE id=',src);
	PREPARE stmt FROM @qry; 
	EXECUTE stmt;
		
	SET @qry = CONCAT('INSERT INTO ',tablename,' SELECT * FROM tmp WHERE id=',dest);
	PREPARE stmt FROM @qry; 
	EXECUTE stmt;
	DROP TABLE tmp;
	DEALLOCATE PREPARE stmt;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ENQ_contacttest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 PROCEDURE `sp_ENQ_contacttest`()
BEGIN
	DROP TABLE IF EXISTS `tt_contacttest`;
	CREATE TEMPORARY TABLE tt_contacttest 
	(
		contact_id VARCHAR(50) DEFAULT NULL,
		first_name VARCHAR(255) DEFAULT NULL,
		last_name VARCHAR(255) DEFAULT NULL
	) ENGINE=MEMORY;
	INSERT INTO tt_contacttest SELECT contact_id,first_name,last_name FROM contacts;
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_t` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`dbuser`@`localhost`*/ /*!50003 PROCEDURE `sp_t`(IN opt CHAR(1))
BEGIN
DECLARE resetid INT DEFAULT 0;
IF opt = 'Y' THEN
select * from contacts;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_batchorders_lookup`
--

/*!50001 DROP TABLE IF EXISTS `vw_batchorders_lookup`*/;
/*!50001 DROP VIEW IF EXISTS `vw_batchorders_lookup`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_batchorders_lookup` AS (select `vw_orderbalances`.`id` AS `invoice_id`,`vw_orderbalances`.`order_id` AS `order_id`,`vw_orderbalances`.`order_date` AS `order_date`,`vw_orderbalances`.`first_name` AS `first_name`,`vw_orderbalances`.`order_details` AS `order_details`,`vw_orderbalances`.`last_name` AS `last_name`,`vw_orderbalances`.`extended_total` AS `extended_total`,`vw_orderbalances`.`tax_total` AS `tax_total`,`vw_orderbalances`.`order_total` AS `order_total`,`vw_orderbalances`.`payment_total` AS `payment_total`,`vw_orderbalances`.`balance` AS `balance`,`vw_orderbalances`.`payment_type` AS `payment_type` from `vw_orderbalances` where ((`vw_orderbalances`.`order_status` <> 'ORDER.CANCELLED') and (`vw_orderbalances`.`order_status` <> 'QUOTATION'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_batchtypes`
--

/*!50001 DROP TABLE IF EXISTS `vw_batchtypes`*/;
/*!50001 DROP VIEW IF EXISTS `vw_batchtypes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_batchtypes` AS (select distinct `batchinvoices`.`batch_type` AS `type` from `batchinvoices` order by `batchinvoices`.`batch_type`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_core_fixedselections_available`
--

/*!50001 DROP TABLE IF EXISTS `vw_core_fixedselections_available`*/;
/*!50001 DROP VIEW IF EXISTS `vw_core_fixedselections_available`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_core_fixedselections_available` AS select `params`.`controller` AS `fixedselection_id` from `params` where ((`params`.`controller` <> 'site') and (not(`params`.`controller` in (select `fixedselections`.`fixedselection_id` AS `fixedselection_id` from `fixedselections`)))) union select `enquirydefs`.`controller` AS `fixedselection_id` from `enquirydefs` where (not(`enquirydefs`.`controller` in (select `fixedselections`.`fixedselection_id` AS `fixedselection_id` from `fixedselections`))) order by `fixedselection_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_core_users_noroles`
--

/*!50001 DROP TABLE IF EXISTS `vw_core_users_noroles`*/;
/*!50001 DROP VIEW IF EXISTS `vw_core_users_noroles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_core_users_noroles` AS (select `users`.`idname` AS `idname`,`users`.`fullname` AS `fullname` from `users` where ((not(`users`.`idname` in (select `userroles`.`idname` AS `idname` from `userroles`))) and (`users`.`branch_id` <> '_SYSTEM'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_distinct_product_category`
--

/*!50001 DROP TABLE IF EXISTS `vw_distinct_product_category`*/;
/*!50001 DROP VIEW IF EXISTS `vw_distinct_product_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_distinct_product_category` AS (select distinct `products`.`category` AS `category` from `products`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_distinct_product_subcategory`
--

/*!50001 DROP TABLE IF EXISTS `vw_distinct_product_subcategory`*/;
/*!50001 DROP VIEW IF EXISTS `vw_distinct_product_subcategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_distinct_product_subcategory` AS (select distinct `products`.`sub_category` AS `sub_category` from `products`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_estimator_products`
--

/*!50001 DROP TABLE IF EXISTS `vw_estimator_products`*/;
/*!50001 DROP VIEW IF EXISTS `vw_estimator_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_estimator_products` AS (select `products`.`product_id` AS `product_id`,`products`.`product_description` AS `product_description`,`products`.`extended_description` AS `extended_description`,`products`.`type` AS `type`,`products`.`taxable` AS `taxable`,`products`.`unit_price` AS `unit_price`,`func_CalculateTotalPrice`(`products`.`unit_price`,`products`.`tax_percentage`,`products`.`taxable`) AS `total_price`,`products`.`category` AS `category`,`products`.`sub_category` AS `sub_category` from `products` where (`products`.`status` = 'ACTIVE')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_inventchkout_sideinfo`
--

/*!50001 DROP TABLE IF EXISTS `vw_inventchkout_sideinfo`*/;
/*!50001 DROP VIEW IF EXISTS `vw_inventchkout_sideinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_inventchkout_sideinfo` AS select `orders`.`id` AS `id`,`orders`.`order_id` AS `order_id`,`orders`.`branch_id` AS `branch_id`,`orders`.`customer_id` AS `customer_id`,`customers`.`first_name` AS `first_name`,`customers`.`last_name` AS `last_name`,`orders`.`order_date` AS `order_date`,`orders`.`order_status` AS `order_status`,`orders`.`inventory_checkout_status` AS `inventory_checkout_status` from (`orders` join `customers` on((`orders`.`customer_id` = `customers`.`customer_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_inventprod_available`
--

/*!50001 DROP TABLE IF EXISTS `vw_inventprod_available`*/;
/*!50001 DROP VIEW IF EXISTS `vw_inventprod_available`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_inventprod_available` AS (select `products`.`id` AS `id`,`products`.`product_id` AS `product_id`,`products`.`product_description` AS `description` from `products` where ((not(`products`.`product_id` in (select `inventorys`.`product_id` AS `product_id` from `inventorys`))) and (`products`.`type` = 'STOCK'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_nonpackageproducts`
--

/*!50001 DROP TABLE IF EXISTS `vw_nonpackageproducts`*/;
/*!50001 DROP VIEW IF EXISTS `vw_nonpackageproducts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_nonpackageproducts` AS (select `products`.`id` AS `id`,`products`.`product_id` AS `product_id`,`products`.`type` AS `type`,`products`.`package_items` AS `package_items`,`products`.`product_description` AS `product_description`,`products`.`extended_description` AS `extended_description`,`products`.`category` AS `category`,`products`.`sub_category` AS `sub_category`,`products`.`unit_price` AS `unit_price`,`products`.`taxable` AS `taxable`,`products`.`tax_percentage` AS `tax_percentage`,`products`.`status` AS `status`,`products`.`inputter` AS `inputter`,`products`.`input_date` AS `input_date`,`products`.`authorizer` AS `authorizer`,`products`.`auth_date` AS `auth_date`,`products`.`record_status` AS `record_status`,`products`.`current_no` AS `current_no` from `products` where (`products`.`type` <> 'PACKAGE')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_orderbalances`
--

/*!50001 DROP TABLE IF EXISTS `vw_orderbalances`*/;
/*!50001 DROP VIEW IF EXISTS `vw_orderbalances`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_orderbalances` AS (select `orders`.`id` AS `id`,`orders`.`order_id` AS `order_id`,`orders`.`branch_id` AS `branch_id`,`orders`.`customer_id` AS `customer_id`,`customers`.`first_name` AS `first_name`,`customers`.`last_name` AS `last_name`,`customers`.`customer_type` AS `customer_type`,`customers`.`address1` AS `address1`,`customers`.`address2` AS `address2`,`customers`.`city` AS `city`,`customers`.`phone_mobile1` AS `phone_mobile1`,`customers`.`phone_home` AS `phone_home`,`customers`.`phone_work` AS `phone_work`,(select group_concat(`orderdetails`.`product_id`,'(',`orderdetails`.`qty`,')' separator ';') AS `aa` from `orderdetails` where (`orders`.`order_id` = `orderdetails`.`order_id`)) AS `order_details`,(select coalesce(group_concat(`payments`.`payment_type`,'(',`payments`.`amount`,')' separator ';'),'') AS `ba` from `payments` where ((`orders`.`order_id` = `payments`.`order_id`) and (`payments`.`payment_status` = 'VALID'))) AS `payment_type`,`orders`.`order_date` AS `order_date`,`orders`.`quotation_date` AS `quotation_date`,`orders`.`invoice_date` AS `invoice_date`,`orders`.`order_status` AS `order_status`,`orders`.`inventory_checkout_status` AS `inventory_checkout_status`,`orders`.`inventory_update_type` AS `inventory_update_type`,`orders`.`inputter` AS `inputter`,`orders`.`input_date` AS `input_date`,`orders`.`invoice_note` AS `invoice_note`,`orders`.`comments` AS `comments`,`orders`.`current_no` AS `current_no`,(select coalesce(sum(`func_OrderDetailUnitTotal`(`orderdetails`.`qty`,`orderdetails`.`unit_price`)),0) AS `ab` from `orderdetails` where (`orderdetails`.`order_id` = `orders`.`order_id`)) AS `unit_total`,(select coalesce(sum(`func_OrderDetailDiscountTotal`(`orderdetails`.`qty`,`orderdetails`.`unit_price`,`orderdetails`.`discount_amount`,`orderdetails`.`discount_type`)),0) AS `ac` from `orderdetails` where (`orderdetails`.`order_id` = `orders`.`order_id`)) AS `discount_total`,(select coalesce(sum(`func_OrderDetailSubTotal`(`orderdetails`.`qty`,`orderdetails`.`unit_price`,`orderdetails`.`discount_amount`,`orderdetails`.`discount_type`)),0) AS `ad` from `orderdetails` where (`orderdetails`.`order_id` = `orders`.`order_id`)) AS `extended_total`,(select coalesce(sum(`func_OrderDetailTaxTotal`(`orderdetails`.`qty`,`orderdetails`.`unit_price`,`orderdetails`.`discount_amount`,`orderdetails`.`tax_percentage`,`orderdetails`.`taxable`,`orderdetails`.`discount_type`)),0) AS `ae` from `orderdetails` where (`orderdetails`.`order_id` = `orders`.`order_id`)) AS `tax_total`,(select coalesce(sum(`func_OrderDetailOrderTotal`(`orderdetails`.`qty`,`orderdetails`.`unit_price`,`orderdetails`.`discount_amount`,`orderdetails`.`tax_percentage`,`orderdetails`.`taxable`,`orderdetails`.`discount_type`)),0) AS `af` from `orderdetails` where (`orderdetails`.`order_id` = `orders`.`order_id`)) AS `order_total`,(select coalesce(sum(`payments`.`amount`),0) AS `ag` from `payments` where ((`payments`.`order_id` = `orders`.`order_id`) and (`payments`.`payment_status` = 'VALID'))) AS `payment_total`,((select coalesce(sum(`func_OrderDetailOrderTotal`(`orderdetails`.`qty`,`orderdetails`.`unit_price`,`orderdetails`.`discount_amount`,`orderdetails`.`tax_percentage`,`orderdetails`.`taxable`,`orderdetails`.`discount_type`)),0) AS `ah` from `orderdetails` where (`orderdetails`.`order_id` = `orders`.`order_id`)) - (select coalesce(sum(`payments`.`amount`),0) AS `ai` from `payments` where ((`payments`.`order_id` = `orders`.`order_id`) and (`payments`.`payment_status` = 'VALID')))) AS `balance` from (`orders` join `customers` on((`orders`.`customer_id` = `customers`.`customer_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_orderbalances_nonzero`
--

/*!50001 DROP TABLE IF EXISTS `vw_orderbalances_nonzero`*/;
/*!50001 DROP VIEW IF EXISTS `vw_orderbalances_nonzero`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_orderbalances_nonzero` AS (select `vw_orderbalances`.`order_id` AS `order_id`,`vw_orderbalances`.`branch_id` AS `branch_id`,`vw_orderbalances`.`customer_id` AS `customer_id`,`vw_orderbalances`.`first_name` AS `first_name`,`vw_orderbalances`.`last_name` AS `last_name`,`vw_orderbalances`.`order_date` AS `order_date`,`vw_orderbalances`.`order_status` AS `order_status`,`vw_orderbalances`.`order_total` AS `order_total`,`vw_orderbalances`.`payment_total` AS `payment_total`,`vw_orderbalances`.`balance` AS `balance` from `vw_orderbalances` where ((`vw_orderbalances`.`balance` > 0) and (`vw_orderbalances`.`order_status` <> 'ORDER.CANCELLED'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_orderstatus`
--

/*!50001 DROP TABLE IF EXISTS `vw_orderstatus`*/;
/*!50001 DROP VIEW IF EXISTS `vw_orderstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_orderstatus` AS (select `_sys_orderstatus`.`id` AS `id`,`_sys_orderstatus`.`order_status_id` AS `order_status_id` from `_sys_orderstatus` where (`_sys_orderstatus`.`progession_id` <= 5)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_userbranches`
--

/*!50001 DROP TABLE IF EXISTS `vw_userbranches`*/;
/*!50001 DROP VIEW IF EXISTS `vw_userbranches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dbuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_userbranches` AS select `users`.`id` AS `id`,`users`.`idname` AS `idname`,`users`.`username` AS `username`,`users`.`fullname` AS `fullname`,`users`.`email` AS `email`,`users`.`enabled` AS `enabled`,`users`.`expiry_date` AS `expiry_date`,`users`.`branch_id` AS `branch_id`,`users`.`department_id` AS `department_id`,`branches`.`description` AS `description`,`branches`.`location` AS `location`,`branches`.`region_id` AS `region_id`,`branches`.`active` AS `active` from (`users` join `branches` on((`users`.`branch_id` = `branches`.`branch_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-06  8:22:23
