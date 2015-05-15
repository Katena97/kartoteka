-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: kartoteka
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt

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

--
-- Table structure for table `fio`
--

DROP TABLE IF EXISTS `fio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fio` (
  `id` int(50) NOT NULL auto_increment,
  `familia` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `otchestvo` varchar(50) default NULL,
  `telefon` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fio`
--

LOCK TABLES `fio` WRITE;
/*!40000 ALTER TABLE `fio` DISABLE KEYS */;
INSERT INTO `fio` VALUES (1,'Zlobin','Roma','Alekseevich',NULL),(2,'Sisoev','Dima','Alekseevich',NULL),(3,'Trefilov','Anton','Victorovich',NULL),(4,'Smolnicov','Lexa','Lionidovich',NULL),(5,'Ananichev','Kosty','Andreevich',NULL);
/*!40000 ALTER TABLE `fio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurnal`
--

DROP TABLE IF EXISTS `jurnal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurnal` (
  `id` int(11) NOT NULL auto_increment,
  `abonent` int(11) default NULL,
  `zadoljenostabonent` int(11) default NULL,
  `zadoljenostpovremen` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `abonent_idx` (`abonent`),
  CONSTRAINT `abonent` FOREIGN KEY (`abonent`) REFERENCES `fio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurnal`
--

LOCK TABLES `jurnal` WRITE;
/*!40000 ALTER TABLE `jurnal` DISABLE KEYS */;
INSERT INTO `jurnal` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(3,3,NULL,NULL),(4,4,NULL,NULL),(5,5,NULL,NULL);
/*!40000 ALTER TABLE `jurnal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oplata`
--

DROP TABLE IF EXISTS `oplata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oplata` (
  `id` int(11) NOT NULL auto_increment,
  `nazvanie` varchar(45) default NULL,
  `stoimost` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oplata`
--

LOCK TABLES `oplata` WRITE;
/*!40000 ALTER TABLE `oplata` DISABLE KEYS */;
INSERT INTO `oplata` VALUES (1,'abonenskay',200),(2,'povremennay',1);
/*!40000 ALTER TABLE `oplata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zadoljenostabonent`
--

DROP TABLE IF EXISTS `zadoljenostabonent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zadoljenostabonent` (
  `id` int(50) NOT NULL auto_increment,
  `name` varchar(45) default NULL,
  `summa` int(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zadoljenostabonent`
--

LOCK TABLES `zadoljenostabonent` WRITE;
/*!40000 ALTER TABLE `zadoljenostabonent` DISABLE KEYS */;
/*!40000 ALTER TABLE `zadoljenostabonent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zadoljenostpovremen`
--

DROP TABLE IF EXISTS `zadoljenostpovremen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zadoljenostpovremen` (
  `id` int(50) NOT NULL auto_increment,
  `name` varchar(45) default NULL,
  `summa` int(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zadoljenostpovremen`
--

LOCK TABLES `zadoljenostpovremen` WRITE;
/*!40000 ALTER TABLE `zadoljenostpovremen` DISABLE KEYS */;
INSERT INTO `zadoljenostpovremen` VALUES (1,'Roma',NULL),(2,'Dima',NULL),(3,'Anton',NULL),(4,'Lexa',NULL);
/*!40000 ALTER TABLE `zadoljenostpovremen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kartoteka'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-15 13:06:19
