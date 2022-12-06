create table tb_affiliated_writers
(
    wr_code int          not null,
    wr_name varchar(100) null
)
    charset = utf8;

INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (23, 'AJ Scudiere');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (25, 'Anne Rainey');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (27, 'Barbara Delinsky');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (34, 'Chas Wienke');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (43, 'D.C. Ford');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (45, 'D. E. Knobbe');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (47, 'David Cogswell');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (76, 'Douglas Clegg');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (78, 'Iris Johanesen');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (98, 'Jan Groft');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (101, 'Jeff Havens');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (102, 'Kate Pearce');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (123, 'L.C. Higgs');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (127, 'Melissa Mayhue');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (134, 'Mike Green');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (145, 'S. C. Carr');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (156, 'Shirley Tallman');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (167, 'Stacy Choen');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (178, 'Susan Lyons');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (189, 'Tim Davys');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (234, 'Tracy Richardson');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (245, 'William Boyd');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (300, 'J. K. Rowling');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (302, 'Robert Galbraith');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (301, null);
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (303, 'Fyodor Mikhailovich Dostoevsky');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (123123, 'Maurizio Lenzerini');
INSERT INTO tb_affiliated_writers (wr_code, wr_name) VALUES (456456, 'Micheal Nostradamus');
create table tb_authors
(
    bk_code int not null,
    wr_id   int not null,
    primary key (bk_code, wr_id)
)
    charset = utf8;

INSERT INTO tb_authors (bk_code, wr_id) VALUES (1, 189);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (2, 123);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (3, 45);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (4, 76);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (5, 78);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (6, 156);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (7, 189);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (8, 25);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (9, 47);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (10, 123);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (11, 43);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (16, 245);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (17, 127);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (18, 234);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (19, 76);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (20, 78);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (21, 27);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (22, 167);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (23, 34);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (24, 134);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (30, 23);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (31, 25);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (32, 24);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (35, 156);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (36, 47);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (39, 303);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (40, 300);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (123123, 123123);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (456456, 456456);
INSERT INTO tb_authors (bk_code, wr_id) VALUES (789789, 789789);
create table tb_bk_gen
(
    id_bk    int                     not null,
    gen_name varchar(100) default '' not null,
    primary key (id_bk, gen_name)
)
    charset = utf8;

INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (3, 'Fiction');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (4, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (5, 'Mystery');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (6, 'Mystery');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (7, 'Fantasy');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (8, 'Romance');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (9, 'Biographies');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (9, 'History');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (9, 'Politics');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (10, 'Historical');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (10, 'Novels');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (11, 'Self Help');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (12, 'Fantasy');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (12, 'Fiction');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (12, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (12, 'Humor');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (13, 'Fantasy');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (13, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (14, 'Cultural');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (14, 'Music');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (15, 'Science');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (16, 'Mystery');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (17, 'Romance');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (18, 'Children');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (19, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (20, 'Horror');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (21, 'Romance');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (22, 'Fiction');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (23, 'History');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (24, 'Fiction');
INSERT INTO tb_bk_gen (id_bk, gen_name) VALUES (33, 'Fiction');
create table tb_books
(
    bk_code    int                  not null
        primary key,
    bk_title   varchar(100)         null,
    is_classic tinyint(1) default 0 null,
    title      varchar(255)         null
)
    charset = utf8;

INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (1, 'Resonance', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (2, 'As we Grieve', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (3, 'Runaway Storm', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (4, 'Neverland', 1, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (5, 'Eight Days to Live', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (6, 'Scandal on Rincon Hill', 1, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (7, 'Amberville', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (8, 'Some Like it Rough', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (9, 'Zinn for Beginners', 1, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (10, 'Here Burns My Candle', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (11, 'How to get fired', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (12, 'The Twelve Little Hitlers', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (13, 'The story of Eight the sparrow', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (14, 'The social impact of Christina Oats songs', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (15, 'Engineering analysis of Mazzinga', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (16, 'Ordinary Thunderstorms', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (17, 'A Highlander''s Homecoming', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (18, 'Indian Summer', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (19, 'A Dark Circus', 1, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (20, 'City of Stars', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (21, 'Not My Daughter', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (22, 'The Last Train From Paris', 1, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (23, 'Our Boomer Years', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (24, 'Path of Thunder', 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (34, null, 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (35, null, 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (36, null, 0, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (39, 'Crime and Punishment', 1, null);
INSERT INTO tb_books (bk_code, bk_title, is_classic, title) VALUES (40, 'Harry Potter and the Philosopher''s Stone', 0, null);
create table tb_edition
(
    ed_code  int        not null
        primary key,
    ed_type  char       not null,
    pub_date date       null,
    n_edt    int        null,
    editor   int        not null,
    bk_id    int        not null,
    e_book   tinyint(1) null,
    price    double     null
)
    charset = utf8;

INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (10, 'X', '2000-09-23', 1, 133, 24, 1, 2.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (12, 'E', '2010-02-18', 1, 176, 1, 0, 10.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (21, 'E', '2000-02-12', 1, 176, 2, 0, 13.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (23, 'S', '2004-01-02', 1, 198, 3, 0, 34.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (32, 'S', '2009-12-04', 1, 198, 4, 0, 42.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (34, 'E', '2000-07-06', 1, 125, 5, 1, 3.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (39, 'X', '2007-02-03', 2, 132, 20, 0, 12.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (40, 'X', '2005-03-01', 1, 132, 21, 0, 12.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (43, 'X', '2001-05-14', 1, 125, 6, 0, 12.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (45, 'S', '2005-05-05', 1, 133, 7, 0, 27.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (50, 'X', '2001-12-03', 1, 187, 22, 0, 12.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (54, 'X', '2008-09-11', 1, 154, 8, 0, 12.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (56, 'S', '2005-02-07', 1, 112, 9, 0, 15.39);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (65, 'E', '2007-05-09', 1, 132, 10, 1, 0.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (67, 'X', '2004-11-03', 1, 187, 11, 1, 3);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (70, 'X', '2009-03-11', 1, 165, 23, 1, 4.5);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (73, 'X', '2002-04-01', 1, 121, 17, 1, 4.69);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (74, 'X', '2003-11-03', 1, 187, 18, 0, 12.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (76, 'X', '2003-12-06', 1, 165, 12, 1, 4);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (78, 'S', '2004-05-03', 1, 121, 15, 0, 23.6);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (82, 'X', '2000-11-09', 1, 144, 16, 0, 12.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (87, 'S', '2007-05-09', 2, 133, 7, 0, 45.69);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (89, 'S', '2010-05-01', 2, 187, 2, 0, 42.39);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (90, 'E', '2006-05-09', 2, 125, 5, 0, 6.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (91, 'X', '2009-04-18', 3, 112, 6, 0, 12.99);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (92, 'E', '2003-01-12', 2, 112, 6, 0, 7.89);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (98, 'E', '2010-02-01', 2, 132, 10, 0, 8.49);
INSERT INTO tb_edition (ed_code, ed_type, pub_date, n_edt, editor, bk_id, e_book, price) VALUES (99, 'X', '2006-04-01', 1, 125, 19, 0, 12.99);
create table tb_edition_audio
(
    ed_code  int            not null,
    duration int default -1 null
);

INSERT INTO tb_edition_audio (ed_code, duration) VALUES (12, 36421);
INSERT INTO tb_edition_audio (ed_code, duration) VALUES (21, 34125);
INSERT INTO tb_edition_audio (ed_code, duration) VALUES (78, 37456);
INSERT INTO tb_edition_audio (ed_code, duration) VALUES (87, 42215);
INSERT INTO tb_edition_audio (ed_code, duration) VALUES (99, 30045);
create table tb_edition_printed
(
    ed_code int            not null,
    pages   int default -1 null
);

INSERT INTO tb_edition_printed (ed_code, pages) VALUES (23, 138);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (32, 179);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (39, 180);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (40, 103);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (43, 170);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (45, 192);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (50, 191);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (54, 172);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (56, 104);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (74, 156);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (82, 141);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (89, 132);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (90, 198);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (91, 113);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (92, 151);
INSERT INTO tb_edition_printed (ed_code, pages) VALUES (98, 156);
create table tb_editor
(
    ed_code int          not null
        primary key,
    ed_name varchar(100) null
)
    charset = utf8;

INSERT INTO tb_editor (ed_code, ed_name) VALUES (112, 'Paul Golden');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (121, 'Pat Red');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (125, 'Simon Frost');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (132, 'Melody Albert');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (133, 'Valerio Nin');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (144, 'Victoria Rolls');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (154, 'Karl Forman');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (165, 'Fill Luckett');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (176, 'Eric Jonnes');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (187, 'Bill Sugar');
INSERT INTO tb_editor (ed_code, ed_name) VALUES (198, 'Bill Green');
create table tb_emerge_authors
(
    bk_code int not null,
    wr_id   int not null,
    primary key (bk_code, wr_id)
)
    charset = utf8;

INSERT INTO tb_emerge_authors (bk_code, wr_id) VALUES (14, 267);
INSERT INTO tb_emerge_authors (bk_code, wr_id) VALUES (14, 278);
INSERT INTO tb_emerge_authors (bk_code, wr_id) VALUES (15, 289);
create table tb_employees
(
    employee_id   int          null,
    vat           varchar(255) null,
    profession    varchar(255) null,
    employee_name varchar(255) null,
    retired       tinyint(1)   null,
    date_birth    date         null
);

INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (23, 'AJSCDR', 'AUTHOR', 'AJ Scudiere', null, '1912-10-12');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (25, 'ANNRNY', 'AUTHOR', 'Anne Rainey', null, '1911-01-21');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (27, 'BRBDLK', 'AUTHOR', 'Barbara Delinsky', null, '1906-12-16');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (34, null, 'AUTHOR', 'Chas Wienke', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (43, null, 'AUTHOR', 'D.C. Ford', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (45, null, 'AUTHOR', 'D. E. Knobbe', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (47, 'DVDCDS', 'AUTHOR', 'David Cogswell', null, '1852-08-13');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (76, 'DLSCLG', 'AUTHOR', 'Douglas Clegg', null, '1853-04-09');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (78, null, 'AUTHOR', 'Iris Johanesen', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (98, 'JANGRO', 'AUTHOR', 'Jan Groft', null, '1846-12-19');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (101, 'JFFHVN', 'AUTHOR', 'Jeff Havens', null, '1844-06-17');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (102, 'KATPRC', 'AUTHOR', 'Kate Pearce', null, '1993-10-06');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (123, null, 'AUTHOR', 'L.C. Higgs', null, '1991-07-27');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (127, null, 'AUTHOR', 'Melissa Mayhue', null, '1973-03-03');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (134, null, 'AUTHOR', 'Mike Green', null, '1936-10-31');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (145, null, 'AUTHOR', 'S. C. Carr', null, '1877-05-19');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (156, null, 'AUTHOR', 'Shirley Tallman', null, '1865-02-19');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (167, null, 'AUTHOR', 'Stacy Choen', null, '1831-03-19');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (178, null, 'AUTHOR', 'Susan Lyons', null, '1976-07-08');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (189, null, 'AUTHOR', 'Tim Davys', null, '1924-09-18');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (234, null, 'AUTHOR', 'Tracy Richardson', null, '1928-03-11');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (245, null, 'AUTHOR', 'William Boyd', 1, '1945-01-27');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (300, 'JNNRWL', 'AUTHOR', 'Joanne Rowling
', 0, '1965-07-31');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (301, null, 'AUTHOR', null, null, '1985-04-05');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (189, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (123, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (45, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (76, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (78, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (156, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (189, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (25, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (47, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (123, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (43, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (245, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (127, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (234, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (76, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (78, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (27, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (167, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (34, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (134, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (23, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (25, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (24, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (156, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (47, null, 'AUTHOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (133, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (176, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (176, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (198, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (198, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (125, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (132, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (132, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (125, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (133, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (187, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (154, 'MRCGCM', 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (112, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (132, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (187, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (165, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (121, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (187, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (165, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (121, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (144, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (133, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (187, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (125, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (112, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (112, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (132, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (125, null, 'EDITOR', null, null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (112, 'PALGLD', 'EDITOR', 'Paul Golden', null, '1900-02-28');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (121, 'PATRED', 'EDITOR', 'Pat Red', null, '1922-12-05');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (125, 'SMNFRS', 'EDITOR', 'Simon Frost', null, '1843-05-05');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (132, null, 'EDITOR', 'Melody Albert', null, '1961-07-15');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (133, null, 'EDITOR', 'Valerio Nin', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (144, null, 'EDITOR', 'Victoria Rolls', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (154, null, 'EDITOR', 'Karl Forman', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (165, null, 'EDITOR', 'Fill Luckett', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (176, null, 'EDITOR', 'Eric Jonnes', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (187, null, 'EDITOR', 'Bill Sugar', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (198, null, 'EDITOR', 'Bill Green', null, null);
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (null, 'LSAMCG', 'SECRETARY', 'Lisa McGill', 0, '1980-03-22');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (null, 'JHNSKW', 'SECRETARY', 'John Skow', 0, '1838-08-23');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (null, 'MCHJOD', 'SECRETARY', 'Micheal Joody', 1, '1958-09-15');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (null, 'BRDBRD', 'MANAGER', 'Bridgitte Bird', 0, '1865-12-16');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (112, 'PALGLD', 'AUTHOR', 'Paul Golden', null, '1900-02-28');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (302, 'JNNRWL', 'AUTHOR', 'Joanne Rowling
', 0, '1965-07-31');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (303, null, 'AUTHOR', 'Fyodor Mikhailovich Dostoevsky', 1, '1821-11-11');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (123123, 'LNZMRZ', 'AUTHOR', 'Maurizio Lenzerini', 0, '1954-12-14');
INSERT INTO tb_employees (employee_id, vat, profession, employee_name, retired, date_birth) VALUES (789789, null, 'AUTHOR', 'Charles Darwin', 1, '1809-02-12');
create table tb_on_prob_wr
(
    wr_code int          not null
        primary key,
    wr_name varchar(100) null
)
    charset = utf8;

INSERT INTO tb_on_prob_wr (wr_code, wr_name) VALUES (267, 'Peter Griffin');
INSERT INTO tb_on_prob_wr (wr_code, wr_name) VALUES (278, 'Homer Simpson');
INSERT INTO tb_on_prob_wr (wr_code, wr_name) VALUES (289, 'Jon Stewart');
create table tb_scientific_books
(
    bk_id    int          not null,
    revision date         null,
    topic    varchar(255) null,
    title    varchar(255) null
);

INSERT INTO tb_scientific_books (bk_id, revision, topic, title) VALUES (123123, '2022-02-07', 'COMPUTER SCIENCE', 'Data Management Systems');
INSERT INTO tb_scientific_books (bk_id, revision, topic, title) VALUES (123123, '2020-12-31', 'COMPUTER SCIENCE', 'Data Management Systems');
INSERT INTO tb_scientific_books (bk_id, revision, topic, title) VALUES (456456, '2019-12-12', 'MEDICINE', 'The next pandemic');
INSERT INTO tb_scientific_books (bk_id, revision, topic, title) VALUES (456456, '2019-12-05', 'MEDICINE', 'The next pandemic');
INSERT INTO tb_scientific_books (bk_id, revision, topic, title) VALUES (789789, '1859-09-24', 'BIOLOGY', 'On the origin of the species');

CREATE TABLE annotations (
subject varchar(255) NULL,
property varchar(255)  NULL,
lang varchar(255) NULL,
valore varchar(255)  NULL
);

INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Book','rdfs:label','it','libro');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Edition','rdfs:label','it','edizione');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Book','rdfs:label','fr','livre');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Edition','rdfs:label','fr','edition');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Book','rdfs:comment','it','Descrizione Book in italiano');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Edition','rdfs:label','fr','edition');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Edition','rdfs:comment','it','Descrizione Edition in italiano');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Book','rdfs:comment','fr','Descrizione Book in francese');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Edition','rdfs:comment','fr','Descrizione Edition in francese');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Edition','rdfs:isDefinedBy','it','Lollo');
INSERT INTO annotations (subject, property, lang, valore) VALUES ('http://www.obdasystems.com/books/Edition','rdfs:isDefinedBy','fr','Laurent');