-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: books
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `annotations`
--

DROP TABLE IF EXISTS `annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `annotations` (
  `subject` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `valore` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations`
--

LOCK TABLES `annotations` WRITE;
/*!40000 ALTER TABLE `annotations` DISABLE KEYS */;
INSERT INTO `annotations` (`subject`, `property`, `lang`, `valore`) VALUES ('http://www.obdasystems.com/books/Book','rdfs:label','it','libro'),('http://www.obdasystems.com/books/Edition','rdfs:label','it','edizione'),('http://www.obdasystems.com/books/Book','rdfs:label','fr','livre'),('http://www.obdasystems.com/books/Edition','rdfs:label','fr','edition'),('http://www.obdasystems.com/books/Book','rdfs:comment','it','Descrizione Book in italiano'),('http://www.obdasystems.com/books/Edition','rdfs:comment','it','Descrizione Edition in italiano'),('http://www.obdasystems.com/books/Book','rdfs:comment','fr','Descrizione Book in francese'),('http://www.obdasystems.com/books/Edition','rdfs:comment','fr','Descrizione Edition in francese'),('http://www.obdasystems.com/books/Edition','rdfs:isDefinedBy','it','Lollo'),('http://www.obdasystems.com/books/Edition','rdfs:isDefinedBy','fr','Laurent');
/*!40000 ALTER TABLE `annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_affiliated_writers`
--

DROP TABLE IF EXISTS `tb_affiliated_writers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_affiliated_writers` (
  `wr_code` int NOT NULL,
  `wr_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_affiliated_writers`
--

LOCK TABLES `tb_affiliated_writers` WRITE;
/*!40000 ALTER TABLE `tb_affiliated_writers` DISABLE KEYS */;
INSERT INTO `tb_affiliated_writers` (`wr_code`, `wr_name`) VALUES (23,'AJ Scudiere'),(25,'Anne Rainey'),(27,'Barbara Delinsky'),(34,'Chas Wienke'),(43,'D.C. Ford'),(45,'D. E. Knobbe'),(47,'David Cogswell'),(76,'Douglas Clegg'),(78,'Iris Johanesen'),(98,'Jan Groft'),(101,'Jeff Havens'),(102,'Kate Pearce'),(123,'L.C. Higgs'),(127,'Melissa Mayhue'),(134,'Mike Green'),(145,'S. C. Carr'),(156,'Shirley Tallman'),(167,'Stacy Choen'),(178,'Susan Lyons'),(189,'Tim Davys'),(234,'Tracy Richardson'),(245,'William Boyd'),(300,'J. K. Rowling'),(302,'Robert Galbraith'),(301,NULL),(303,'Fyodor Mikhailovich Dostoevsky'),(123123,'Maurizio Lenzerini'),(456456,'Micheal Nostradamus');
/*!40000 ALTER TABLE `tb_affiliated_writers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_authors`
--

DROP TABLE IF EXISTS `tb_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_authors` (
  `bk_code` int NOT NULL,
  `wr_id` int NOT NULL,
  PRIMARY KEY (`bk_code`,`wr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_authors`
--

LOCK TABLES `tb_authors` WRITE;
/*!40000 ALTER TABLE `tb_authors` DISABLE KEYS */;
INSERT INTO `tb_authors` (`bk_code`, `wr_id`) VALUES (1,189),(2,123),(3,45),(4,76),(5,78),(6,156),(7,189),(8,25),(9,47),(10,123),(11,43),(16,245),(17,127),(18,234),(19,76),(20,78),(21,27),(22,167),(23,34),(24,134),(30,23),(31,25),(32,24),(35,156),(36,47),(39,303),(40,300),(123123,123123),(456456,456456),(789789,789789);
/*!40000 ALTER TABLE `tb_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_bk_gen`
--

DROP TABLE IF EXISTS `tb_bk_gen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_bk_gen` (
  `id_bk` int NOT NULL,
  `gen_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_bk`,`gen_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bk_gen`
--

LOCK TABLES `tb_bk_gen` WRITE;
/*!40000 ALTER TABLE `tb_bk_gen` DISABLE KEYS */;
INSERT INTO `tb_bk_gen` (`id_bk`, `gen_name`) VALUES (3,'Fiction'),(4,'Horror'),(5,'Mystery'),(6,'Mystery'),(7,'Fantasy'),(8,'Romance'),(9,'Biographies'),(9,'History'),(9,'Politics'),(10,'Historical'),(10,'Novels'),(11,'Self Help'),(12,'Fantasy'),(12,'Fiction'),(12,'Horror'),(12,'Humor'),(13,'Fantasy'),(13,'Horror'),(14,'Cultural'),(14,'Music'),(15,'Science'),(16,'Mystery'),(17,'Romance'),(18,'Children'),(19,'Horror'),(20,'Horror'),(21,'Romance'),(22,'Fiction'),(23,'History'),(24,'Fiction'),(33,'Fiction');
/*!40000 ALTER TABLE `tb_bk_gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_books`
--

DROP TABLE IF EXISTS `tb_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_books` (
  `bk_code` int NOT NULL,
  `bk_title` varchar(100) DEFAULT NULL,
  `is_classic` tinyint(1) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bk_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_books`
--

LOCK TABLES `tb_books` WRITE;
/*!40000 ALTER TABLE `tb_books` DISABLE KEYS */;
INSERT INTO `tb_books` (`bk_code`, `bk_title`, `is_classic`, `title`) VALUES (1,'Resonance',0,NULL),(2,'As we Grieve',0,NULL),(3,'Runaway Storm',0,NULL),(4,'Neverland',1,NULL),(5,'Eight Days to Live',0,NULL),(6,'Scandal on Rincon Hill',1,NULL),(7,'Amberville',0,NULL),(8,'Some Like it Rough',0,NULL),(9,'Zinn for Beginners',1,NULL),(10,'Here Burns My Candle',0,NULL),(11,'How to get fired',0,NULL),(12,'The Twelve Little Hitlers',0,NULL),(13,'The story of Eight the sparrow',0,NULL),(14,'The social impact of Christina Oats songs',0,NULL),(15,'Engineering analysis of Mazzinga',0,NULL),(16,'Ordinary Thunderstorms',0,NULL),(17,'A Highlander\'s Homecoming',0,NULL),(18,'Indian Summer',0,NULL),(19,'A Dark Circus',1,NULL),(20,'City of Stars',0,NULL),(21,'Not My Daughter',0,NULL),(22,'The Last Train From Paris',1,NULL),(23,'Our Boomer Years',0,NULL),(24,'Path of Thunder',0,NULL),(34,NULL,0,NULL),(35,NULL,0,NULL),(36,NULL,0,NULL),(39,'Crime and Punishment',1,NULL),(40,'Harry Potter and the Philosopher\'s Stone',0,NULL);
/*!40000 ALTER TABLE `tb_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_edition`
--

DROP TABLE IF EXISTS `tb_edition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_edition` (
  `ed_code` int NOT NULL,
  `ed_type` char(1) NOT NULL,
  `pub_date` date DEFAULT NULL,
  `n_edt` int DEFAULT NULL,
  `editor` int NOT NULL,
  `bk_id` int NOT NULL,
  `e_book` tinyint(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`ed_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_edition`
--

LOCK TABLES `tb_edition` WRITE;
/*!40000 ALTER TABLE `tb_edition` DISABLE KEYS */;
INSERT INTO `tb_edition` (`ed_code`, `ed_type`, `pub_date`, `n_edt`, `editor`, `bk_id`, `e_book`, `price`) VALUES (10,'X','2000-09-23',1,133,24,1,2.99),(12,'E','2010-02-18',1,176,1,0,10.99),(21,'E','2000-02-12',1,176,2,0,13.99),(23,'S','2004-01-02',1,198,3,0,34.99),(32,'S','2009-12-04',1,198,4,0,42.99),(34,'E','2000-07-06',1,125,5,1,3.99),(39,'X','2007-02-03',2,132,20,0,12.99),(40,'X','2005-03-01',1,132,21,0,12.99),(43,'X','2001-05-14',1,125,6,0,12.99),(45,'S','2005-05-05',1,133,7,0,27.99),(50,'X','2001-12-03',1,187,22,0,12.99),(54,'X','2008-09-11',1,154,8,0,12.99),(56,'S','2005-02-07',1,112,9,0,15.39),(65,'E','2007-05-09',1,132,10,1,0.99),(67,'X','2004-11-03',1,187,11,1,3),(70,'X','2009-03-11',1,165,23,1,4.5),(73,'X','2002-04-01',1,121,17,1,4.69),(74,'X','2003-11-03',1,187,18,0,12.99),(76,'X','2003-12-06',1,165,12,1,4),(78,'S','2004-05-03',1,121,15,0,23.6),(82,'X','2000-11-09',1,144,16,0,12.99),(87,'S','2007-05-09',2,133,7,0,45.69),(89,'S','2010-05-01',2,187,2,0,42.39),(90,'E','2006-05-09',2,125,5,0,6.99),(91,'X','2009-04-18',3,112,6,0,12.99),(92,'E','2003-01-12',2,112,6,0,7.89),(98,'E','2010-02-01',2,132,10,0,8.49),(99,'X','2006-04-01',1,125,19,0,12.99);
/*!40000 ALTER TABLE `tb_edition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_edition_audio`
--

DROP TABLE IF EXISTS `tb_edition_audio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_edition_audio` (
  `ed_code` int NOT NULL,
  `duration` int DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_edition_audio`
--

LOCK TABLES `tb_edition_audio` WRITE;
/*!40000 ALTER TABLE `tb_edition_audio` DISABLE KEYS */;
INSERT INTO `tb_edition_audio` (`ed_code`, `duration`) VALUES (12,36421),(21,34125),(78,37456),(87,42215),(99,30045);
/*!40000 ALTER TABLE `tb_edition_audio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_edition_printed`
--

DROP TABLE IF EXISTS `tb_edition_printed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_edition_printed` (
  `ed_code` int NOT NULL,
  `pages` int DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_edition_printed`
--

LOCK TABLES `tb_edition_printed` WRITE;
/*!40000 ALTER TABLE `tb_edition_printed` DISABLE KEYS */;
INSERT INTO `tb_edition_printed` (`ed_code`, `pages`) VALUES (23,138),(32,179),(39,180),(40,103),(43,170),(45,192),(50,191),(54,172),(56,104),(74,156),(82,141),(89,132),(90,198),(91,113),(92,151),(98,156);
/*!40000 ALTER TABLE `tb_edition_printed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_editor`
--

DROP TABLE IF EXISTS `tb_editor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_editor` (
  `ed_code` int NOT NULL,
  `ed_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ed_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_editor`
--

LOCK TABLES `tb_editor` WRITE;
/*!40000 ALTER TABLE `tb_editor` DISABLE KEYS */;
INSERT INTO `tb_editor` (`ed_code`, `ed_name`) VALUES (112,'Paul Golden'),(121,'Pat Red'),(125,'Simon Frost'),(132,'Melody Albert'),(133,'Valerio Nin'),(144,'Victoria Rolls'),(154,'Karl Forman'),(165,'Fill Luckett'),(176,'Eric Jonnes'),(187,'Bill Sugar'),(198,'Bill Green');
/*!40000 ALTER TABLE `tb_editor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_emerge_authors`
--

DROP TABLE IF EXISTS `tb_emerge_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_emerge_authors` (
  `bk_code` int NOT NULL,
  `wr_id` int NOT NULL,
  PRIMARY KEY (`bk_code`,`wr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_emerge_authors`
--

LOCK TABLES `tb_emerge_authors` WRITE;
/*!40000 ALTER TABLE `tb_emerge_authors` DISABLE KEYS */;
INSERT INTO `tb_emerge_authors` (`bk_code`, `wr_id`) VALUES (14,267),(14,278),(15,289);
/*!40000 ALTER TABLE `tb_emerge_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_employees`
--

DROP TABLE IF EXISTS `tb_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_employees` (
  `employee_id` int DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `retired` tinyint(1) DEFAULT NULL,
  `date_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_employees`
--

LOCK TABLES `tb_employees` WRITE;
/*!40000 ALTER TABLE `tb_employees` DISABLE KEYS */;
INSERT INTO `tb_employees` (`employee_id`, `vat`, `profession`, `employee_name`, `retired`, `date_birth`) VALUES (23,'AJSCDR','AUTHOR','AJ Scudiere',NULL,'1912-10-12'),(25,'ANNRNY','AUTHOR','Anne Rainey',NULL,'1911-01-21'),(27,'BRBDLK','AUTHOR','Barbara Delinsky',NULL,'1906-12-16'),(34,NULL,'AUTHOR','Chas Wienke',NULL,NULL),(43,NULL,'AUTHOR','D.C. Ford',NULL,NULL),(45,NULL,'AUTHOR','D. E. Knobbe',NULL,NULL),(47,'DVDCDS','AUTHOR','David Cogswell',NULL,'1852-08-13'),(76,'DLSCLG','AUTHOR','Douglas Clegg',NULL,'1853-04-09'),(78,NULL,'AUTHOR','Iris Johanesen',NULL,NULL),(98,'JANGRO','AUTHOR','Jan Groft',NULL,'1846-12-19'),(101,'JFFHVN','AUTHOR','Jeff Havens',NULL,'1844-06-17'),(102,'KATPRC','AUTHOR','Kate Pearce',NULL,'1993-10-06'),(123,NULL,'AUTHOR','L.C. Higgs',NULL,'1991-07-27'),(127,NULL,'AUTHOR','Melissa Mayhue',NULL,'1973-03-03'),(134,NULL,'AUTHOR','Mike Green',NULL,'1936-10-31'),(145,NULL,'AUTHOR','S. C. Carr',NULL,'1877-05-19'),(156,NULL,'AUTHOR','Shirley Tallman',NULL,'1865-02-19'),(167,NULL,'AUTHOR','Stacy Choen',NULL,'1831-03-19'),(178,NULL,'AUTHOR','Susan Lyons',NULL,'1976-07-08'),(189,NULL,'AUTHOR','Tim Davys',NULL,'1924-09-18'),(234,NULL,'AUTHOR','Tracy Richardson',NULL,'1928-03-11'),(245,NULL,'AUTHOR','William Boyd',1,'1945-01-27'),(300,'JNNRWL','AUTHOR','Joanne Rowling\n',0,'1965-07-31'),(301,NULL,'AUTHOR',NULL,NULL,'1985-04-05'),(189,NULL,'AUTHOR',NULL,NULL,NULL),(123,NULL,'AUTHOR',NULL,NULL,NULL),(45,NULL,'AUTHOR',NULL,NULL,NULL),(76,NULL,'AUTHOR',NULL,NULL,NULL),(78,NULL,'AUTHOR',NULL,NULL,NULL),(156,NULL,'AUTHOR',NULL,NULL,NULL),(189,NULL,'AUTHOR',NULL,NULL,NULL),(25,NULL,'AUTHOR',NULL,NULL,NULL),(47,NULL,'AUTHOR',NULL,NULL,NULL),(123,NULL,'AUTHOR',NULL,NULL,NULL),(43,NULL,'AUTHOR',NULL,NULL,NULL),(245,NULL,'AUTHOR',NULL,NULL,NULL),(127,NULL,'AUTHOR',NULL,NULL,NULL),(234,NULL,'AUTHOR',NULL,NULL,NULL),(76,NULL,'AUTHOR',NULL,NULL,NULL),(78,NULL,'AUTHOR',NULL,NULL,NULL),(27,NULL,'AUTHOR',NULL,NULL,NULL),(167,NULL,'AUTHOR',NULL,NULL,NULL),(34,NULL,'AUTHOR',NULL,NULL,NULL),(134,NULL,'AUTHOR',NULL,NULL,NULL),(23,NULL,'AUTHOR',NULL,NULL,NULL),(25,NULL,'AUTHOR',NULL,NULL,NULL),(24,NULL,'AUTHOR',NULL,NULL,NULL),(156,NULL,'AUTHOR',NULL,NULL,NULL),(47,NULL,'AUTHOR',NULL,NULL,NULL),(133,NULL,'EDITOR',NULL,NULL,NULL),(176,NULL,'EDITOR',NULL,NULL,NULL),(176,NULL,'EDITOR',NULL,NULL,NULL),(198,NULL,'EDITOR',NULL,NULL,NULL),(198,NULL,'EDITOR',NULL,NULL,NULL),(125,NULL,'EDITOR',NULL,NULL,NULL),(132,NULL,'EDITOR',NULL,NULL,NULL),(132,NULL,'EDITOR',NULL,NULL,NULL),(125,NULL,'EDITOR',NULL,NULL,NULL),(133,NULL,'EDITOR',NULL,NULL,NULL),(187,NULL,'EDITOR',NULL,NULL,NULL),(154,'MRCGCM','EDITOR',NULL,NULL,NULL),(112,NULL,'EDITOR',NULL,NULL,NULL),(132,NULL,'EDITOR',NULL,NULL,NULL),(187,NULL,'EDITOR',NULL,NULL,NULL),(165,NULL,'EDITOR',NULL,NULL,NULL),(121,NULL,'EDITOR',NULL,NULL,NULL),(187,NULL,'EDITOR',NULL,NULL,NULL),(165,NULL,'EDITOR',NULL,NULL,NULL),(121,NULL,'EDITOR',NULL,NULL,NULL),(144,NULL,'EDITOR',NULL,NULL,NULL),(133,NULL,'EDITOR',NULL,NULL,NULL),(187,NULL,'EDITOR',NULL,NULL,NULL),(125,NULL,'EDITOR',NULL,NULL,NULL),(112,NULL,'EDITOR',NULL,NULL,NULL),(112,NULL,'EDITOR',NULL,NULL,NULL),(132,NULL,'EDITOR',NULL,NULL,NULL),(125,NULL,'EDITOR',NULL,NULL,NULL),(112,'PALGLD','EDITOR','Paul Golden',NULL,'1900-02-28'),(121,'PATRED','EDITOR','Pat Red',NULL,'1922-12-05'),(125,'SMNFRS','EDITOR','Simon Frost',NULL,'1843-05-05'),(132,NULL,'EDITOR','Melody Albert',NULL,'1961-07-15'),(133,NULL,'EDITOR','Valerio Nin',NULL,NULL),(144,NULL,'EDITOR','Victoria Rolls',NULL,NULL),(154,NULL,'EDITOR','Karl Forman',NULL,NULL),(165,NULL,'EDITOR','Fill Luckett',NULL,NULL),(176,NULL,'EDITOR','Eric Jonnes',NULL,NULL),(187,NULL,'EDITOR','Bill Sugar',NULL,NULL),(198,NULL,'EDITOR','Bill Green',NULL,NULL),(NULL,'LSAMCG','SECRETARY','Lisa McGill',0,'1980-03-22'),(NULL,'JHNSKW','SECRETARY','John Skow',0,'1838-08-23'),(NULL,'MCHJOD','SECRETARY','Micheal Joody',1,'1958-09-15'),(NULL,'BRDBRD','MANAGER','Bridgitte Bird',0,'1865-12-16'),(112,'PALGLD','AUTHOR','Paul Golden',NULL,'1900-02-28'),(302,'JNNRWL','AUTHOR','Joanne Rowling\n',0,'1965-07-31'),(303,NULL,'AUTHOR','Fyodor Mikhailovich Dostoevsky',1,'1821-11-11'),(123123,'LNZMRZ','AUTHOR','Maurizio Lenzerini',0,'1954-12-14'),(789789,NULL,'AUTHOR','Charles Darwin',1,'1809-02-12');
/*!40000 ALTER TABLE `tb_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_on_prob_wr`
--

DROP TABLE IF EXISTS `tb_on_prob_wr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_on_prob_wr` (
  `wr_code` int NOT NULL,
  `wr_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`wr_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_on_prob_wr`
--

LOCK TABLES `tb_on_prob_wr` WRITE;
/*!40000 ALTER TABLE `tb_on_prob_wr` DISABLE KEYS */;
INSERT INTO `tb_on_prob_wr` (`wr_code`, `wr_name`) VALUES (267,'Peter Griffin'),(278,'Homer Simpson'),(289,'Jon Stewart');
/*!40000 ALTER TABLE `tb_on_prob_wr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_scientific_books`
--

DROP TABLE IF EXISTS `tb_scientific_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_scientific_books` (
  `bk_id` int NOT NULL,
  `revision` date DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_scientific_books`
--

LOCK TABLES `tb_scientific_books` WRITE;
/*!40000 ALTER TABLE `tb_scientific_books` DISABLE KEYS */;
INSERT INTO `tb_scientific_books` (`bk_id`, `revision`, `topic`, `title`) VALUES (123123,'2022-02-07','COMPUTER SCIENCE','Data Management Systems'),(123123,'2020-12-31','COMPUTER SCIENCE','Data Management Systems'),(456456,'2019-12-12','MEDICINE','The next pandemic'),(456456,'2019-12-05','MEDICINE','The next pandemic'),(789789,'1859-09-24','BIOLOGY','On the origin of the species');
/*!40000 ALTER TABLE `tb_scientific_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 15:10:45
