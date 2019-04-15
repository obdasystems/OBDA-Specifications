--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: characters_db; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA characters_db;


ALTER SCHEMA characters_db OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = characters_db, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: abilities; Type: TABLE; Schema: characters_db; Owner: postgres
--

CREATE TABLE abilities (
id_ch integer NOT NULL,
superpower boolean DEFAULT false NOT NULL,
ability_name varchar(50) NOT NULL
);


ALTER TABLE abilities OWNER TO postgres;

--
-- Name: characters; Type: TABLE; Schema: characters_db; Owner: postgres
--

CREATE TABLE characters (
id_ch integer NOT NULL,
name varchar(50) NOT NULL,
city varchar(50),
planet_of_origin varchar(50),
species varchar(50)
);


ALTER TABLE characters OWNER TO postgres;

--
-- Name: supercrimes; Type: TABLE; Schema: characters_db; Owner: postgres
--

CREATE TABLE supercrimes (
criminal_id integer NOT NULL,
crime_date date NOT NULL,
crime_description character(150),
foiled_by integer NOT NULL
);


ALTER TABLE supercrimes OWNER TO postgres;

--
-- Data for Name: abilities; Type: TABLE DATA; Schema: characters_db; Owner: postgres
--

COPY abilities (id_ch, superpower, ability_name) FROM stdin;
214	f	Genius-level intellect
112	f	High-tech equipment
34	t	Immortality
34	t	Reality warping
214	f	High-tech equipment
35	t	Flight
35	t	Heat vision
35	t	Freezing breath
35	f	Enhanced intelligence
35	t	Invulnerability
38	f	Genius-level intellect
48	f	High-tech equipment
165	f	High-tech equipment
38	f	Master detective
152	f	High-tech equipment
39	f	Intelligent tactician
39	f	Master archer
39	f	Highly skilled martial artist
39	f	Highly skilled acrobatic and athletic
39	f	High-tech equipment
107	f	Time travel
168	t	Longevity
48	f	Master archer
48	f	Highly skilled martial artist
169	t	Telepathy
67	t	Electricity control
67	t	Superstrength
95	t	Superstrength
95	t	Invulnerability
95	t	Flight
97	f	Highly skilled martial artist
97	t	Destructive ultrasonic scream
35	t	Superstrength
97	f	Highly skilled acrobatic and athletic
103	t	Superstrength
103	t	Longevity
103	t	Flight
38	f	High-tech equipment
107	t	Superspeed
112	t	Flight
112	t	Invulnerability
112	t	Superstrength
112	f	Agility
112	t	Technopathy
121	t	Heat vision
121	t	Flight
121	t	Superstrength
121	t	Freezing breath
121	t	Invulnerability
125	f	Agility
125	t	Density control
125	t	Flight
125	t	Superstrength
125	t	Telepathy
132	f	Genius-level intellect
152	f	Highly skilled acrobatic and athletic
152	f	Highly skilled martial artist
154	t	Invulnerability
154	t	Superstrength
165	f	Master archer
168	f	Highly skilled martial artist
168	f	Master detective
168	f	Genius-level intellect
169	t	Superstrength
169	t	Flight
49	t	Telepathy
169	t	Invisibility
169	t	Intangibility
169	t	Telekinesis
172	t	Superstrength
172	t	Flight
172	t	Telepathy
172	t	Intangibility
172	t	Telekinesis
165	f	Agility
34	t	Magic
38	f	Master martial artist
95	t	Heat vision
103	t	Magic equipment
103	f	Master martial artist
107	t	Vibration control
122	t	Animal control
125	t	Animal control
132	f	Master martial artist
132	f	Master acrobat
132	f	Master detective
154	t	Density control
49	t	Superstrength
49	t	Invulnerability
38	f	Intelligent tactician
122	t	Invulnerability
49	t	Sub-mariner
67	t	Sub-mariner
178	t	Flight
178	t	Invulnerability
178	f	Agility
178	t	Blast power
178	t	Superstrength
182	t	Flight
182	t	Invulnerability
182	t	Longevity
182	t	Superstrength
182	t	Blast power
232	f	Agility
232	t	Death touch
232	t	Plant control
245	t	Flight
191	f	Agility
191	t	Longevity
245	t	Superstrength
195	t	Superstrength
195	t	Longevity
195	t	Ice control
195	t	Blast power
198	f	Weapon master
191	f	Weapon master
198	t	Emotion control
205	f	Agility
205	f	Weapon master
205	f	Highly skilled martial artist
205	t	Superstrength
287	f	Weapon master
213	t	Invulnerability
213	t	Superstrength
122	t	Sub-mariner
245	t	Invulnerability
213	f	Weapon master
245	t	Heat vision
271	t	Superstrength
271	t	Flight
271	t	Blast power
272	f	Agility
272	f	Weapon master
274	f	Agility
274	f	Weapon master
285	f	Weapon master
285	f	Agility
285	f	Master archer
286	t	Flight
286	t	Hypnosis
286	f	Highly skilled martial artist
287	f	Agility
287	t	Superstrength
287	f	Highly skilled martial artist
288	f	Agility
288	f	Weapon master
288	f	Master archer
289	f	Weapon master
289	f	Marksmanship
298	t	Flight
298	t	Superstrength
298	t	Invulnerability
298	t	Telekinesis
298	t	Heat vision
398	f	Weapon master
301	f	Agility
301	f	Weapon master
303	t	Superstrength
303	t	Invulnerability
303	t	Sub-mariner
398	f	Agility
405	t	Animal control
405	t	Invulnerability
680	t	Flight
405	t	Divine powers
407	t	Hypnosis
407	t	Telepathy
431	t	Animal control
431	t	Divine powers
431	t	Flight
431	t	Longevity
521	t	Flight
521	t	Weather control
521	t	Ice control
680	f	Agility
680	t	Superstrength
680	t	Invulnerability
680	t	Heat vision
723	t	Blast power
723	t	Invulnerability
723	t	Superstrength
867	t	Density control
867	t	Invulnerability
867	t	Telepathy
198	f	High-tech equipment
301	f	High-tech equipment
213	t	Immortality
867	t	Flight
874	t	Invulnerability
874	t	Superstrength
874	t	Flight
874	t	Blast power
892	t	Flight
892	t	Invulnerability
892	t	Telepathy
944	f	Genius-level intellect
154	t	Electricity control
398	f	High-tech equipment
892	t	Superstrength
723	f	Agility
51	t	Flight
51	t	Blast power
51	t	Invulnerability
51	t	Density control
51	t	Force field
\.


