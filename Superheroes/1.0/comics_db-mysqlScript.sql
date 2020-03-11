CREATE DATABASE characters_db;

CREATE TABLE abilities (
id_ch integer NOT NULL,
superpower boolean DEFAULT false NOT NULL,
ability_name varchar(50) NOT NULL
);

CREATE TABLE characters (
id_ch integer NOT NULL,
name varchar(50) NOT NULL,
city varchar(50),
planet_of_origin varchar(50),
species varchar(50)
);

CREATE TABLE supercrimes (
criminal_id integer NOT NULL,
crime_date date NOT NULL,
crime_description character(150),
foiled_by integer NOT NULL
);

insert into abilities(id_ch,superpower,ability_name)
values (214,false,'Genius-level intellect'),
(112,false,'High-tech equipment'),
(34,true,'Immortality'),
(34,true,'Reality warping'),
(214,false,'High-tech equipment'),
(35,true,'Flight'),
(35,true,'Heat vision'),
(35,true,'Freezing breath'),
(35,false,'Enhanced intelligence'),
(35,true,'Invulnerability'),
(38,false,'Genius-level intellect'),
(48,false,'High-tech equipment'),
(165,false,'High-tech equipment'),
(38,false,'Master detective'),
(152,false,'High-tech equipment'),
(39,false,'Intelligent tactician'),
(39,false,'Master archer'),
(39,false,'Highly skilled martial artist'),
(39,false,'Highly skilled acrobatic and athletic'),
(39,false,'High-tech equipment'),
(107,false,'Time travel'),
(168,true,'Longevity'),
(48,false,'Master archer'),
(48,false,'Highly skilled martial artist'),
(169,true,'Telepathy'),
(67,true,'Electricity control'),
(67,true,'Superstrength'),
(95,true,'Superstrength'),
(95,true,'Invulnerability'),
(95,true,'Flight'),
(97,false,'Highly skilled martial artist'),
(97,true,'Destructive ultrasonic scream'),
(35,true,'Superstrength'),
(97,false,'Highly skilled acrobatic and athletic'),
(103,true,'Superstrength'),
(103,true,'Longevity'),
(103,true,'Flight'),
(38,false,'High-tech equipment'),
(107,true,'Superspeed'),
(112,true,'Flight'),
(112,true,'Invulnerability'),
(112,true,'Superstrength'),
(112,false,'Agility'),
(112,true,'Technopathy'),
(121,true,'Heat vision'),
(121,true,'Flight'),
(121,true,'Superstrength'),
(121,true,'Freezing breath'),
(121,true,'Invulnerability'),
(125,false,'Agility'),
(125,true,'Density control'),
(125,true,'Flight'),
(125,true,'Superstrength'),
(125,true,'Telepathy'),
(132,false,'Genius-level intellect'),
(152,false,'Highly skilled acrobatic and athletic'),
(152,false,'Highly skilled martial artist'),
(154,true,'Invulnerability'),
(154,true,'Superstrength'),
(165,false,'Master archer'),
(168,false,'Highly skilled martial artist'),
(168,false,'Master detective'),
(168,false,'Genius-level intellect'),
(169,true,'Superstrength'),
(169,true,'Flight'),
(49,true,'Telepathy'),
(169,true,'Invisibility'),
(169,true,'Intangibility'),
(169,true,'Telekinesis'),
(172,true,'Superstrength'),
(172,true,'Flight'),
(172,true,'Telepathy'),
(172,true,'Intangibility'),
(172,true,'Telekinesis'),
(165,false,'Agility'),
(34,true,'Magic'),
(38,false,'Master martial artist'),
(95,true,'Heat vision'),
(103,true,'Magic equipment'),
(103,false,'Master martial artist'),
(107,true,'Vibration control'),
(122,true,'Animal control'),
(125,true,'Animal control'),
(132,false,'Master martial artist'),
(132,false,'Master acrobat'),
(132,false,'Master detective'),
(154,true,'Density control'),
(49,true,'Superstrength'),
(49,true,'Invulnerability'),
(38,false,'Intelligent tactician'),
(122,true,'Invulnerability'),
(49,true,'Sub-mariner'),
(67,true,'Sub-mariner'),
(178,true,'Flight'),
(178,true,'Invulnerability'),
(178,false,'Agility'),
(178,true,'Blast power'),
(178,true,'Superstrength'),
(182,true,'Flight'),
(182,true,'Invulnerability'),
(182,true,'Longevity'),
(182,true,'Superstrength'),
(182,true,'Blast power'),
(232,false,'Agility'),
(232,true,'Death touch'),
(232,true,'Plant control'),
(245,true,'Flight'),
(191,false,'Agility'),
(191,true,'Longevity'),
(245,true,'Superstrength'),
(195,true,'Superstrength'),
(195,true,'Longevity'),
(195,true,'Ice control'),
(195,true,'Blast power'),
(198,false,'Weapon master'),
(191,false,'Weapon master'),
(198,true,'Emotion control'),
(205,false,'Agility'),
(205,false,'Weapon master'),
(205,false,'Highly skilled martial artist'),
(205,true,'Superstrength'),
(287,false,'Weapon master'),
(213,true,'Invulnerability'),
(213,true,'Superstrength'),
(122,true,'Sub-mariner'),
(245,true,'Invulnerability'),
(213,false,'Weapon master'),
(245,true,'Heat vision'),
(271,true,'Superstrength'),
(271,true,'Flight'),
(271,true,'Blast power'),
(272,false,'Agility'),
(272,false,'Weapon master'),
(274,false,'Agility'),
(274,false,'Weapon master'),
(285,false,'Weapon master'),
(285,false,'Agility'),
(285,false,'Master archer'),
(286,true,'Flight'),
(286,true,'Hypnosis'),
(286,false,'Highly skilled martial artist'),
(287,false,'Agility'),
(287,true,'Superstrength'),
(287,false,'Highly skilled martial artist'),
(288,false,'Agility'),
(288,false,'Weapon master'),
(288,false,'Master archer'),
(289,false,'Weapon master'),
(289,false,'Marksmanship'),
(298,true,'Flight'),
(298,true,'Superstrength'),
(298,true,'Invulnerability'),
(298,true,'Telekinesis'),
(298,true,'Heat vision'),
(398,false,'Weapon master'),
(301,false,'Agility'),
(301,false,'Weapon master'),
(303,true,'Superstrength'),
(303,true,'Invulnerability'),
(303,true,'Sub-mariner'),
(398,false,'Agility'),
(405,true,'Animal control'),
(405,true,'Invulnerability'),
(680,true,'Flight'),
(405,true,'Divine powers'),
(407,true,'Hypnosis'),
(407,true,'Telepathy'),
(431,true,'Animal control'),
(431,true,'Divine powers'),
(431,true,'Flight'),
(431,true,'Longevity'),
(521,true,'Flight'),
(521,true,'Weather control'),
(521,true,'Ice control'),
(680,false,'Agility'),
(680,true,'Superstrength'),
(680,true,'Invulnerability'),
(680,true,'Heat vision'),
(723,true,'Blast power'),
(723,true,'Invulnerability'),
(723,true,'Superstrength'),
(867,true,'Density control'),
(867,true,'Invulnerability'),
(867,true,'Telepathy'),
(198,false,'High-tech equipment'),
(301,false,'High-tech equipment'),
(213,true,'Immortality'),
(867,true,'Flight'),
(874,true,'Invulnerability'),
(874,true,'Superstrength'),
(874,true,'Flight'),
(874,true,'Blast power'),
(892,true,'Flight'),
(892,true,'Invulnerability'),
(892,true,'Telepathy'),
(944,false,'Genius-level intellect'),
(154,true,'Electricity control'),
(398,false,'High-tech equipment'),
(892,true,'Superstrength'),
(723,false,'Agility'),
(51,true,'Flight'),
(51,true,'Blast power'),
(51,true,'Invulnerability'),
(51,true,'Density control'),
(51,true,'Force field');

