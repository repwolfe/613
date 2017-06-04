.echo OFF

drop table if exists mitzvos;
drop table if exists ramban;
drop table if exists bahag;
drop table if exists rasag;
drop table if exists chofetzChaim;

create table mitzvos (
	_id integer NOT NULL primary key,
	mitzvahName varchar NOT NULL,
	mitzvahNameEn varchar,
	asehOrLoSaseh char(1) NOT NULL	-- A/L
);

insert into mitzvos values (1, 'האמנה במציאות השם יתברך', null, 'A');	
insert into mitzvos values (2, 'אחדות השם', null, 'A');
insert into mitzvos values (3, 'אהבת השם', null, 'A');
insert into mitzvos values (4, 'יראת השם', null, 'A');
insert into mitzvos values (5, 'תפילה', null, 'A');
insert into mitzvos values (6, 'החברה והדביקה עם חכמי התורה', null, 'A');
insert into mitzvos values (7, 'על כל הצריך לישבע שישבע בשם השם', null, 'A');
insert into mitzvos values (8, 'להדמות בדרכי השם יתברך הטובים והישרים', null, 'A');
insert into mitzvos values (9, 'קידוש השם', null, 'A');
insert into mitzvos values (10, 'קרית שמע שחרית וערבית', null, 'A');

create table ramban (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table bahag (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table rasag (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table chofetzChaim (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);