--
-- Data for Name: characters; Type: TABLE DATA; Schema: characters_db; Owner: postgres
--

COPY characters (id_ch, name, city, planet_of_origin, species) FROM stdin;
121	Supergirl	Metropolis	Krypton	Kryptonian
214	Lex Lutor	Metropolis	\N	Human
125	Vixen		\N	Human
35	Superman	Metropolis	Krypton	Kryptonian
38	Batman	Gotham City	\N	Human
39	Green Arrow	Star City	\N	Human
48	Speedy	Star City	\N	Human
49	Aquaman	Atlantis	\N	Atlantean
67	Aqualad	Atlantis	\N	Atlantean
122	Animal Man	San Diego	\N	Human
95	Superboy	Smallville	Krypton	Kryptonian
103	Wonder Woman		\N	Amazon
107	Flash	Central City	\N	Human
112	Cyborg	San Francisco	\N	Human
169	Martian Manhunter	\N	Mars	Martian
34	Zatanna		\N	Human
97	Black Canary	Gotham City	\N	Metahuman
132	Nightwing	Gotham City	\N	Human
191	Ra's Al Ghul	\N	\N	Human
152	Batwoman	Gotham City	\N	Human
154	Plastic Man	\N	\N	Human
165	Red Arrow	New York City	\N	Human
168	Question	Hub City	\N	Human
874	Black Adam	New York City	\N	Human
172	Miss Martian	San Francisco	Mars	Martian
195	Mr. Freeze	Gotham City	\N	Human
178	Starfire	New York City	Tamaran	Tamaranean
198	Scarecrow	Gotham City	\N	Human
205	Bane	Santa Prisca	\N	Human
213	Vandal Savage	\N	\N	Human
232	Poison Ivy	Seattle	\N	Human
245	General Zod	\N	Krypton	Kryptonian
287	Deathstroke	\N	\N	Human
298	Darkseid	\N	Apokolips	New God
271	Sinestro	\N	Korugar	Korugaran
272	Two-Face	Gotham City	\N	Human
537	Reverse-Flash	Central Cityplex	\N	Human
182	Icon	New York City	Terminus	Terminan
274	The Joker	Gotham City	\N	Human
303	King Shark	Honolulu	\N	Animal
285	Komodo	Star City	\N	Human
286	Count Vertigo	Star City	\N	Human
288	Merlyn	Star City	\N	Human
289	Cupid	Star City	\N	Human
301	Fisherman	\N	\N	Human
51	Green Lantern	\N	\N	Human
405	Strife	Olympus	\N	Olympian
407	Doctor Psycho	\N	\N	Human
431	Circe	Aeaea	\N	Demigod
521	Weather Wizard	Central City	\N	Human
523	Savitar	Tibet	\N	Human
621	Anti-Monitor	\N	\N	God/Eternal
680	Black Zero	Metropolis	\N	Metahuman/clone
567	Trickster	Keystone City	\N	Human
398	Black Manta	\N	\N	Human
723	Grail	\N	\N	Amazon
867	A'monn A'mokk	\N	Mars	White Martian
892	A-Mortal	\N	Mars	White Martian
944	Jeremiah Hatch	Hub City	\N	Human
\.


