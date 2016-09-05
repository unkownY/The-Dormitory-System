-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: dormitory
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `admin`
--
use dormitory;

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_name` varchar(10) NOT NULL,
  `admin_psd` varchar(20) NOT NULL DEFAULT '111111',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('1','王越','111111');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartment` (
  `apartment_ID` int(5) NOT NULL,
  `comments` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`apartment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,'1'),(2,'2'),(10,'1'),(11,'1'),(12,NULL),(13,NULL);
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apartmenter`
--

DROP TABLE IF EXISTS `apartmenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartmenter` (
  `apartmenter_ID` int(15) NOT NULL,
  `apartmenter_NAME` varchar(8) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `apartment_ID` int(5) NOT NULL,
  `apartmenter_PHONE` varchar(11) NOT NULL,
  PRIMARY KEY (`apartmenter_ID`),
  KEY `menter_ment` (`apartment_ID`),
  CONSTRAINT `menter_ment` FOREIGN KEY (`apartment_ID`) REFERENCES `apartment` (`apartment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartmenter`
--

LOCK TABLES `apartmenter` WRITE;
/*!40000 ALTER TABLE `apartmenter` DISABLE KEYS */;
INSERT INTO `apartmenter` VALUES (1,'Tom','男',12,'13198761234'),(2,'Jack','男',13,'13649874561'),(5,'吴工','男',12,'13165748456');
/*!40000 ALTER TABLE `apartmenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dom`
--

DROP TABLE IF EXISTS `dom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dom` (
  `dom_ID` int(5) NOT NULL,
  `apartment_ID` int(5) NOT NULL,
  `dom_NUM` int(5) NOT NULL,
  PRIMARY KEY (`dom_ID`),
  KEY `dom_ment` (`apartment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dom`
--

LOCK TABLES `dom` WRITE;
/*!40000 ALTER TABLE `dom` DISABLE KEYS */;
INSERT INTO `dom` VALUES (310,13,7),(331,13,4),(410,12,6),(431,12,7);
/*!40000 ALTER TABLE `dom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `stu_ID` varchar(15) NOT NULL,
  `stu_NAME` varchar(8) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `major` varchar(20) NOT NULL,
  `apartment_ID` int(5) NOT NULL,
  `dom_ID` int(5) NOT NULL,
  `stu_psd` varchar(20) NOT NULL DEFAULT '111111',
  PRIMARY KEY (`stu_ID`),
  KEY `stu_apartment` (`apartment_ID`),
  KEY `stu_dom` (`dom_ID`),
  CONSTRAINT `stu_apartment` FOREIGN KEY (`apartment_ID`) REFERENCES `apartment` (`apartment_ID`),
  CONSTRAINT `stu_dom` FOREIGN KEY (`dom_ID`) REFERENCES `dom` (`dom_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('201301','张三','男','电子',12,410,'111111'),('201302','李四','男','信工',12,431,'111111'),('201303','王五','男','物联网',13,310,'111111'),('201306','曹家康','男','计本',12,410,'111111'),('201404','吴六','男','计本',13,331,'111111');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-13 10:27:24
