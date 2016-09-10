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
INSERT INTO `color` (`col_id`,`col_code`,`name`) VALUES 
 (1,'01','Black'),
 (2,'02','Red'),
 (3,'03','Brown'),
 (4,'04','Choclate'),
 (5,'05','White');
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
INSERT INTO `company` (`com_id`,`com_code`,`name`,`details`) VALUES 
 (1,'001','Bata','gulistan'),
 (2,'002','Apex',''),
 (3,'003','Zero','gg'),
 (4,'004','Chain',''),
 (5,'005','Lotto','');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `cus_id` int(10) unsigned NOT NULL auto_increment,
  `contact` varchar(45) default NULL,
  `name` varchar(45) default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `invoice_no` int(10) unsigned NOT NULL,
  `product` varchar(45) character set latin1 default NULL,
  `date` datetime default NULL,
  `seller_id` varchar(45) default NULL,
  `customer_name` varchar(45) default NULL,
  `customer_phone` int(10) unsigned default NULL,
  PRIMARY KEY  (`invoice_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;


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
INSERT INTO `pro_catagory` (`cat_id`,`cat_code`,`cat_details`) VALUES 
 (1,'001','Gents'),
 (2,'002','Ladies'),
 (3,'003','kids');
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
INSERT INTO `pro_item` (`item_id`,`item_code`,`item_details`) VALUES 
 (1,'001','Sports'),
 (2,'002','Shoe'),
 (3,'003','Sliper'),
 (4,'004','Pencill Hill'),
 (5,'005','Dos Hill');
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
INSERT INTO `retailer` (`retailer_id`,`store_name`,`name`,`contact`,`location`,`date`) VALUES 
 (1,'Success','Md. Jamil ','01842196643','Dhaka super Market, Gulistan',NULL),
 (2,'Zero Shoe','Md.Sharif','01914196643','Dhaka Trade Centre',NULL),
 (3,'Your Choice','MD. Hasan','01852496635','Dhaka super Market, Gulistan',NULL),
 (4,'Mizan Bata','Md. Kalam','01191456843','Brtc Terminal market',NULL),
 (5,'World Mart','Md. Khokon','01845625485','Dhaka Trade Centre',NULL);
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
INSERT INTO `retiail_info` (`retail_id`,`contact`,`vouture_no`,`quantity`,`total_amount`,`pay`) VALUES 
 (1,' 	01842196643','00001',90,50000,10000),
 (2,'01191456843','00002',200,100000,40000);
/*!40000 ALTER TABLE `retiail_info` ENABLE KEYS */;


--
-- Definition of table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `sales_id` int(10) unsigned NOT NULL auto_increment,
  `invoice_no` int(10) unsigned default NULL,
  `product` varchar(45) default NULL,
  `quantity` varchar(45) default NULL,
  `unit_price` varchar(45) default NULL,
  `sales_price` varchar(45) default NULL,
  `discount` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`sales_id`),
  KEY `FK_invoice_no` (`invoice_no`),
  CONSTRAINT `FK_invoice_no` FOREIGN KEY (`invoice_no`) REFERENCES `invoice` (`invoice_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;


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
INSERT INTO `stock` (`stock_id`,`product`,`quantity`,`unit_price`,`salse_price`,`top_less`) VALUES 
 (1,'00100100101',24,1000,1650,300),
 (2,'00100200303',24,550,1050,150),
 (3,'00100100201',24,1200,2350,300),
 (4,'00100300103',18,650,1150,150),
 (5,'00500100302',100,450,650,50),
 (6,'00500200504',50,350,550,50),
 (7,'00500300303',50,450,750,100);
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
INSERT INTO `store` (`store_id`,`vouture_no`,`product`,`quantity`,`unite_price`,`salse_price`,`top_less`) VALUES 
 (1,'00001','00100100101','24','1000.0','1650.0','300.0'),
 (2,'00001','00100200303','24','550.0','1050.0','150.0'),
 (3,'00001','00100100201','24','1200.0','2350.0','300.0'),
 (4,'00001','00100300103','18','650.0','1150.0','150.0'),
 (5,'00002','00500100302','100','450.0','650.0','50.0'),
 (6,'00002','00500200504','50','350.0','550.0','50.0'),
 (7,'00002','00500300303','50','450.0','750.0','100.0');
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
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
