-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema inventory
--

CREATE DATABASE IF NOT EXISTS inventory;
USE inventory;

--
-- Definition of table `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `col_id` int(10) unsigned NOT NULL auto_increment,
  `col_code` varchar(45) character set latin1 default NULL,
  `name` varchar(45) character set latin1 default NULL,
  PRIMARY KEY  (`col_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `color`
--

/*!40000 ALTER TABLE `color` DISABLE KEYS */;
/*!40000 ALTER TABLE `color` ENABLE KEYS */;


--
-- Definition of table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `com_id` int(10) unsigned NOT NULL auto_increment,
  `com_code` varchar(45) character set latin1 default NULL,
  `name` varchar(45) character set latin1 default NULL,
  `details` varchar(45) character set latin1 default NULL,
  PRIMARY KEY  (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


--
-- Definition of table `pro_catagory`
--

DROP TABLE IF EXISTS `pro_catagory`;
CREATE TABLE `pro_catagory` (
  `cat_id` int(10) unsigned NOT NULL auto_increment,
  `cat_code` varchar(45) character set latin1 default NULL,
  `cat_details` varchar(45) character set latin1 default NULL,
  PRIMARY KEY  (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pro_catagory`
--

/*!40000 ALTER TABLE `pro_catagory` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_catagory` ENABLE KEYS */;


--
-- Definition of table `pro_item`
--

DROP TABLE IF EXISTS `pro_item`;
CREATE TABLE `pro_item` (
  `item_id` int(10) unsigned NOT NULL auto_increment,
  `item_code` varchar(45) character set latin1 default NULL,
  `item_details` varchar(45) character set latin1 default NULL,
  PRIMARY KEY  (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pro_item`
--

/*!40000 ALTER TABLE `pro_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_item` ENABLE KEYS */;


--
-- Definition of table `retailer`
--

DROP TABLE IF EXISTS `retailer`;
CREATE TABLE `retailer` (
  `retailer_id` int(10) unsigned NOT NULL auto_increment,
  `store_name` varchar(45) character set latin1 default NULL,
  `name` varchar(45) character set latin1 default NULL,
  `contact` varchar(45) character set latin1 default NULL,
  `location` varchar(45) character set latin1 default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`retailer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `retailer`
--

/*!40000 ALTER TABLE `retailer` DISABLE KEYS */;
/*!40000 ALTER TABLE `retailer` ENABLE KEYS */;


--
-- Definition of table `retiail_info`
--

DROP TABLE IF EXISTS `retiail_info`;
CREATE TABLE `retiail_info` (
  `retail_id` int(10) unsigned NOT NULL auto_increment,
  `contact` varchar(45) character set latin1 default NULL,
  `vouture_no` varchar(45) character set latin1 default NULL,
  `quantity` int(10) unsigned default NULL,
  `total_amount` double default NULL,
  `pay` double default NULL,
  PRIMARY KEY  (`retail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `retiail_info`
--

/*!40000 ALTER TABLE `retiail_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `retiail_info` ENABLE KEYS */;


--
-- Definition of table `salse_invoice`
--

DROP TABLE IF EXISTS `salse_invoice`;
CREATE TABLE `salse_invoice` (
  `sal_id` int(10) unsigned NOT NULL auto_increment,
  `invoice` int(10) unsigned default NULL,
  `product` varchar(45) character set latin1 default NULL,
  `quantity` int(10) unsigned default NULL,
  `discount` double default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`sal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salse_invoice`
--

/*!40000 ALTER TABLE `salse_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `salse_invoice` ENABLE KEYS */;


--
-- Definition of table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `stock_id` int(10) unsigned NOT NULL auto_increment,
  `product` varchar(45) character set latin1 default NULL,
  `quantity` double default NULL,
  `unit_price` double default NULL,
  `salse_price` double default NULL,
  `top_less` double default NULL,
  PRIMARY KEY  (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;


--
-- Definition of table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `store_id` int(10) unsigned NOT NULL auto_increment,
  `vouture_no` varchar(45) character set latin1 default NULL,
  `product` varchar(45) character set latin1 default NULL,
  `quantity` varchar(45) character set latin1 default NULL,
  `unite_price` varchar(45) character set latin1 default NULL,
  `salse_price` varchar(45) character set latin1 default NULL,
  `top_less` varchar(45) character set latin1 default NULL,
  PRIMARY KEY  (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

/*!40000 ALTER TABLE `store` DISABLE KEYS */;
/*!40000 ALTER TABLE `store` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(12) character set latin1 NOT NULL,
  `first_name` varchar(45) character set latin1 default NULL,
  `last_name` varchar(45) character set latin1 default NULL,
  `contact` varchar(45) character set latin1 default NULL,
  `role_id` int(10) unsigned default NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY  (`user_id`),
  KEY `FK_userRole_1` (`role_id`),
  CONSTRAINT `FK_userRole_1` FOREIGN KEY (`role_id`) REFERENCES `userrole` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`,`user_name`,`first_name`,`last_name`,`contact`,`role_id`,`password`) VALUES 
 (1,'saurav','saurav','wahid',NULL,NULL,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `role_id` int(10) unsigned NOT NULL auto_increment,
  `user_role` varchar(45) default NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrole`
--

/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` (`role_id`,`user_role`) VALUES 
 (1,'admin'),
 (2,'manager'),
 (3,'salesman'),
 (4,'storekeeper'),
 (5,'user');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
