-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: imdb
-- ------------------------------------------------------
-- Server version	8.0.15
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "aka_name"
--

DROP TABLE IF EXISTS "aka_name";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "aka_name" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "person_id" int(11) NOT NULL,
  "name" text NOT NULL,
  "imdb_index" varchar(12) DEFAULT NULL,
  "name_pcode_cf" varchar(5) DEFAULT NULL,
  "name_pcode_nf" varchar(5) DEFAULT NULL,
  "surname_pcode" varchar(5) DEFAULT NULL,
  "md5sum" varchar(32) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "aka_name_idx_person" ("person_id"),
  KEY "aka_name_idx_name" ("name"(6)),
  KEY "aka_name_idx_pcodecf" ("name_pcode_cf"),
  KEY "aka_name_idx_pcodenf" ("name_pcode_nf"),
  KEY "aka_name_idx_pcode" ("surname_pcode"),
  KEY "aka_name_idx_md5" ("md5sum"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "aka_title"
--

DROP TABLE IF EXISTS "aka_title";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "aka_title" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "movie_id" int(11) NOT NULL,
  "title" text NOT NULL,
  "imdb_index" varchar(12) DEFAULT NULL,
  "kind_id" int(11) NOT NULL,
  "production_year" int(11) DEFAULT NULL,
  "phonetic_code" varchar(5) DEFAULT NULL,
  "episode_of_id" int(11) DEFAULT NULL,
  "season_nr" int(11) DEFAULT NULL,
  "episode_nr" int(11) DEFAULT NULL,
  "note" text,
  "md5sum" varchar(32) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "aka_title_idx_movieid" ("movie_id"),
  KEY "aka_title_idx_title" ("title"(10)),
  KEY "aka_title_idx_kindid" ("kind_id"),
  KEY "aka_title_idx_year" ("production_year"),
  KEY "aka_title_idx_pcode" ("phonetic_code"),
  KEY "aka_title_idx_epof" ("episode_of_id"),
  KEY "aka_title_idx_md5" ("md5sum"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "cast_info"
--

DROP TABLE IF EXISTS "cast_info";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "cast_info" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "person_id" int(11) NOT NULL,
  "movie_id" int(11) NOT NULL,
  "person_role_id" int(11) DEFAULT NULL,
  "note" text,
  "nr_order" int(11) DEFAULT NULL,
  "role_id" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "cast_info_idx_pid" ("person_id"),
  KEY "cast_info_idx_mid" ("movie_id"),
  KEY "cast_info_idx_cid" ("person_role_id"),
  KEY "cast_info_idx_rid" ("role_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "char_name"
--

DROP TABLE IF EXISTS "char_name";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "char_name" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "name" text NOT NULL,
  "imdb_index" varchar(12) DEFAULT NULL,
  "imdb_id" int(11) DEFAULT NULL,
  "name_pcode_nf" varchar(5) DEFAULT NULL,
  "surname_pcode" varchar(5) DEFAULT NULL,
  "md5sum" varchar(32) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "char_name_idx_name" ("name"(6)),
  KEY "char_name_idx_imdb_id" ("imdb_id"),
  KEY "char_name_idx_pcodenf" ("name_pcode_nf"),
  KEY "char_name_idx_pcode" ("surname_pcode"),
  KEY "char_name_idx_md5" ("md5sum"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "comp_cast_type"
--

DROP TABLE IF EXISTS "comp_cast_type";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "comp_cast_type" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "kind" varchar(32) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "comp_cast_type_kind" ("kind"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "company_name"
--

DROP TABLE IF EXISTS "company_name";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "company_name" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "name" text NOT NULL,
  "country_code" varchar(255) DEFAULT NULL,
  "imdb_id" int(11) DEFAULT NULL,
  "name_pcode_nf" varchar(5) DEFAULT NULL,
  "name_pcode_sf" varchar(5) DEFAULT NULL,
  "md5sum" varchar(32) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "company_name_idx_name" ("name"(6)),
  KEY "company_name_idx_ccode" ("country_code"(5)),
  KEY "company_name_idx_imdb_id" ("imdb_id"),
  KEY "company_name_idx_pcodenf" ("name_pcode_nf"),
  KEY "company_name_idx_pcodesf" ("name_pcode_sf"),
  KEY "company_name_idx_md5" ("md5sum"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "company_type"
--

DROP TABLE IF EXISTS "company_type";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "company_type" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "kind" varchar(32) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "company_type_kind" ("kind"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "complete_cast"
--

DROP TABLE IF EXISTS "complete_cast";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "complete_cast" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "movie_id" int(11) DEFAULT NULL,
  "subject_id" int(11) NOT NULL,
  "status_id" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "complete_cast_idx_mid" ("movie_id"),
  KEY "complete_cast_idx_sid" ("subject_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "info_type"
--

DROP TABLE IF EXISTS "info_type";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "info_type" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "info" varchar(32) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "info_type_info" ("info"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "keyword"
--

DROP TABLE IF EXISTS "keyword";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "keyword" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "keyword" text NOT NULL,
  "phonetic_code" varchar(5) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "keyword_idx_keyword" ("keyword"(5)),
  KEY "keyword_idx_pcode" ("phonetic_code")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "kind_type"
--

DROP TABLE IF EXISTS "kind_type";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "kind_type" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "kind" varchar(15) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "kind_type_kind" ("kind"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "link_type"
--

DROP TABLE IF EXISTS "link_type";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "link_type" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "link" varchar(32) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "link_type_link" ("link"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "movie_companies"
--

DROP TABLE IF EXISTS "movie_companies";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "movie_companies" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "movie_id" int(11) NOT NULL,
  "company_id" int(11) NOT NULL,
  "company_type_id" int(11) NOT NULL,
  "note" text,
  PRIMARY KEY ("id"),
  KEY "movie_companies_idx_mid" ("movie_id"),
  KEY "movie_companies_idx_cid" ("company_id"),
  KEY "movie_companies_idx_ctypeid" ("company_type_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "movie_info"
--

DROP TABLE IF EXISTS "movie_info";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "movie_info" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "movie_id" int(11) NOT NULL,
  "info_type_id" int(11) NOT NULL,
  "info" text NOT NULL,
  "note" text,
  PRIMARY KEY ("id"),
  KEY "movie_info_idx_mid" ("movie_id"),
  KEY "movie_info_idx_infotypeid" ("info_type_id"),
  KEY "movie_info_idx_info" ("info"(10))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "movie_keyword"
--

DROP TABLE IF EXISTS "movie_keyword";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "movie_keyword" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "movie_id" int(11) NOT NULL,
  "keyword_id" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "movie_keyword_idx_mid" ("movie_id"),
  KEY "movie_keyword_idx_keywordid" ("keyword_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "movie_link"
--

DROP TABLE IF EXISTS "movie_link";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "movie_link" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "movie_id" int(11) NOT NULL,
  "linked_movie_id" int(11) NOT NULL,
  "link_type_id" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "movie_link_idx_mid" ("movie_id"),
  KEY "movie_link_idx_lmid" ("linked_movie_id"),
  KEY "movie_link_idx_ltypeid" ("link_type_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "name"
--

DROP TABLE IF EXISTS "name";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "name" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "name" text NOT NULL,
  "imdb_index" varchar(12) DEFAULT NULL,
  "imdb_id" int(11) DEFAULT NULL,
  "gender" varchar(1) DEFAULT NULL,
  "name_pcode_cf" varchar(5) DEFAULT NULL,
  "name_pcode_nf" varchar(5) DEFAULT NULL,
  "surname_pcode" varchar(5) DEFAULT NULL,
  "md5sum" varchar(32) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "name_idx_name" ("name"(6)),
  KEY "name_idx_imdb_id" ("imdb_id"),
  KEY "name_idx_gender" ("gender"),
  KEY "name_idx_pcodecf" ("name_pcode_cf"),
  KEY "name_idx_pcodenf" ("name_pcode_nf"),
  KEY "name_idx_pcode" ("surname_pcode"),
  KEY "name_idx_md5" ("md5sum"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "person_info"
--

DROP TABLE IF EXISTS "person_info";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "person_info" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "person_id" int(11) NOT NULL,
  "info_type_id" int(11) NOT NULL,
  "info" text NOT NULL,
  "note" text,
  PRIMARY KEY ("id"),
  KEY "person_info_idx_pid" ("person_id"),
  KEY "person_info_idx_itypeid" ("info_type_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "role_type"
--

DROP TABLE IF EXISTS "role_type";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "role_type" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "role" varchar(32) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "role_type_role" ("role"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "title"
--

DROP TABLE IF EXISTS "title";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE "title" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "title" mediumtext NOT NULL,
  "imdb_index" varchar(12) DEFAULT NULL,
  "kind_id" int(11) NOT NULL,
  "production_year" int(11) DEFAULT NULL,
  "imdb_id" int(11) DEFAULT NULL,
  "phonetic_code" varchar(5) DEFAULT NULL,
  "episode_of_id" int(11) DEFAULT NULL,
  "season_nr" int(11) DEFAULT NULL,
  "episode_nr" int(11) DEFAULT NULL,
  "series_years" varchar(49) DEFAULT NULL,
  "md5sum" varchar(32) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "title_idx_title" ("title"(10)),
  KEY "title_idx_kindid" ("kind_id"),
  KEY "title_idx_year" ("production_year"),
  KEY "title_idx_imdb_id" ("imdb_id"),
  KEY "title_idx_pcode" ("phonetic_code"),
  KEY "title_idx_epof" ("episode_of_id"),
  KEY "title_idx_season_nr" ("season_nr"),
  KEY "title_idx_episode_nr" ("episode_nr"),
  KEY "title_idx_md5" ("md5sum"(5))
);
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-07 16:58:01
