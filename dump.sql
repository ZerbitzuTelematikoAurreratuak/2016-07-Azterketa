-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Exam
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `Exam`
--

/*!40000 DROP DATABASE IF EXISTS `Exam`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Exam` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `Exam`;

--
-- Table structure for table `irudiak`
--

DROP TABLE IF EXISTS `irudiak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `irudiak` (
  `izena` varchar(45) NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  PRIMARY KEY (`izena`),
  UNIQUE KEY `izenIrudiak_UNIQUE` (`izena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irudiak`
--

LOCK TABLES `irudiak` WRITE;
/*!40000 ALTER TABLE `irudiak` DISABLE KEYS */;
INSERT INTO `irudiak` VALUES ('test.svg',50,50);
/*!40000 ALTER TABLE `irudiak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testuak`
--

DROP TABLE IF EXISTS `testuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testuak` (
  `idtestuak` int(11) NOT NULL AUTO_INCREMENT,
  `testua` varchar(45) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `fill` varchar(45) DEFAULT NULL,
  `irudiak_izena` varchar(45) NOT NULL,
  PRIMARY KEY (`idtestuak`),
  UNIQUE KEY `idtestuak_UNIQUE` (`idtestuak`),
  KEY `fk_testuak_irudiak1_idx` (`irudiak_izena`),
  CONSTRAINT `fk_testuak_irudiak1` FOREIGN KEY (`irudiak_izena`) REFERENCES `irudiak` (`izena`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testuak`
--

LOCK TABLES `testuak` WRITE;
/*!40000 ALTER TABLE `testuak` DISABLE KEYS */;
/*!40000 ALTER TABLE `testuak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zirkuluak`
--

DROP TABLE IF EXISTS `zirkuluak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zirkuluak` (
  `idzirkuluak` int(11) NOT NULL AUTO_INCREMENT,
  `cx` int(11) NOT NULL,
  `cy` int(11) NOT NULL,
  `r` float NOT NULL,
  `fill` varchar(45) DEFAULT NULL,
  `irudiak_izena` varchar(45) NOT NULL,
  PRIMARY KEY (`idzirkuluak`),
  UNIQUE KEY `idzirkuluak_UNIQUE` (`idzirkuluak`),
  KEY `fk_zirkuluak_irudiak_idx` (`irudiak_izena`),
  CONSTRAINT `fk_zirkuluak_irudiak` FOREIGN KEY (`irudiak_izena`) REFERENCES `irudiak` (`izena`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zirkuluak`
--

LOCK TABLES `zirkuluak` WRITE;
/*!40000 ALTER TABLE `zirkuluak` DISABLE KEYS */;
/*!40000 ALTER TABLE `zirkuluak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24 11:42:34
