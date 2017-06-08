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

insert into chinuch values (5, 55, null, null, null, null);
insert into chinuch values (6, 56, null, null, null, null);
insert into chinuch values (25, 1, null, null, null, null);
insert into chinuch values (71, 52, null, null, null, null);
insert into chinuch values (95, 20, null, null, null, null);
insert into chinuch values (96, 27, null, null, null, null);
insert into chinuch values (98, 25, null, null, null, null);
insert into chinuch values (99, 33, null, null, null, null);
insert into chinuch values (101, 28, null, null, null, null);
insert into chinuch values (106, 24, null, null, null, null);
insert into chinuch values (107, 35, null, null, null, null);
insert into chinuch values (131, 30, null, null, null, null);
insert into chinuch values (132, 29, null, null, null, null);
insert into chinuch values (134, 40, null, null, null, null);
insert into chinuch values (184, 49, null, null, null, null);
insert into chinuch values (221, 21, null, null, null, null);
insert into chinuch values (263, 37, null, null, null, null);
insert into chinuch values (264, 32, null, null, null, null);
insert into chinuch values (265, 38, null, null, null, null);
insert into chinuch values (267, 60, null, null, null, null);
insert into chinuch values (268, 9, null, null, null, null);
insert into chinuch values (270, 43, null, null, null, null);
insert into chinuch values (272, 44, null, null, null, null);
insert into chinuch values (274, 46, null, null, null, null);
insert into chinuch values (277, 47, null, null, null, null);	-- The Chinuch uses the pasuk from Vayikra 23:25 instead of the Rambam's
insert into chinuch values (279, 48, null, null, null, null);	-- The Chinuch uses the pasuk from Vayikra 23:27 instead of the Rambam's
insert into chinuch values (282, 50, null, null, null, null);	-- The Chinuch uses the pasuk from Vayikra 23:36 instead of the Rambam's
insert into chinuch values (284, 51, null, null, null, null);	-- The Chinuch uses the pasuk from Vayikra 23:36 instead of the Rambam's
insert into chinuch values (362, 31, null, null, null, null);
insert into chinuch values (368, 34, null, null, null, null);
insert into chinuch values (377, 26, null, null, null, null);
insert into chinuch values (380, 57, null, null, null, null);
insert into chinuch values (381, 58, null, null, null, null);
insert into chinuch values (382, 59, null, null, null, null);
insert into chinuch values (386, 14, null, null, null, null);
insert into chinuch values (388, 22, null, null, null, null);
insert into chinuch values (390, 23, null, null, null, null);
insert into chinuch values (401, 39, null, null, null, null);
insert into chinuch values (402, 41, null, null, null, null);
insert into chinuch values (403, 42, null, null, null, null);
insert into chinuch values (404, 45, null, null, null, null);
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
insert into chinuch values (451, 54, null, null, null, null);
insert into chinuch values (452, 53, null, null, null, null);	-- The Chinuch uses the pasuk from Devarim 16:16 instead of the Rambam's
insert into chinuch values (494, 18, null, null, null, null);
insert into chinuch values (498, 36, null, null, null, null);
insert into chinuch values (608, 8, null, null, null, null);
insert into chinuch values (612, 16, null, null, null, null);
insert into chinuch values (613, 17, null, null, null, null);