--
-- Data for Name: supercrimes; Type: TABLE DATA; Schema: characters_db; Owner: postgres
--

COPY supercrimes (criminal_id, crime_date, crime_description, foiled_by) FROM stdin;
271	2006-07-26	Garbage theft	51
287	2013-09-22	Puppies kidnapping	132
191	2000-04-21	Puppies kidnapping	38
205	2000-07-03	Puppies kidnapping	132
272	2005-05-24	Italian food forgery	38
198	2007-06-04	Adorable old woman snatching	38
303	2012-03-10	Italian food forgery	49
523	2015-12-21	Illegal file sharing	107
521	2010-08-17	Unicorn Killing	107
621	2006-08-29	Leopard bleaching	35
245	2007-04-15	Trolling	35
301	2003-06-25	Illegal file sharing	49
521	2012-09-18	Adorable old woman snatching	107
398	2003-05-25	Adorable old woman snatching	49
298	2007-06-21	World invasion	35
286	2007-10-22	Illegal file sharing	48
286	2003-09-21	Trolling	39
286	2007-11-30	World invasion	165
301	2002-03-19	Adorable old woman snatching	49
298	2010-09-21	World invasion	35
287	2014-09-29	Adorable old woman snatching	39
286	2008-10-27	Adorable old woman snatching	165
274	2001-02-14	Adorable old woman snatching	152
680	2011-01-05	WiFi stealing	172
537	2002-04-25	WiFi stealing	107
431	2006-03-12	WiFi stealing	103
398	2000-11-27	WiFi stealing	112
287	2011-11-01	WiFi stealing	178
286	2004-08-11	WiFi stealing	39
274	2004-07-19	WiFi stealing	152
272	2007-09-23	WiFi stealing	152
723	2013-03-07	World invasion	112
523	1999-01-22	World invasion	107
303	2011-06-16	World invasion	67
680	2010-12-04	Unicorn Killing	95
214	2002-02-12	Unicorn Killing	165
398	2002-04-22	Puppies kidnapping	49
289	2013-04-03	Puppies kidnapping	97
288	2001-09-24	Puppies kidnapping	39
198	2003-04-16	Puppies kidnapping	152
271	2008-03-21	Puppies kidnapping	51
195	2000-12-10	Adorable old woman snatching	38
214	2012-01-29	Italian food forgery	154
272	2004-04-23	Adorable old woman snatching	38
287	2013-08-27	Trolling	172
274	1999-04-10	Illegal file sharing	38
198	2007-09-11	Trolling	38
874	2007-01-17	Unicorn Killing	35
213	2014-09-25	Trolling	122
274	2000-05-12	Trolling	38
205	2012-09-02	Adorable old woman snatching	132
274	2002-06-19	Trolling	38
232	2001-03-11	Trolling	38
274	2006-08-28	Trolling	132
874	2006-12-16	Trolling	35
407	2004-12-09	Game of thrones spoiling	103
213	2013-08-24	Italian food forgery	122
274	2003-06-19	Leopard bleaching	38
867	2001-08-11	WiFi stealing	169
944	2011-06-22	Adorable old woman snatching	168
867	2004-10-14	Adorable old woman snatching	172
723	2000-07-10	Adorable old woman snatching	51
621	2003-03-02	Adorable old woman snatching	34
407	2005-02-11	Adorable old woman snatching	103
298	2006-06-05	WiFi stealing	121
288	2012-03-03	Adorable old woman snatching	48
285	2003-03-27	Adorable old woman snatching	39
288	2004-12-05	WiFi stealing	97
232	2004-01-15	WiFi stealing	38
198	2002-03-15	WiFi stealing	152
274	2015-10-26	World invasion	125
191	2013-01-23	Unicorn Killing	38
213	2009-09-17	Unicorn Killing	169
213	2014-07-11	Unicorn Killing	172
271	2004-03-19	Unicorn Killing	51
301	2000-01-23	Unicorn Killing	49
944	2010-05-21	Unicorn Killing	168
867	2002-08-12	Unicorn Killing	169
288	2010-09-28	Unicorn Killing	39
288	2012-07-21	Unicorn Killing	39
213	2013-04-15	Garbage theft	67
521	2009-06-15	Garbage theft	107
521	2013-10-19	Garbage theft	107
621	2006-08-30	Garbage theft	103
407	2005-01-10	Puppies kidnapping	103
288	2003-11-09	Puppies kidnapping	97
191	2009-09-27	Puppies kidnapping	132
191	2004-09-15	Adorable old woman snatching	132
198	2004-10-29	Adorable old woman snatching	38
205	1999-04-02	Adorable old woman snatching	38
213	2005-08-17	Adorable old woman snatching	38
537	2001-03-24	Trolling	107
272	2006-07-25	Trolling	132
287	2001-04-23	Trolling	38
289	2014-08-08	Leopard bleaching	39
274	2000-01-13	Game of thrones spoiling	152
214	1998-03-11	Leopard bleaching	35
723	2015-06-10	Trolling	182
680	2008-10-02	Trolling	95
288	2013-08-23	Italian food forgery	39
214	2003-03-24	Adorable old woman snatching	103
944	2009-04-20	WiFi stealing	168
213	2013-06-11	WiFi stealing	95
214	2000-08-27	World invasion	35
213	1999-01-15	Trolling	107
405	2000-07-27	Trolling	103
303	2013-04-17	Trolling	49
191	2011-03-15	Italian food forgery	38
195	2003-06-11	Italian food forgery	132
205	2001-06-07	Italian food forgery	38
214	2001-06-23	Italian food forgery	35
892	2008-02-18	Italian food forgery	169
723	2014-05-09	Italian food forgery	34
621	2012-07-23	Italian food forgery	122
537	2004-05-26	Italian food forgery	107
521	2014-11-20	Italian food forgery	107
431	2007-04-13	Italian food forgery	103
398	2014-02-01	Italian food forgery	154
287	2015-05-11	Italian food forgery	178
286	2005-09-11	Italian food forgery	39
285	2001-01-15	Italian food forgery	39
272	2007-08-02	Italian food forgery	132
214	2001-12-28	Italian food forgery	125
285	2004-05-01	Italian food forgery	48
621	2005-07-28	Unicorn Killing	121
405	2012-10-29	Unicorn Killing	103
287	2014-03-27	Unicorn Killing	172
285	2002-02-21	Unicorn Killing	39
274	2005-08-23	Unicorn Killing	152
303	2007-07-06	WiFi stealing	121
874	2005-11-15	Leopard bleaching	169
723	2012-02-06	Leopard bleaching	112
680	2009-11-03	Leopard bleaching	95
523	2000-02-23	Leopard bleaching	107
521	2011-07-16	Leopard bleaching	107
407	2003-11-30	Leopard bleaching	103
287	2012-09-09	Leopard bleaching	165
274	2000-11-27	Leopard bleaching	125
232	2011-09-24	Leopard bleaching	132
195	2001-05-25	Leopard bleaching	38
431	2008-05-14	Illegal file sharing	103
431	2004-04-03	Illegal file sharing	34
398	2014-06-26	Illegal file sharing	67
398	2001-03-21	Illegal file sharing	49
303	2015-05-15	Illegal file sharing	67
289	2012-07-08	Illegal file sharing	39
288	2012-06-16	Illegal file sharing	97
288	2011-07-27	Illegal file sharing	39
288	2002-07-28	Illegal file sharing	39
287	2015-08-14	Illegal file sharing	95
287	2011-03-24	Illegal file sharing	178
286	2008-09-05	Illegal file sharing	165
285	2003-04-21	Illegal file sharing	39
274	2001-05-15	Illegal file sharing	38
205	1998-06-05	Puppies kidnapping	38
723	2013-04-08	Game of thrones spoiling	51
621	2007-09-01	Game of thrones spoiling	95
892	2012-03-19	Game of thrones spoiling	169
867	2003-09-13	Game of thrones spoiling	169
287	2005-05-04	Game of thrones spoiling	34
285	2005-07-12	Game of thrones spoiling	48
245	1999-07-01	Game of thrones spoiling	35
214	2015-01-19	Game of thrones spoiling	95
537	2003-06-27	Game of thrones spoiling	107
405	2000-09-28	Game of thrones spoiling	103
213	1998-12-15	Game of thrones spoiling	107
191	2003-12-12	Game of thrones spoiling	38
\.


