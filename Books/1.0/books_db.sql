CREATE DATABASE  IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `books`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
-- Server version	5.6.25-log
-- Author: Domenico Fabio Savo

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
-- Table structure for table `tb_affiliated_writers`
--

DROP TABLE IF EXISTS `tb_affiliated_writers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_affiliated_writers` (
  `wr_code` int(11) NOT NULL,
  `wr_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`wr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_affiliated_writers`
--

LOCK TABLES `tb_affiliated_writers` WRITE;
/*!40000 ALTER TABLE `tb_affiliated_writers` DISABLE KEYS */;
INSERT INTO `tb_affiliated_writers` VALUES (23,'AJ Scudiere'),(25,'Anne Rainey'),(27,'Barbara Delinsky'),(34,'Chas Wienke'),(43,'D.C. Ford'),(45,'D. E. Knobbe'),(47,'David Cogswell'),(76,'Douglas Clegg'),(78,'Iris Johanesen'),(98,'Jan Groft'),(101,'Jeff Havens'),(102,'Kate Pearce'),(123,'L.C. Higgs'),(127,'Melissa Mayhue'),(134,'Mike Green'),(145,'S. C. Carr'),(156,'Shirley Tallman'),(167,'Stacy Choen'),(178,'Susan Lyons'),(189,'Tim Davys'),(234,'Tracy Richardson'),(245,'William Boyd'),(300,NULL),(301,NULL);
/*!40000 ALTER TABLE `tb_affiliated_writers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_authors`
--

DROP TABLE IF EXISTS `tb_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_authors` (
  `bk_code` int(11) NOT NULL,
  `wr_id` int(11) NOT NULL,
  PRIMARY KEY (`bk_code`,`wr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_authors`
--

LOCK TABLES `tb_authors` WRITE;
/*!40000 ALTER TABLE `tb_authors` DISABLE KEYS */;
INSERT INTO `tb_authors` VALUES (1,189),(2,123),(3,45),(4,76),(5,78),(6,156),(7,189),(8,25),(9,47),(10,123),(11,43),(16,245),(17,127),(18,234),(19,76),(20,78),(21,27),(22,167),(23,34),(24,134),(30,23),(31,25),(32,24),(35,156),(36,47);
/*!40000 ALTER TABLE `tb_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_bk_gen`
--

DROP TABLE IF EXISTS `tb_bk_gen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_bk_gen` (
  `id_bk` int(11) NOT NULL,
  `gen_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_bk`,`gen_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bk_gen`
--

LOCK TABLES `tb_bk_gen` WRITE;
/*!40000 ALTER TABLE `tb_bk_gen` DISABLE KEYS */;
INSERT INTO `tb_bk_gen` VALUES (3,'Fiction'),(4,'Horror'),(5,'Mystery'),(6,'Mystery'),(7,'Fantasy'),(8,'Romance'),(9,'Biographies'),(9,'History'),(9,'Politics'),(10,'Historical'),(10,'Novels'),(11,'Self Help'),(12,'Fantasy'),(12,'Fiction'),(12,'Horror'),(12,'Humor'),(13,'Fantasy'),(13,'Horror'),(14,'Cultural'),(14,'Music'),(15,'Science'),(16,'Mystery'),(17,'Romance'),(18,'Children'),(19,'Horror'),(20,'Horror'),(21,'Romance'),(22,'Fiction'),(23,'History'),(24,'Fiction'),(33,'Fiction');
/*!40000 ALTER TABLE `tb_bk_gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_books`
--

DROP TABLE IF EXISTS `tb_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_books` (
  `bk_code` int(11) NOT NULL,
  `bk_title` varchar(100) DEFAULT NULL,
  `bk_type` char(1) NOT NULL DEFAULT 'X',
  PRIMARY KEY (`bk_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_books`
--

LOCK TABLES `tb_books` WRITE;
/*!40000 ALTER TABLE `tb_books` DISABLE KEYS */;
INSERT INTO `tb_books` VALUES (1,'Resonance','P'),(2,'As we Grieve','P'),(3,'Runaway Storm','P'),(4,'Neverland','P'),(5,'Eight Days to Live','P'),(6,'Scandal on Rincon Hill','P'),(7,'Amberville','P'),(8,'Some Like it Rough','P'),(9,'Zinn for Beginners','P'),(10,'Here Burns My Candle','P'),(11,'How to get fired','P'),(12,'The Twelve Little Hitlers','P'),(13,'The story of Eight the sparrow','P'),(14,'The social impact of Christina Oats songs','P'),(15,'Engineering analysis of Mazzinga','P'),(16,'Ordinary Thunderstorms','A'),(17,'A Highlander\'s Homecoming','A'),(18,'Indian Summer','A'),(19,'A Dark Circus','A'),(20,'City of Stars','A'),(21,'Not My Daughter','E'),(22,'The Last Train From Paris','E'),(23,'Our Boomer Years','E'),(24,'Path of Thunder','E'),(34,NULL,'P'),(35,NULL,'E'),(36,NULL,'E');
/*!40000 ALTER TABLE `tb_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_edition`
--

DROP TABLE IF EXISTS `tb_edition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_edition` (
  `ed_code` int(11) NOT NULL,
  `ed_type` char(1) NOT NULL,
  `pub_date` date DEFAULT NULL,
  `n_edt` int(11) DEFAULT NULL,
  `editor` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  PRIMARY KEY (`ed_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_edition`
--

LOCK TABLES `tb_edition` WRITE;
/*!40000 ALTER TABLE `tb_edition` DISABLE KEYS */;
INSERT INTO `tb_edition` VALUES (10,'X','2000-09-23',1,34,24),(12,'E','2010-02-18',1,76,1),(21,'E','2000-02-12',1,76,2),(23,'S','2004-01-02',1,98,3),(32,'S','2009-12-04',1,98,4),(34,'E','2000-07-06',1,23,5),(39,'X','2007-02-03',2,32,20),(40,'X','2005-03-01',1,32,21),(43,'X','2001-05-14',1,23,6),(45,'S','2005-05-05',1,34,7),(50,'X','2001-12-03',1,87,22),(54,'X','2008-09-11',1,54,8),(56,'S','2005-02-07',1,12,9),(65,'E','2007-05-09',1,32,10),(67,'X','2004-11-03',1,87,11),(70,'X','2009-03-11',1,65,23),(73,'X','2002-04-01',1,21,17),(74,'X','2003-11-03',1,87,18),(76,'X','2003-12-06',1,65,12),(78,'S','2004-05-03',1,21,15),(82,'X','2000-11-09',1,45,16),(87,'S','2007-05-09',2,34,7),(89,'S','2010-05-01',2,87,2),(90,'E','2006-05-09',2,23,5),(91,'X','2009-04-18',3,12,6),(92,'E','2003-01-12',2,12,6),(98,'E','2010-02-01',2,32,10),(99,'X','2006-04-01',1,23,19);
/*!40000 ALTER TABLE `tb_edition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_editor`
--

DROP TABLE IF EXISTS `tb_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_editor` (
  `ed_code` int(11) NOT NULL,
  `ed_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ed_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_editor`
--

LOCK TABLES `tb_editor` WRITE;
/*!40000 ALTER TABLE `tb_editor` DISABLE KEYS */;
INSERT INTO `tb_editor` VALUES (12,'Paul Golden'),(21,'Pat Red'),(23,'Simon Frost'),(32,'Melody Albert'),(34,'Valerio Nin'),(45,'Victoria Rolls'),(54,'Karl Forman'),(65,'Fill Luckett'),(76,'Eric Jonnes'),(87,'Bill Sugar'),(98,'Bill Green');
/*!40000 ALTER TABLE `tb_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_emerge_authors`
--

DROP TABLE IF EXISTS `tb_emerge_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_emerge_authors` (
  `bk_code` int(11) NOT NULL,
  `wr_id` int(11) NOT NULL,
  PRIMARY KEY (`bk_code`,`wr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_emerge_authors`
--

LOCK TABLES `tb_emerge_authors` WRITE;
/*!40000 ALTER TABLE `tb_emerge_authors` DISABLE KEYS */;
INSERT INTO `tb_emerge_authors` VALUES (14,267),(14,278),(15,289);
/*!40000 ALTER TABLE `tb_emerge_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_on_prob_wr`
--

DROP TABLE IF EXISTS `tb_on_prob_wr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_on_prob_wr` (
  `wr_code` int(11) NOT NULL,
  `wr_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`wr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_on_prob_wr`
--

LOCK TABLES `tb_on_prob_wr` WRITE;
/*!40000 ALTER TABLE `tb_on_prob_wr` DISABLE KEYS */;
INSERT INTO `tb_on_prob_wr` VALUES (267,'Peter Griffin'),(278,'Homer Simpson'),(289,'Jon Stewart');
/*!40000 ALTER TABLE `tb_on_prob_wr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-23 14:11:46
