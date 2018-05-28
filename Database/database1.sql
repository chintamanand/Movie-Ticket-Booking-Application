CREATE DATABASE IF NOT EXISTS `movie` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `movie`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: movie
-- ------------------------------------------------------
-- Server version	5.0.17-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--


DROP TABLE IF EXISTS `adminauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminauth` (
  `id` int(11) NOT NULL auto_increment,
  `password` text,
  `adname` text,
  `mobile` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `permission` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminauth`
--

LOCK TABLES `adminauth` WRITE;
/*!40000 ALTER TABLE `adminauth` DISABLE KEYS */;
INSERT INTO `adminauth` VALUES (20,'anand123','anand','9945393423','9-5-1997','m','533223','Yes'),(21,'kiran123','kiran','9652422666','23-11-2000','m','533226','Yes'),(22,'nikhil123','nikhil','9652522444','23-9-2002','m','533220','Yes');
/*!40000 ALTER TABLE `adminauth` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `customerlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerlogin` (
  `id` int(50) NOT NULL auto_increment,
  `password` text,
  `custname` text,
  `mobile` text,
  `dob` text,
  `gender` text,
  `pin` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerlogin`
--

LOCK TABLES `customerlogin` WRITE;
/*!40000 ALTER TABLE `customerlogin` DISABLE KEYS */;
INSERT INTO `customerlogin` VALUES (50,'ramesh@1','ramesh','9876507948','19-6-1989','m','511223'),(51,'girish@1','giri','9811207948','2-10-1985','m','133226');
/*!40000 ALTER TABLE `customerlogin` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `custtranscation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custtranscation` (
  `id` int(10) NOT NULL auto_increment,
  `custname` text,
  `noofmovie` int,
  `selectmovie` text,
  `moneytopay` int,	
  `paymentmode` text,
  `semoviename` text,
  `mobile` text,
  `pin` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custtranscation`
--

LOCK TABLES `custtranscation` WRITE;
/*!40000 ALTER TABLE `custtranscation` DISABLE KEYS */;
INSERT INTO `custtranscation` VALUES (10,'ramesh','5','1','120','hand','Pink Panther','9876507948','511223'),(11,'giri','2','1','110','hand','Avengers','9811207948','133226'),(12,'kumar','5','1','125','hand','Quiet Romm','7807664017','571102'),(13,'karan','10','1','150','hand','Pacific Rim','8870117048','533223'),(14,'harideep','6','1','140','hand','Avatar-2','1807401740','541341');
/*!40000 ALTER TABLE `custtranscation` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `employeelogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeelogin` (
  `id` int(40) NOT NULL auto_increment,
  `password` text,
  `empname` text,
  `mobile` text,
  `age` text,
  `gender` text,
  `email` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeelogin`
--

LOCK TABLES `employeelogin` WRITE;
/*!40000 ALTER TABLE `employeelogin` DISABLE KEYS */;
INSERT INTO `employeelogin` VALUES (40,'ranga@19','ranga','8816506950','25','m','ranga123@gmail.com'),(41,'gauti@147','gauti','8809833710','22','m','chowthagowtham@gmail.com'),(42,'naresh@6579','naresh','9909813567','21','m','naresh@1234gmail.com'),(43,'abhiroop@123','abhiroop','9820831067','24','m','abhiroopbahuballi@gmail.com'),(44,'srikanth@123','srikanth','6815291074','21','m','kgsreekanth@gmail.com'),(45,'krishna@141','krishna','987274017','23','m','krishnachaitanaya@gmail.com');
/*!40000 ALTER TABLE `employeelogin` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `employeetranscation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeetranscation` (
  `id` int(40) NOT NULL auto_increment,
  `empname` text,
  `mobile` text,
  `age` text,
  `email` text,
  `price` int,
  `nofseats` int,	
  `paymentmode` text,
  `moviename` text,
  `screen` int,
  `theatrename` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custtranscation`

LOCK TABLES `employeetranscation` WRITE;
/*!40000 ALTER TABLE `employeetranscation` DISABLE KEYS */;
INSERT INTO `employeetranscation` VALUES (10,'ranga','8816506950','25','ranga123@gmail.com','130','100','hand','Black Mirror','1','imax'),(11,'gauti','8809833710','22','chowthagowtham@gmail.com','150','120','hand','Game of Thrones','2','imax'),(12,'naresh','9909813567','21','naresh@1234gmail.com','180','120','hand','Avengers','3','imax'),(13,'abhiroop','9820831067','22','abhiroopbahuballi@gmail.com','200','140','hand','Pacific Rim','4','imax'),(14,'srikanth','6815291074','21','kgsreekanth@gmail.com','450','20','hand','Dead Pool-2','5','Manipal Mall'),(15,'krishna','987274017','23','krishnachaitanaya@gmail.com','300','100','hand','Rampage','6','Manipal Mall');
/*!40000 ALTER TABLE `employeetranscation` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `movieschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movieschedule` (
  `id` int(10) NOT NULL auto_increment,
  `moviename` text,
  `length` int,
  `schedule` text,
  `screeno` int,
  `theatre` text,
  `city` text,
  `genre` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviesch1`

LOCK TABLES `movieschedule` WRITE;
/*!40000 ALTER TABLE `movieschedule` DISABLE KEYS */;
INSERT INTO `movieschedule` VALUES (10,'Black Mirror','192','Sunday 3:50pm','1','imax','Manipal','Sci-Fi'),(11,'Game of Thrones','50','Monday 9:30AM','2','imax','Manipal','Fantasy'),(12,'Avengers','200','Friday 9:30AM','3','imax','Manipal','Action'),(13,'Pacific Rim','250','Tuesday 11:30AM','4','imax','Manipal','Action'),(14,'Dead Pool-2','200','Wednesday 4:30PM','5','Manipal Mall','Manipal','Action'),(15,'Rampage','180','Saturday 9:00PM','6','Manipal Mall','Manipal','Adventure');
/*!40000 ALTER TABLE `movieschedule` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(20) NOT NULL auto_increment,
  `empname` text,
  `mobile` text,
  `age` text,
  `email` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `moviesch1`

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (20,'ranga','8816506950','25','ranga123@gmail.com'),(21,'gauti','8809833710','22','chowthagowtham@gmail.com'),(22,'naresh','9909813567','21','naresh@1234gmail.com'),(23,'abhiroop','9820831067','22','abhiroopbahuballi@gmail.com'),(24,'srikanth','6815291074','21','kgsreekanth@gmail.com'),(25,'krishna','9872740171','23','krishnachaitanaya@gmail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(20) NOT NULL auto_increment,
  `username` text,
  `password` text,
  `custname` text,
  `mobile` text,
  `age` text,
  `email` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `moviesch1`

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (20,'harideep1','12345','harideep','9800218018','21','harideepmit@gmail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;


