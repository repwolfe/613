.echo OFF

drop table if exists chinuch;

create table chinuch (
	mitzvahNumber integer NOT NULL primary key,
	mitzvahId integer NOT NULL UNIQUE,
	shoresh varchar,
	whoApplies varchar,
	whereApplies varchar,
	onesh varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

insert into chinuch values (25, 1, null, null, null, null);
insert into chinuch values (95, 20, null, null, null, null);
insert into chinuch values (268, 9, null, null, null, null);
insert into chinuch values (386, 14, null, null, null, null);
insert into chinuch values (416, 2, null, null, null, null);
insert into chinuch values (417, 3, null, null, null, null);
insert into chinuch values (418, 11, null, null, null, null);
insert into chinuch values (419, 10, null, null, null, null);
insert into chinuch values (420, 13, null, null, null, null);
insert into chinuch values (421, 12, null, null, null, null);
insert into chinuch values (422, 15, null, null, null, null);
insert into chinuch values (428, 19, null, null, null, null);
insert into chinuch values (430, 4, null, null, null, null);
insert into chinuch values (431, 5, null, null, null, null);
insert into chinuch values (432, 6, null, null, null, null);
insert into chinuch values (433, 7, null, null, null, null);
insert into chinuch values (494, 17, null, null, null, null);
insert into chinuch values (608, 8, null, null, null, null);
insert into chinuch values (612, 16, null, null, null, null);
insert into chinuch values (613, 18, null, null, null, null);