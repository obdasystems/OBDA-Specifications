CREATE TABLE tb_affiliated_writers (
  wr_code int NOT NULL,
  wr_name varchar DEFAULT NULL,
  PRIMARY KEY (wr_code)
) ;

INSERT INTO tb_affiliated_writers VALUES (23,'AJ Scudiere'),(25,'Anne Rainey'),(27,'Barbara Delinsky'),(34,'Chas Wienke'),(43,'D.C. Ford'),(45,'D. E. Knobbe'),(47,'David Cogswell'),(76,'Douglas Clegg'),(78,'Iris Johanesen'),(98,'Jan Groft'),(101,'Jeff Havens'),(102,'Kate Pearce'),(123,'L.C. Higgs'),(127,'Melissa Mayhue'),(134,'Mike Green'),(145,'S. C. Carr'),(156,'Shirley Tallman'),(167,'Stacy Choen'),(178,'Susan Lyons'),(189,'Tim Davys'),(234,'Tracy Richardson'),(245,'William Boyd'),(300,NULL),(301,NULL);

CREATE TABLE tb_authors (
  bk_code int NOT NULL,
  wr_id int NOT NULL,
  PRIMARY KEY (bk_code,wr_id)
) ;
INSERT INTO tb_authors VALUES (1,189),(2,123),(3,45),(4,76),(5,78),(6,156),(7,189),(8,25),(9,47),(10,123),(11,43),(16,245),(17,127),(18,234),(19,76),(20,78),(21,27),(22,167),(23,34),(24,134),(30,23),(31,25),(32,24),(35,156),(36,47);
CREATE TABLE tb_bk_gen (
  id_bk int NOT NULL,
  gen_name varchar NOT NULL DEFAULT '',
  PRIMARY KEY (id_bk,gen_name)
) ;
INSERT INTO tb_bk_gen VALUES (3,'Fiction'),(4,'Horror'),(5,'Mystery'),(6,'Mystery'),(7,'Fantasy'),(8,'Romance'),(9,'Biographies'),(9,'History'),(9,'Politics'),(10,'Historical'),(10,'Novels'),(11,'Self Help'),(12,'Fantasy'),(12,'Fiction'),(12,'Horror'),(12,'Humor'),(13,'Fantasy'),(13,'Horror'),(14,'Cultural'),(14,'Music'),(15,'Science'),(16,'Mystery'),(17,'Romance'),(18,'Children'),(19,'Horror'),(20,'Horror'),(21,'Romance'),(22,'Fiction'),(23,'History'),(24,'Fiction'),(33,'Fiction');
CREATE TABLE tb_books (
  bk_code int NOT NULL,
  bk_title varchar DEFAULT NULL,
  bk_type char NOT NULL DEFAULT 'X',
  PRIMARY KEY (bk_code)
) ;
INSERT INTO tb_books VALUES (1,'Resonance','P'),(2,'As we Grieve','P'),(3,'Runaway Storm','P'),(4,'Neverland','P'),(5,'Eight Days to Live','P'),(6,'Scandal on Rincon Hill','P'),(7,'Amberville','P'),(8,'Some Like it Rough','P'),(9,'Zinn for Beginners','P'),(10,'Here Burns My Candle','P'),(11,'How to get fired','P'),(12,'The Twelve Little Hitlers','P'),(13,'The story of Eight the sparrow','P'),(14,'The social impact of Christina Oats songs','P'),(15,'Engineering analysis of Mazzinga','P'),(16,'Ordinary Thunderstorms','A'),(17,'A Highlander\'s Homecoming','A'),(18,'Indian Summer','A'),(19,'A Dark Circus','A'),(20,'City of Stars','A'),(21,'Not My Daughter','E'),(22,'The Last Train From Paris','E'),(23,'Our Boomer Years','E'),(24,'Path of Thunder','E'),(34,NULL,'P'),(35,NULL,'E'),(36,NULL,'E');
CREATE TABLE tb_edition (
  ed_code int NOT NULL,
  ed_type char NOT NULL,
  pub_date date DEFAULT NULL,
  n_edt int DEFAULT NULL,
  editor int NOT NULL,
  bk_id int NOT NULL,
  PRIMARY KEY (ed_code)
) ;
INSERT INTO tb_edition VALUES (10,'X','2000-09-23',1,34,24),(12,'E','2010-02-18',1,76,1),(21,'E','2000-02-12',1,76,2),(23,'S','2004-01-02',1,98,3),(32,'S','2009-12-04',1,98,4),(34,'E','2000-07-06',1,23,5),(39,'X','2007-02-03',2,32,20),(40,'X','2005-03-01',1,32,21),(43,'X','2001-05-14',1,23,6),(45,'S','2005-05-05',1,34,7),(50,'X','2001-12-03',1,87,22),(54,'X','2008-09-11',1,54,8),(56,'S','2005-02-07',1,12,9),(65,'E','2007-05-09',1,32,10),(67,'X','2004-11-03',1,87,11),(70,'X','2009-03-11',1,65,23),(73,'X','2002-04-01',1,21,17),(74,'X','2003-11-03',1,87,18),(76,'X','2003-12-06',1,65,12),(78,'S','2004-05-03',1,21,15),(82,'X','2000-11-09',1,45,16),(87,'S','2007-05-09',2,34,7),(89,'S','2010-05-01',2,87,2),(90,'E','2006-05-09',2,23,5),(91,'X','2009-04-18',3,12,6),(92,'E','2003-01-12',2,12,6),(98,'E','2010-02-01',2,32,10),(99,'X','2006-04-01',1,23,19);
CREATE TABLE tb_editor (
  ed_code int NOT NULL,
  ed_name varchar DEFAULT NULL,
  PRIMARY KEY (ed_code)
) ;
INSERT INTO tb_editor VALUES (12,'Paul Golden'),(21,'Pat Red'),(23,'Simon Frost'),(32,'Melody Albert'),(34,'Valerio Nin'),(45,'Victoria Rolls'),(54,'Karl Forman'),(65,'Fill Luckett'),(76,'Eric Jonnes'),(87,'Bill Sugar'),(98,'Bill Green');
CREATE TABLE tb_emerge_authors (
  bk_code int NOT NULL,
  wr_id int NOT NULL,
  PRIMARY KEY (bk_code,wr_id)
) ;
INSERT INTO tb_emerge_authors VALUES (14,267),(14,278),(15,289);
CREATE TABLE tb_on_prob_wr (
  wr_code int NOT NULL,
  wr_name varchar DEFAULT NULL,
  PRIMARY KEY (wr_code)
) ;
INSERT INTO tb_on_prob_wr VALUES (267,'Peter Griffin'),(278,'Homer Simpson'),(289,'Jon Stewart');