insert into characters(id_ch,name,city,planet_of_origin,species)
values(121,'Supergirl','Metropolis','Krypton','Kryptonian'),
(214,'Lex Lutor','Metropolis',NULL,'Human'),
(125,'Vixen',NULL,NULL,'Human'),
(35,'Superman','Metropolis','Krypton','Kryptonian'),
(38,'Batman','Gotham City',NULL,'Human'),
(39,'Green Arrow','Star City',NULL,'Human'),
(48,'Speedy','Star City',NULL,'Human'),
(49,'Aquaman','Atlantis',NULL,'Atlantean'),
(67,'Aqualad','Atlantis',NULL,'Atlantean'),
(122,'Animal Man','San Diego',NULL,'Human'),
(95,'Superboy','Smallville','Krypton','Kryptonian'),
(103,'Wonder Woman',NULL,NULL,'Amazon'),
(107,'Flash','Central City',NULL,'Human'),
(112,'Cyborg','San Francisco',NULL,'Human'),
(169,'Martian Manhunter',NULL,'Mars','Martian'),
(34,'Zatanna',NULL,NULL,'Human'),
(97,'Black Canary','Gotham City',NULL,'Metahuman'),
(132,'Nightwing','Gotham City',NULL,'Human'),
(191,'Ras Al Ghul',NULL,NULL,'Human'),
(152,'Batwoman','Gotham City',NULL,'Human'),
(154,'Plastic Man',NULL,NULL,'Human'),
(165,'Red Arrow','New York City',NULL,'Human'),
(168,'Question','Hub City',NULL,'Human'),
(874,'Black Adam','New York City',NULL,'Human'),
(172,'Miss Martian','San Francisco','Mars','Martian'),
(195,'Mr. Freeze','Gotham City',NULL,'Human'),
(178,'Starfire','New York City','Tamaran','Tamaranean'),
(198,'Scarecrow','Gotham City',NULL,'Human'),
(205,'Bane','Santa Prisca',NULL,'Human'),
(213,'Vandal Savage',NULL,NULL,'Human'),
(232,'Poison Ivy','Seattle',NULL,'Human'),
(245,'General Zod',NULL,'Krypton','Kryptonian'),
(287,'Deathstroke',NULL,NULL,'Human'),
(298,'Darkseid',NULL,'Apokolips','New God'),
(271,'Sinestro',NULL,'Korugar','Korugaran'),
(272,'Two-Face','Gotham City',NULL,'Human'),
(537,'Reverse-Flash','Central Cityplex',NULL,'Human'),
(182,'Icon','New York City','Terminus','Terminan'),
(274,'The Joker','Gotham City',NULL,'Human'),
(303,'King Shark','Honolulu',NULL,'Animal'),
(285,'Komodo','Star City',NULL,'Human'),
(286,'Count Vertigo','Star City',NULL,'Human'),
(288,'Merlyn','Star City',NULL,'Human'),
(289,'Cupid','Star City',NULL,'Human'),
(301,'Fisherman',NULL,NULL,'Human'),
(51,'Green Lantern',NULL,NULL,'Human'),
(405,'Strife','Olympus',NULL,'Olympian'),
(407,'Doctor Psycho',NULL,NULL,'Human'),
(431,'Circe','Aeaea',NULL,'Demigod'),
(521,'Weather Wizard','Central City',NULL,'Human'),
(523,'Savitar','Tibet',NULL,'Human'),
(621,'Anti-Monitor',NULL,NULL,'God/Eternal'),
(680,'Black Zero','Metropolis',NULL,'Metahuman/clone'),
(567,'Trickster','Keystone City',NULL,'Human'),
(398,'Black Manta',NULL,NULL,'Human'),
(723,'Grail',NULL,NULL,'Amazon'),
(867,'Amonn Amokk',NULL,'Mars','White Martian'),
(892,'A-Mortal',NULL,'Mars','White Martian'),
(944,'Jeremiah Hatch','Hub City',NULL,'Human');