--
-- Name: PK_Ab; Type: CONSTRAINT; Schema: characters_db; Owner: postgres
--

ALTER TABLE ONLY abilities
ADD CONSTRAINT "PK_Ab" PRIMARY KEY (id_ch, ability_name);


--
-- Name: PK_c; Type: CONSTRAINT; Schema: characters_db; Owner: postgres
--

ALTER TABLE ONLY characters
ADD CONSTRAINT "PK_c" PRIMARY KEY (id_ch);


--
-- Name: PK_cr; Type: CONSTRAINT; Schema: characters_db; Owner: postgres
--

ALTER TABLE ONLY supercrimes
ADD CONSTRAINT "PK_cr" PRIMARY KEY (criminal_id, crime_date);


--
-- Name: FKI_foiled_by; Type: INDEX; Schema: characters_db; Owner: postgres
--

CREATE INDEX "FKI_foiled_by" ON supercrimes USING btree (foiled_by);


--
-- Name: FK_ch; Type: FK CONSTRAINT; Schema: characters_db; Owner: postgres
--

ALTER TABLE ONLY abilities
ADD CONSTRAINT "FK_ch" FOREIGN KEY (id_ch) REFERENCES characters(id_ch);


--
-- Name: FK_cr_id; Type: FK CONSTRAINT; Schema: characters_db; Owner: postgres
--

ALTER TABLE ONLY supercrimes
ADD CONSTRAINT "FK_cr_id" FOREIGN KEY (criminal_id) REFERENCES characters(id_ch);


--
-- Name: FK_foiled_by; Type: FK CONSTRAINT; Schema: characters_db; Owner: postgres
--

ALTER TABLE ONLY supercrimes
ADD CONSTRAINT "FK_foiled_by" FOREIGN KEY (foiled_by) REFERENCES characters(id_ch);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