CREATE TABLE tb_employees
(
  employee_id int,
  vat varchar,
  profession int,
  employee_name varchar,
  retired bool
);

INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (23, null, 'AUTHOR', 'AJ Scudiere', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (25, null, 'AUTHOR', 'Anne Rainey', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (27, null, 'AUTHOR', 'Barbara Delinsky', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (34, null, 'AUTHOR', 'Chas Wienke', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (43, null, 'AUTHOR', 'D.C. Ford', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (45, null, 'AUTHOR', 'D. E. Knobbe', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (47, 'DVDCDS', 'AUTHOR', 'David Cogswell', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (76, 'DLSCLG', 'AUTHOR', 'Douglas Clegg', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (78, null, 'AUTHOR', 'Iris Johanesen', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (98, 'JANGRO', 'AUTHOR', 'Jan Groft', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (101, 'JFFHVN', 'AUTHOR', 'Jeff Havens', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (102, 'KATPRC', 'AUTHOR', 'Kate Pearce', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (123, null, 'AUTHOR', 'L.C. Higgs', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (127, null, 'AUTHOR', 'Melissa Mayhue', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (134, null, 'AUTHOR', 'Mike Green', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (145, null, 'AUTHOR', 'S. C. Carr', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (156, null, 'AUTHOR', 'Shirley Tallman', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (167, null, 'AUTHOR', 'Stacy Choen', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (178, null, 'AUTHOR', 'Susan Lyons', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (189, null, 'AUTHOR', 'Tim Davys', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (234, null, 'AUTHOR', 'Tracy Richardson', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (245, null, 'AUTHOR', 'William Boyd', 1);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (300, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (301, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (189, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (123, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (45, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (76, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (78, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (156, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (189, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (25, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (47, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (123, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (43, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (245, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (127, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (234, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (76, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (78, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (27, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (167, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (34, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (134, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (23, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (25, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (24, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (156, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (47, null, 'AUTHOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (133, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (176, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (176, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (198, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (198, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (125, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (132, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (132, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (125, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (133, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (187, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (154, 'MRCGCM', 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (112, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (132, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (187, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (165, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (121, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (187, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (165, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (121, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (144, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (133, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (187, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (125, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (112, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (112, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (132, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (125, null, 'EDITOR', null, null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (112, 'PALGLD', 'EDITOR', 'Paul Golden', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (121, 'PATRED', 'EDITOR', 'Pat Red', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (125, 'SMNFRS', 'EDITOR', 'Simon Frost', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (132, null, 'EDITOR', 'Melody Albert', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (133, null, 'EDITOR', 'Valerio Nin', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (144, null, 'EDITOR', 'Victoria Rolls', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (154, null, 'EDITOR', 'Karl Forman', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (165, null, 'EDITOR', 'Fill Luckett', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (176, null, 'EDITOR', 'Eric Jonnes', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (187, null, 'EDITOR', 'Bill Sugar', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (198, null, 'EDITOR', 'Bill Green', null);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (null, 'LSAMCG', 'SECRETARY', 'Lisa McGill', 0);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (null, 'JHNSKW', 'SECRETARY', 'John Skow', 0);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (null, 'MCHJOD', 'SECRETARY', 'Micheal Joody', 1);
INSERT INTO books.tb_employees (employee_id, vat, profession, employee_name, retired) VALUES (null, 'BRDBRD', 'MANAGER', 'Bridgitte Bird', 0);
