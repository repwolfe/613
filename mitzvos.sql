.echo OFF

drop table if exists mitzvos;
drop table if exists

create table mitzvos {
	_id integer NOT NULL primary key,
	mitzvahName varchar NOT NULL,
	asehOrLoSaseh varchar NOT NULL
};

create table rambam {
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
};

create table chinuch {
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	shoresh varchar,
	whoApplies varchar,
	whereApplies varchar,
	onesh varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
};

create table ramban {
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
};

create table bahag {
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
};

create table rasag {
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
};

create table chofetzChaim {
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
};