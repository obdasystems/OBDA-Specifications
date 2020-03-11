CREATE DATABASE  IF NOT EXISTS `characters_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `characters_db`;
-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: characters_db
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `abilities`
--

DROP TABLE IF EXISTS `abilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `abilities` (
  `id_ch` int(11) NOT NULL,
  `superpower` tinyint(1) NOT NULL DEFAULT '0',
  `ability_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_ch`,`ability_name`),
  CONSTRAINT `FK_ch` FOREIGN KEY (`id_ch`) REFERENCES `characters` (`id_ch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abilities`
--

LOCK TABLES `abilities` WRITE;
/*!40000 ALTER TABLE `abilities` DISABLE KEYS */;
INSERT INTO `abilities` VALUES (34,1,'Immortality'),(34,1,'Magic'),(34,1,'Reality warping'),(35,0,'Enhanced intelligence'),(35,1,'Flight'),(35,1,'Freezing breath'),(35,1,'Heat vision'),(35,1,'Invulnerability'),(35,1,'Superstrength'),(38,0,'Genius-level intellect'),(38,0,'High-tech equipment'),(38,0,'Intelligent tactician'),(38,0,'Master detective'),(38,0,'Master martial artist'),(39,0,'High-tech equipment'),(39,0,'Highly skilled acrobatic and athletic'),(39,0,'Highly skilled martial artist'),(39,0,'Intelligent tactician'),(39,0,'Master archer'),(48,0,'High-tech equipment'),(48,0,'Highly skilled martial artist'),(48,0,'Master archer'),(49,1,'Invulnerability'),(49,1,'Sub-mariner'),(49,1,'Superstrength'),(49,1,'Telepathy'),(51,1,'Blast power'),(51,1,'Density control'),(51,1,'Flight'),(51,1,'Force field'),(51,1,'Invulnerability'),(67,1,'Electricity control'),(67,1,'Sub-mariner'),(67,1,'Superstrength'),(95,1,'Flight'),(95,1,'Heat vision'),(95,1,'Invulnerability'),(95,1,'Superstrength'),(97,1,'Destructive ultrasonic scream'),(97,0,'Highly skilled acrobatic and athletic'),(97,0,'Highly skilled martial artist'),(103,1,'Flight'),(103,1,'Longevity'),(103,1,'Magic equipment'),(103,0,'Master martial artist'),(103,1,'Superstrength'),(107,1,'Superspeed'),(107,0,'Time travel'),(107,1,'Vibration control'),(112,0,'Agility'),(112,1,'Flight'),(112,0,'High-tech equipment'),(112,1,'Invulnerability'),(112,1,'Superstrength'),(112,1,'Technopathy'),(121,1,'Flight'),(121,1,'Freezing breath'),(121,1,'Heat vision'),(121,1,'Invulnerability'),(121,1,'Superstrength'),(122,1,'Animal control'),(122,1,'Invulnerability'),(122,1,'Sub-mariner'),(125,0,'Agility'),(125,1,'Animal control'),(125,1,'Density control'),(125,1,'Flight'),(125,1,'Superstrength'),(125,1,'Telepathy'),(132,0,'Genius-level intellect'),(132,0,'Master acrobat'),(132,0,'Master detective'),(132,0,'Master martial artist'),(152,0,'High-tech equipment'),(152,0,'Highly skilled acrobatic and athletic'),(152,0,'Highly skilled martial artist'),(154,1,'Density control'),(154,1,'Electricity control'),(154,1,'Invulnerability'),(154,1,'Superstrength'),(165,0,'Agility'),(165,0,'High-tech equipment'),(165,0,'Master archer'),(168,0,'Genius-level intellect'),(168,0,'Highly skilled martial artist'),(168,1,'Longevity'),(168,0,'Master detective'),(169,1,'Flight'),(169,1,'Intangibility'),(169,1,'Invisibility'),(169,1,'Superstrength'),(169,1,'Telekinesis'),(169,1,'Telepathy'),(172,1,'Flight'),(172,1,'Intangibility'),(172,1,'Superstrength'),(172,1,'Telekinesis'),(172,1,'Telepathy'),(178,0,'Agility'),(178,1,'Blast power'),(178,1,'Flight'),(178,1,'Invulnerability'),(178,1,'Superstrength'),(182,1,'Blast power'),(182,1,'Flight'),(182,1,'Invulnerability'),(182,1,'Longevity'),(182,1,'Superstrength'),(191,0,'Agility'),(191,1,'Longevity'),(191,0,'Weapon master'),(195,1,'Blast power'),(195,1,'Ice control'),(195,1,'Longevity'),(195,1,'Superstrength'),(198,1,'Emotion control'),(198,0,'High-tech equipment'),(198,0,'Weapon master'),(205,0,'Agility'),(205,0,'Highly skilled martial artist'),(205,1,'Superstrength'),(205,0,'Weapon master'),(213,1,'Immortality'),(213,1,'Invulnerability'),(213,1,'Superstrength'),(213,0,'Weapon master'),(214,0,'Genius-level intellect'),(214,0,'High-tech equipment'),(232,0,'Agility'),(232,1,'Death touch'),(232,1,'Plant control'),(245,1,'Flight'),(245,1,'Heat vision'),(245,1,'Invulnerability'),(245,1,'Superstrength'),(271,1,'Blast power'),(271,1,'Flight'),(271,1,'Superstrength'),(272,0,'Agility'),(272,0,'Weapon master'),(274,0,'Agility'),(274,0,'Weapon master'),(285,0,'Agility'),(285,0,'Master archer'),(285,0,'Weapon master'),(286,1,'Flight'),(286,0,'Highly skilled martial artist'),(286,1,'Hypnosis'),(287,0,'Agility'),(287,0,'Highly skilled martial artist'),(287,1,'Superstrength'),(287,0,'Weapon master'),(288,0,'Agility'),(288,0,'Master archer'),(288,0,'Weapon master'),(289,0,'Marksmanship'),(289,0,'Weapon master'),(298,1,'Flight'),(298,1,'Heat vision'),(298,1,'Invulnerability'),(298,1,'Superstrength'),(298,1,'Telekinesis'),(301,0,'Agility'),(301,0,'High-tech equipment'),(301,0,'Weapon master'),(303,1,'Invulnerability'),(303,1,'Sub-mariner'),(303,1,'Superstrength'),(398,0,'Agility'),(398,0,'High-tech equipment'),(398,0,'Weapon master'),(405,1,'Animal control'),(405,1,'Divine powers'),(405,1,'Invulnerability'),(407,1,'Hypnosis'),(407,1,'Telepathy'),(431,1,'Animal control'),(431,1,'Divine powers'),(431,1,'Flight'),(431,1,'Longevity'),(521,1,'Flight'),(521,1,'Ice control'),(521,1,'Weather control'),(680,0,'Agility'),(680,1,'Flight'),(680,1,'Heat vision'),(680,1,'Invulnerability'),(680,1,'Superstrength'),(723,0,'Agility'),(723,1,'Blast power'),(723,1,'Invulnerability'),(723,1,'Superstrength'),(867,1,'Density control'),(867,1,'Flight'),(867,1,'Invulnerability'),(867,1,'Telepathy'),(874,1,'Blast power'),(874,1,'Flight'),(874,1,'Invulnerability'),(874,1,'Superstrength'),(892,1,'Flight'),(892,1,'Invulnerability'),(892,1,'Superstrength'),(892,1,'Telepathy'),(944,0,'Genius-level intellect');
/*!40000 ALTER TABLE `abilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `characters` (
  `id_ch` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `planet_of_origin` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `species` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_ch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (34,'Zatanna',NULL,NULL,'Human'),(35,'Superman','Metropolis','Krypton','Kryptonian'),(38,'Batman','Gotham City',NULL,'Human'),(39,'Green Arrow','Star City',NULL,'Human'),(48,'Speedy','Star City',NULL,'Human'),(49,'Aquaman','Atlantis',NULL,'Atlantean'),(51,'Green Lantern',NULL,NULL,'Human'),(67,'Aqualad','Atlantis',NULL,'Atlantean'),(95,'Superboy','Smallville','Krypton','Kryptonian'),(97,'Black Canary','Gotham City',NULL,'Metahuman'),(103,'Wonder Woman',NULL,NULL,'Amazon'),(107,'Flash','Central City',NULL,'Human'),(112,'Cyborg','San Francisco',NULL,'Human'),(121,'Supergirl','Metropolis','Krypton','Kryptonian'),(122,'Animal Man','San Diego',NULL,'Human'),(125,'Vixen',NULL,NULL,'Human'),(132,'Nightwing','Gotham City',NULL,'Human'),(152,'Batwoman','Gotham City',NULL,'Human'),(154,'Plastic Man',NULL,NULL,'Human'),(165,'Red Arrow','New York City',NULL,'Human'),(168,'Question','Hub City',NULL,'Human'),(169,'Martian Manhunter',NULL,'Mars','Martian'),(172,'Miss Martian','San Francisco','Mars','Martian'),(178,'Starfire','New York City','Tamaran','Tamaranean'),(182,'Icon','New York City','Terminus','Terminan'),(191,'Ras Al Ghul',NULL,NULL,'Human'),(195,'Mr. Freeze','Gotham City',NULL,'Human'),(198,'Scarecrow','Gotham City',NULL,'Human'),(205,'Bane','Santa Prisca',NULL,'Human'),(213,'Vandal Savage',NULL,NULL,'Human'),(214,'Lex Lutor','Metropolis',NULL,'Human'),(232,'Poison Ivy','Seattle',NULL,'Human'),(245,'General Zod',NULL,'Krypton','Kryptonian'),(271,'Sinestro',NULL,'Korugar','Korugaran'),(272,'Two-Face','Gotham City',NULL,'Human'),(274,'The Joker','Gotham City',NULL,'Human'),(285,'Komodo','Star City',NULL,'Human'),(286,'Count Vertigo','Star City',NULL,'Human'),(287,'Deathstroke',NULL,NULL,'Human'),(288,'Merlyn','Star City',NULL,'Human'),(289,'Cupid','Star City',NULL,'Human'),(298,'Darkseid',NULL,'Apokolips','New God'),(301,'Fisherman',NULL,NULL,'Human'),(303,'King Shark','Honolulu',NULL,'Animal'),(398,'Black Manta',NULL,NULL,'Human'),(405,'Strife','Olympus',NULL,'Olympian'),(407,'Doctor Psycho',NULL,NULL,'Human'),(431,'Circe','Aeaea',NULL,'Demigod'),(521,'Weather Wizard','Central City',NULL,'Human'),(523,'Savitar','Tibet',NULL,'Human'),(537,'Reverse-Flash','Central Cityplex',NULL,'Human'),(567,'Trickster','Keystone City',NULL,'Human'),(621,'Anti-Monitor',NULL,NULL,'God/Eternal'),(680,'Black Zero','Metropolis',NULL,'Metahuman/clone'),(723,'Grail',NULL,NULL,'Amazon'),(867,'Amonn Amokk',NULL,'Mars','White Martian'),(874,'Black Adam','New York City',NULL,'Human'),(892,'A-Mortal',NULL,'Mars','White Martian'),(944,'Jeremiah Hatch','Hub City',NULL,'Human');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supercrimes`
--

DROP TABLE IF EXISTS `supercrimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supercrimes` (
  `criminal_id` int(11) NOT NULL,
  `crime_date` date NOT NULL,
  `crime_description` char(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foiled_by` int(11) NOT NULL,
  PRIMARY KEY (`criminal_id`,`crime_date`),
  KEY `FKI_foiled_by` (`foiled_by`),
  CONSTRAINT `FK_cr_id` FOREIGN KEY (`criminal_id`) REFERENCES `characters` (`id_ch`),
  CONSTRAINT `FK_foiled_by` FOREIGN KEY (`foiled_by`) REFERENCES `characters` (`id_ch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supercrimes`
--

LOCK TABLES `supercrimes` WRITE;
/*!40000 ALTER TABLE `supercrimes` DISABLE KEYS */;
INSERT INTO `supercrimes` VALUES (191,'2000-04-21','Puppies kidnapping',38),(191,'2003-12-12','Game of thrones spoiling',38),(191,'2004-09-15','Adorable old woman snatching',132),(191,'2009-09-27','Puppies kidnapping',132),(191,'2011-03-15','Italian food forgery',38),(191,'2013-01-23','Unicorn Killing',38),(195,'2000-12-10','Adorable old woman snatching',38),(195,'2001-05-25','Leopard bleaching',38),(195,'2003-06-11','Italian food forgery',132),(198,'2002-03-15','WiFi stealing',152),(198,'2003-04-16','Puppies kidnapping',152),(198,'2004-10-29','Adorable old woman snatching',38),(198,'2007-06-04','Adorable old woman snatching',38),(198,'2007-09-11','Trolling',38),(205,'1998-06-05','Puppies kidnapping',38),(205,'1999-04-02','Adorable old woman snatching',38),(205,'2000-07-03','Puppies kidnapping',132),(205,'2001-06-07','Italian food forgery',38),(205,'2012-09-02','Adorable old woman snatching',132),(213,'1998-12-15','Game of thrones spoiling',107),(213,'1999-01-15','Trolling',107),(213,'2005-08-17','Adorable old woman snatching',38),(213,'2009-09-17','Unicorn Killing',169),(213,'2013-04-15','Garbage theft',67),(213,'2013-06-11','WiFi stealing',95),(213,'2013-08-24','Italian food forgery',122),(213,'2014-07-11','Unicorn Killing',172),(213,'2014-09-25','Trolling',122),(214,'1998-03-11','Leopard bleaching',35),(214,'2000-08-27','World invasion',35),(214,'2001-06-23','Italian food forgery',35),(214,'2001-12-28','Italian food forgery',125),(214,'2002-02-12','Unicorn Killing',165),(214,'2003-03-24','Adorable old woman snatching',103),(214,'2012-01-29','Italian food forgery',154),(214,'2015-01-19','Game of thrones spoiling',95),(232,'2001-03-11','Trolling',38),(232,'2004-01-15','WiFi stealing',38),(232,'2011-09-24','Leopard bleaching',132),(245,'1999-07-01','Game of thrones spoiling',35),(245,'2007-04-15','Trolling',35),(271,'2004-03-19','Unicorn Killing',51),(271,'2006-07-26','Garbage theft',51),(271,'2008-03-21','Puppies kidnapping',51),(272,'2004-04-23','Adorable old woman snatching',38),(272,'2005-05-24','Italian food forgery',38),(272,'2006-07-25','Trolling',132),(272,'2007-08-02','Italian food forgery',132),(272,'2007-09-23','WiFi stealing',152),(274,'1999-04-10','Illegal file sharing',38),(274,'2000-01-13','Game of thrones spoiling',152),(274,'2000-05-12','Trolling',38),(274,'2000-11-27','Leopard bleaching',125),(274,'2001-02-14','Adorable old woman snatching',152),(274,'2001-05-15','Illegal file sharing',38),(274,'2002-06-19','Trolling',38),(274,'2003-06-19','Leopard bleaching',38),(274,'2004-07-19','WiFi stealing',152),(274,'2005-08-23','Unicorn Killing',152),(274,'2006-08-28','Trolling',132),(274,'2015-10-26','World invasion',125),(285,'2001-01-15','Italian food forgery',39),(285,'2002-02-21','Unicorn Killing',39),(285,'2003-03-27','Adorable old woman snatching',39),(285,'2003-04-21','Illegal file sharing',39),(285,'2004-05-01','Italian food forgery',48),(285,'2005-07-12','Game of thrones spoiling',48),(286,'2003-09-21','Trolling',39),(286,'2004-08-11','WiFi stealing',39),(286,'2005-09-11','Italian food forgery',39),(286,'2007-10-22','Illegal file sharing',48),(286,'2007-11-30','World invasion',165),(286,'2008-09-05','Illegal file sharing',165),(286,'2008-10-27','Adorable old woman snatching',165),(287,'2001-04-23','Trolling',38),(287,'2005-05-04','Game of thrones spoiling',34),(287,'2011-03-24','Illegal file sharing',178),(287,'2011-11-01','WiFi stealing',178),(287,'2012-09-09','Leopard bleaching',165),(287,'2013-08-27','Trolling',172),(287,'2013-09-22','Puppies kidnapping',132),(287,'2014-03-27','Unicorn Killing',172),(287,'2014-09-29','Adorable old woman snatching',39),(287,'2015-05-11','Italian food forgery',178),(287,'2015-08-14','Illegal file sharing',95),(288,'2001-09-24','Puppies kidnapping',39),(288,'2002-07-28','Illegal file sharing',39),(288,'2003-11-09','Puppies kidnapping',97),(288,'2004-12-05','WiFi stealing',97),(288,'2010-09-28','Unicorn Killing',39),(288,'2011-07-27','Illegal file sharing',39),(288,'2012-03-03','Adorable old woman snatching',48),(288,'2012-06-16','Illegal file sharing',97),(288,'2012-07-21','Unicorn Killing',39),(288,'2013-08-23','Italian food forgery',39),(289,'2012-07-08','Illegal file sharing',39),(289,'2013-04-03','Puppies kidnapping',97),(289,'2014-08-08','Leopard bleaching',39),(298,'2006-06-05','WiFi stealing',121),(298,'2007-06-21','World invasion',35),(298,'2010-09-21','World invasion',35),(301,'2000-01-23','Unicorn Killing',49),(301,'2002-03-19','Adorable old woman snatching',49),(301,'2003-06-25','Illegal file sharing',49),(303,'2007-07-06','WiFi stealing',121),(303,'2011-06-16','World invasion',67),(303,'2012-03-10','Italian food forgery',49),(303,'2013-04-17','Trolling',49),(303,'2015-05-15','Illegal file sharing',67),(398,'2000-11-27','WiFi stealing',112),(398,'2001-03-21','Illegal file sharing',49),(398,'2002-04-22','Puppies kidnapping',49),(398,'2003-05-25','Adorable old woman snatching',49),(398,'2014-02-01','Italian food forgery',154),(398,'2014-06-26','Illegal file sharing',67),(405,'2000-07-27','Trolling',103),(405,'2000-09-28','Game of thrones spoiling',103),(405,'2012-10-29','Unicorn Killing',103),(407,'2003-11-30','Leopard bleaching',103),(407,'2004-12-09','Game of thrones spoiling',103),(407,'2005-01-10','Puppies kidnapping',103),(407,'2005-02-11','Adorable old woman snatching',103),(431,'2004-04-03','Illegal file sharing',34),(431,'2006-03-12','WiFi stealing',103),(431,'2007-04-13','Italian food forgery',103),(431,'2008-05-14','Illegal file sharing',103),(521,'2009-06-15','Garbage theft',107),(521,'2010-08-17','Unicorn Killing',107),(521,'2011-07-16','Leopard bleaching',107),(521,'2012-09-18','Adorable old woman snatching',107),(521,'2013-10-19','Garbage theft',107),(521,'2014-11-20','Italian food forgery',107),(523,'1999-01-22','World invasion',107),(523,'2000-02-23','Leopard bleaching',107),(523,'2015-12-21','Illegal file sharing',107),(537,'2001-03-24','Trolling',107),(537,'2002-04-25','WiFi stealing',107),(537,'2003-06-27','Game of thrones spoiling',107),(537,'2004-05-26','Italian food forgery',107),(621,'2003-03-02','Adorable old woman snatching',34),(621,'2005-07-28','Unicorn Killing',121),(621,'2006-08-29','Leopard bleaching',35),(621,'2006-08-30','Garbage theft',103),(621,'2007-09-01','Game of thrones spoiling',95),(621,'2012-07-23','Italian food forgery',122),(680,'2008-10-02','Trolling',95),(680,'2009-11-03','Leopard bleaching',95),(680,'2010-12-04','Unicorn Killing',95),(680,'2011-01-05','WiFi stealing',172),(723,'2000-07-10','Adorable old woman snatching',51),(723,'2012-02-06','Leopard bleaching',112),(723,'2013-03-07','World invasion',112),(723,'2013-04-08','Game of thrones spoiling',51),(723,'2014-05-09','Italian food forgery',34),(723,'2015-06-10','Trolling',182),(867,'2001-08-11','WiFi stealing',169),(867,'2002-08-12','Unicorn Killing',169),(867,'2003-09-13','Game of thrones spoiling',169),(867,'2004-10-14','Adorable old woman snatching',172),(874,'2005-11-15','Leopard bleaching',169),(874,'2006-12-16','Trolling',35),(874,'2007-01-17','Unicorn Killing',35),(892,'2008-02-18','Italian food forgery',169),(892,'2012-03-19','Game of thrones spoiling',169),(944,'2009-04-20','WiFi stealing',168),(944,'2010-05-21','Unicorn Killing',168),(944,'2011-06-22','Adorable old woman snatching',168);
/*!40000 ALTER TABLE `supercrimes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-11  4:50:03
