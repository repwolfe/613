.echo OFF

drop table if exists semag;
drop table if exists semagNotes;

create table semag (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source integer,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade,
	foreign key (source) references verses(_id) on delete cascade
);

insert into semag (_id, mitzvahId, mitzvahNumber) values (1,    1, 1);	-- Can retrieve source info from rambam when they're the same
insert into semag (_id, mitzvahId, mitzvahNumber) values (2,    2, 2);
insert into semag (_id, mitzvahId, mitzvahNumber) values (3,    3, 3);
insert into semag (_id, mitzvahId, mitzvahNumber) values (4,    4, 4);
insert into semag (_id, mitzvahId, mitzvahNumber) values (5,    9, 5);
insert into semag (_id, mitzvahId, mitzvahNumber) values (6,  172, 6);
insert into semag (_id, mitzvahId, mitzvahNumber) values (7,    8, 7);
insert into semag (_id, mitzvahId, mitzvahNumber) values (8,    6, 8);
insert into semag (_id, mitzvahId, mitzvahNumber) values (9,  206, 9);
insert into semag (_id, mitzvahId, mitzvahNumber) values (10, 207, 10);
insert into semag (_id, mitzvahId, mitzvahNumber) values (11, 205, 11);
insert into semag (_id, mitzvahId, mitzvahNumber) values (12,  11, 12);
insert into semag (_id, mitzvahId, mitzvahNumber) values (13, 209, 13);
insert into semag (_id, mitzvahId, mitzvahNumber) values (14, 185, 14);
insert into semag (_id, mitzvahId, mitzvahNumber) values (15, 186, 15);
insert into semag (_id, mitzvahId, mitzvahNumber) values (16,  73, 16);
insert into semag values (17, 679, 17, 511);
insert into semag (_id, mitzvahId, mitzvahNumber) values (18,  10, 18);
insert into semag (_id, mitzvahId, mitzvahNumber) values (19,   5, 19);
insert into semag (_id, mitzvahId, mitzvahNumber) values (20,  26, 20);
insert into semag (_id, mitzvahId, mitzvahNumber) values (21,  13, 21);
insert into semag (_id, mitzvahId, mitzvahNumber) values (22,  12, 22);
insert into semag (_id, mitzvahId, mitzvahNumber) values (23,  15, 23);
insert into semag (_id, mitzvahId, mitzvahNumber) values (24,  17, 24);
insert into semag (_id, mitzvahId, mitzvahNumber) values (25,  18, 25);
insert into semag (_id, mitzvahId, mitzvahNumber) values (26,  14, 26);
insert into semag (_id, mitzvahId, mitzvahNumber) values (27,  19, 27);
insert into semag (_id, mitzvahId, mitzvahNumber) values (28, 215, 28);
insert into semag (_id, mitzvahId, mitzvahNumber) values (29, 155, 29);
insert into semag (_id, mitzvahId, mitzvahNumber) values (30, 154, 30);
insert into semag (_id, mitzvahId, mitzvahNumber) values (31, 165, 31);
insert into semag (_id, mitzvahId, mitzvahNumber) values (32, 164, 32);
insert into semag (_id, mitzvahId, mitzvahNumber) values (33, 159, 33);
insert into semag (_id, mitzvahId, mitzvahNumber) values (34, 160, 34);
insert into semag (_id, mitzvahId, mitzvahNumber) values (35, 162, 35);
insert into semag (_id, mitzvahId, mitzvahNumber) values (36, 163, 36);
insert into semag (_id, mitzvahId, mitzvahNumber) values (37, 166, 37);
insert into semag (_id, mitzvahId, mitzvahNumber) values (38, 167, 38);
insert into semag (_id, mitzvahId, mitzvahNumber) values (39, 156, 39);
insert into semag (_id, mitzvahId, mitzvahNumber) values (40, 158, 40);
insert into semag (_id, mitzvahId, mitzvahNumber) values (41, 157, 41);
insert into semag (_id, mitzvahId, mitzvahNumber) values (42, 170, 42);
insert into semag (_id, mitzvahId, mitzvahNumber) values (43, 168, 43);
insert into semag (_id, mitzvahId, mitzvahNumber) values (44, 169, 44);
insert into semag (_id, mitzvahId, mitzvahNumber) values (45, 171, 45);
insert into semag (_id, mitzvahId, mitzvahNumber) values (46, 153, 46);
--insert into semag values (47, 680, 47, _);

-- Mitzvas Aseh MiSeder Nashim

create table semagNotes (
	_id integer NOT NULL primary key,
	hebrewNote varChar,
	enNote varChar,
	foreign key(_id) references semag(_id) on delete cascade
);

insert into semagNotes values (16, null, 'The Semag includes teshuvah in the mitzvah, whereas the Rambam only mentions vidui. However, in the beginning of Hilchos Teshuvah he writes like the Semag.');