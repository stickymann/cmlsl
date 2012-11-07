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

-- Dump completed on 2012-11-07 13:49:31