insert into supercrimes
values(271,'2006-07-26','Garbage theft',51),
(287,'2013-09-22','Puppies kidnapping',132),
(191,'2000-04-21','Puppies kidnapping',38),
(205,'2000-07-03','Puppies kidnapping',132),
(272,'2005-05-24','Italian food forgery',38),
(198,'2007-06-04','Adorable old woman snatching',38),
(303,'2012-03-10','Italian food forgery',49),
(523,'2015-12-21','Illegal file sharing',107),
(521,'2010-08-17','Unicorn Killing',107),
(621,'2006-08-29','Leopard bleaching',35),
(245,'2007-04-15','Trolling',35),
(301,'2003-06-25','Illegal file sharing',49),
(521,'2012-09-18','Adorable old woman snatching',107),
(398,'2003-05-25','Adorable old woman snatching',49),
(298,'2007-06-21','World invasion',35),
(286,'2007-10-22','Illegal file sharing',48),
(286,'2003-09-21','Trolling',39),
(286,'2007-11-30','World invasion',165),
(301,'2002-03-19','Adorable old woman snatching',49),
(298,'2010-09-21','World invasion',35),
(287,'2014-09-29','Adorable old woman snatching',39),
(286,'2008-10-27','Adorable old woman snatching',165),
(274,'2001-02-14','Adorable old woman snatching',152),
(680,'2011-01-05','WiFi stealing',172),
(537,'2002-04-25','WiFi stealing',107),
(431,'2006-03-12','WiFi stealing',103),
(398,'2000-11-27','WiFi stealing',112),
(287,'2011-11-01','WiFi stealing',178),
(286,'2004-08-11','WiFi stealing',39),
(274,'2004-07-19','WiFi stealing',152),
(272,'2007-09-23','WiFi stealing',152),
(723,'2013-03-07','World invasion',112),
(523,'1999-01-22','World invasion',107),
(303,'2011-06-16','World invasion',67),
(680,'2010-12-04','Unicorn Killing',95),
(214,'2002-02-12','Unicorn Killing',165),
(398,'2002-04-22','Puppies kidnapping',49),
(289,'2013-04-03','Puppies kidnapping',97),
(288,'2001-09-24','Puppies kidnapping',39),
(198,'2003-04-16','Puppies kidnapping',152),
(271,'2008-03-21','Puppies kidnapping',51),
(195,'2000-12-10','Adorable old woman snatching',38),
(214,'2012-01-29','Italian food forgery',154),
(272,'2004-04-23','Adorable old woman snatching',38),
(287,'2013-08-27','Trolling',172),
(274,'1999-04-10','Illegal file sharing',38),
(198,'2007-09-11','Trolling',38),
(874,'2007-01-17','Unicorn Killing',35),
(213,'2014-09-25','Trolling',122),
(274,'2000-05-12','Trolling',38),
(205,'2012-09-02','Adorable old woman snatching',132),
(274,'2002-06-19','Trolling',38),
(232,'2001-03-11','Trolling',38),
(274,'2006-08-28','Trolling',132),
(874,'2006-12-16','Trolling',35),
(407,'2004-12-09','Game of thrones spoiling',103),
(213,'2013-08-24','Italian food forgery',122),
(274,'2003-06-19','Leopard bleaching',38),
(867,'2001-08-11','WiFi stealing',169),
(944,'2011-06-22','Adorable old woman snatching',168),
(867,'2004-10-14','Adorable old woman snatching',172),
(723,'2000-07-10','Adorable old woman snatching',51),
(621,'2003-03-02','Adorable old woman snatching',34),
(407,'2005-02-11','Adorable old woman snatching',103),
(298,'2006-06-05','WiFi stealing',121),
(288,'2012-03-03','Adorable old woman snatching',48),
(285,'2003-03-27','Adorable old woman snatching',39),
(288,'2004-12-05','WiFi stealing',97),
(232,'2004-01-15','WiFi stealing',38),
(198,'2002-03-15','WiFi stealing',152),
(274,'2015-10-26','World invasion',125),
(191,'2013-01-23','Unicorn Killing',38),
(213,'2009-09-17','Unicorn Killing',169),
(213,'2014-07-11','Unicorn Killing',172),
(271,'2004-03-19','Unicorn Killing',51),
(301,'2000-01-23','Unicorn Killing',49),
(944,'2010-05-21','Unicorn Killing',168),
(867,'2002-08-12','Unicorn Killing',169),
(288,'2010-09-28','Unicorn Killing',39),
(288,'2012-07-21','Unicorn Killing',39),
(213,'2013-04-15','Garbage theft',67),
(521,'2009-06-15','Garbage theft',107),
(521,'2013-10-19','Garbage theft',107),
(621,'2006-08-30','Garbage theft',103),
(407,'2005-01-10','Puppies kidnapping',103),
(288,'2003-11-09','Puppies kidnapping',97),
(191,'2009-09-27','Puppies kidnapping',132),
(191,'2004-09-15','Adorable old woman snatching',132),
(198,'2004-10-29','Adorable old woman snatching',38),
(205,'1999-04-02','Adorable old woman snatching',38),
(213,'2005-08-17','Adorable old woman snatching',38),
(537,'2001-03-24','Trolling',107),
(272,'2006-07-25','Trolling',132),
(287,'2001-04-23','Trolling',38),
(289,'2014-08-08','Leopard bleaching',39),
(274,'2000-01-13','Game of thrones spoiling',152),
(214,'1998-03-11','Leopard bleaching',35),
(723,'2015-06-10','Trolling',182),
(680,'2008-10-02','Trolling',95),
(288,'2013-08-23','Italian food forgery',39),
(214,'2003-03-24','Adorable old woman snatching',103),
(944,'2009-04-20','WiFi stealing',168),
(213,'2013-06-11','WiFi stealing',95),
(214,'2000-08-27','World invasion',35),
(213,'1999-01-15','Trolling',107),
(405,'2000-07-27','Trolling',103),
(303,'2013-04-17','Trolling',49),
(191,'2011-03-15','Italian food forgery',38),
(195,'2003-06-11','Italian food forgery',132),
(205,'2001-06-07','Italian food forgery',38),
(214,'2001-06-23','Italian food forgery',35),
(892,'2008-02-18','Italian food forgery',169),
(723,'2014-05-09','Italian food forgery',34),
(621,'2012-07-23','Italian food forgery',122),
(537,'2004-05-26','Italian food forgery',107),
(521,'2014-11-20','Italian food forgery',107),
(431,'2007-04-13','Italian food forgery',103),
(398,'2014-02-01','Italian food forgery',154),
(287,'2015-05-11','Italian food forgery',178),
(286,'2005-09-11','Italian food forgery',39),
(285,'2001-01-15','Italian food forgery',39),
(272,'2007-08-02','Italian food forgery',132),
(214,'2001-12-28','Italian food forgery',125),
(285,'2004-05-01','Italian food forgery',48),
(621,'2005-07-28','Unicorn Killing',121),
(405,'2012-10-29','Unicorn Killing',103),
(287,'2014-03-27','Unicorn Killing',172),
(285,'2002-02-21','Unicorn Killing',39),
(274,'2005-08-23','Unicorn Killing',152),
(303,'2007-07-06','WiFi stealing',121),
(874,'2005-11-15','Leopard bleaching',169),
(723,'2012-02-06','Leopard bleaching',112),
(680,'2009-11-03','Leopard bleaching',95),
(523,'2000-02-23','Leopard bleaching',107),
(521,'2011-07-16','Leopard bleaching',107),
(407,'2003-11-30','Leopard bleaching',103),
(287,'2012-09-09','Leopard bleaching',165),
(274,'2000-11-27','Leopard bleaching',125),
(232,'2011-09-24','Leopard bleaching',132),
(195,'2001-05-25','Leopard bleaching',38),
(431,'2008-05-14','Illegal file sharing',103),
(431,'2004-04-03','Illegal file sharing',34),
(398,'2014-06-26','Illegal file sharing',67),
(398,'2001-03-21','Illegal file sharing',49),
(303,'2015-05-15','Illegal file sharing',67),
(289,'2012-07-08','Illegal file sharing',39),
(288,'2012-06-16','Illegal file sharing',97),
(288,'2011-07-27','Illegal file sharing',39),
(288,'2002-07-28','Illegal file sharing',39),
(287,'2015-08-14','Illegal file sharing',95),
(287,'2011-03-24','Illegal file sharing',178),
(286,'2008-09-05','Illegal file sharing',165),
(285,'2003-04-21','Illegal file sharing',39),
(274,'2001-05-15','Illegal file sharing',38),
(205,'1998-06-05','Puppies kidnapping',38),
(723,'2013-04-08','Game of thrones spoiling',51),
(621,'2007-09-01','Game of thrones spoiling',95),
(892,'2012-03-19','Game of thrones spoiling',169),
(867,'2003-09-13','Game of thrones spoiling',169),
(287,'2005-05-04','Game of thrones spoiling',34),
(285,'2005-07-12','Game of thrones spoiling',48),
(245,'1999-07-01','Game of thrones spoiling',35),
(214,'2015-01-19','Game of thrones spoiling',95),
(537,'2003-06-27','Game of thrones spoiling',107),
(405,'2000-09-28','Game of thrones spoiling',103),
(213,'1998-12-15','Game of thrones spoiling',107),
(191,'2003-12-12','Game of thrones spoiling',38);


ALTER TABLE  abilities
ADD CONSTRAINT PK_Ab PRIMARY KEY (id_ch, ability_name);

ALTER TABLE  characters
ADD CONSTRAINT PK_c PRIMARY KEY (id_ch);

ALTER TABLE  supercrimes
ADD CONSTRAINT PK_cr PRIMARY KEY (criminal_id, crime_date);

CREATE INDEX FKI_foiled_by ON supercrimes(foiled_by);

ALTER TABLE  abilities
ADD CONSTRAINT FK_ch FOREIGN KEY (id_ch) REFERENCES characters(id_ch);

ALTER TABLE  supercrimes
ADD CONSTRAINT FK_cr_id FOREIGN KEY (criminal_id) REFERENCES characters(id_ch);

ALTER TABLE  supercrimes
ADD CONSTRAINT FK_foiled_by FOREIGN KEY (foiled_by) REFERENCES characters(id_ch);