-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: dadoskafer
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ajustefuzzy`
--

DROP TABLE IF EXISTS `ajustefuzzy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ajustefuzzy` (
  `erro` varchar(5) DEFAULT NULL,
  `millis` varchar(10) DEFAULT NULL,
  `kp` varchar(5) DEFAULT NULL,
  `kd` varchar(5) DEFAULT NULL,
  `ki` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajustefuzzy`
--

LOCK TABLES `ajustefuzzy` WRITE;
/*!40000 ALTER TABLE `ajustefuzzy` DISABLE KEYS */;
/*!40000 ALTER TABLE `ajustefuzzy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuzzy`
--

DROP TABLE IF EXISTS `fuzzy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fuzzy` (
  `erro` varchar(5) DEFAULT NULL,
  `millis` varchar(10) DEFAULT NULL,
  `kp` varchar(5) DEFAULT NULL,
  `kd` varchar(5) DEFAULT NULL,
  `ki` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuzzy`
--

LOCK TABLES `fuzzy` WRITE;
/*!40000 ALTER TABLE `fuzzy` DISABLE KEYS */;
/*!40000 ALTER TABLE `fuzzy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuzzypid`
--

DROP TABLE IF EXISTS `fuzzypid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fuzzypid` (
  `erro` varchar(5) DEFAULT NULL,
  `millis` varchar(10) DEFAULT NULL,
  `kp` varchar(5) DEFAULT NULL,
  `kd` varchar(5) DEFAULT NULL,
  `ki` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuzzypid`
--

LOCK TABLES `fuzzypid` WRITE;
/*!40000 ALTER TABLE `fuzzypid` DISABLE KEYS */;
INSERT INTO `fuzzypid` VALUES ('-2500','13388','0.00','0.00','0.00'),('-2500','13690','0.00','0.00','0.00'),('-500','13994','0.00','0.00','0.00'),('-2500','14297','0.00','0.00','0.00'),('-2500','14599','0.00','0.00','0.00'),('-2500','14902','0.00','0.00','0.00'),('-500','15205','0.00','0.00','0.00'),('-2500','15510','0.00','0.00','0.00'),('-2500','15814','0.00','0.00','0.00'),('-2500','16116','0.00','0.00','0.00'),('-2500','16417','0.00','0.00','0.00');
/*!40000 ALTER TABLE `fuzzypid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pid`
--

DROP TABLE IF EXISTS `pid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pid` (
  `erro` varchar(5) DEFAULT NULL,
  `millis` varchar(10) DEFAULT NULL,
  `kp` varchar(5) DEFAULT NULL,
  `kd` varchar(5) DEFAULT NULL,
  `ki` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pid`
--

LOCK TABLES `pid` WRITE;
/*!40000 ALTER TABLE `pid` DISABLE KEYS */;
INSERT INTO `pid` VALUES ('2001','2005','2004','2002','2003');
/*!40000 ALTER TABLE `pid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dadoskafer'
--

--
-- Dumping routines for database 'dadoskafer'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-13 12:55:32
