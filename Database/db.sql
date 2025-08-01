/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.5.30 : Database - alumni
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alumni` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `alumni`;

/*Table structure for table `campus` */

DROP TABLE IF EXISTS `campus`;

CREATE TABLE `campus` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `at` varchar(500) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `num` varchar(500) DEFAULT NULL,
  `des` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `msgs` */

DROP TABLE IF EXISTS `msgs`;

CREATE TABLE `msgs` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(1000) DEFAULT NULL,
  `user_` varchar(100) DEFAULT NULL,
  `name_` varchar(100) DEFAULT NULL,
  `time_` varchar(100) DEFAULT NULL,
  `chatof` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Table structure for table `oldstd` */

DROP TABLE IF EXISTS `oldstd`;

CREATE TABLE `oldstd` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `profilepic` longblob,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `requirement` */

DROP TABLE IF EXISTS `requirement`;

CREATE TABLE `requirement` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `at` varchar(500) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `des` varchar(500) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `profilepic` longblob,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
