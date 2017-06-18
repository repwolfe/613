.echo OFF

drop table if exists chinuch;
drop table if exists chinuchNotes;

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
insert into chinuch values (9, 79, null, null, null, null);
insert into chinuch values (11, 81, null, null, null, null);
insert into chinuch values (12, 82, null, null, null, null);
insert into chinuch values (25, 1, null, null, null, null);
insert into chinuch values (71, 52, null, null, null, null);
insert into chinuch values (95, 20, null, null, null, null);
insert into chinuch values (96, 27, null, null, null, null);
insert into chinuch values (98, 25, null, null, null, null);
insert into chinuch values (99, 33, null, null, null, null);
insert into chinuch values (100, 89, null, null, null, null);
insert into chinuch values (101, 28, null, null, null, null);
insert into chinuch values (106, 24, null, null, null, null);
insert into chinuch values (107, 35, null, null, null, null);
insert into chinuch values (115, 63, null, null, null, null);
insert into chinuch values (116, 67, null, null, null, null);
insert into chinuch values (117, 62, null, null, null, null);
insert into chinuch values (118, 68, null, null, null, null);
insert into chinuch values (119, 69, null, null, null, null);
insert into chinuch values (121, 72, null, null, null, null);
insert into chinuch values (123, 70, null, null, null, null);
insert into chinuch values (124, 71, null, null, null, null);
insert into chinuch values (131, 30, null, null, null, null);
insert into chinuch values (132, 29, null, null, null, null);
insert into chinuch values (133, 88, null, null, null, null);
insert into chinuch values (134, 40, null, null, null, null);
insert into chinuch values (135, 64, null, null, null, null);
insert into chinuch values (136, 65, null, null, null, null);
insert into chinuch values (137, 66, null, null, null, null);
insert into chinuch values (138, 91, null, null, null, null);
insert into chinuch values (139, 90, null, null, null, null);
insert into chinuch values (152, 97, null, null, null, null);
insert into chinuch values (153, 98, null, null, null, null);
insert into chinuch values (154, 96, null, null, null, null);
insert into chinuch values (167, 76, null, null, null, null);
insert into chinuch values (166, 100, null, null, null, null);
insert into chinuch values (168, 101, null, null, null, null);
insert into chinuch values (170, 102, null, null, null, null);
insert into chinuch values (173, 110, null, null, null, null);
insert into chinuch values (175, 109, null, null, null, null);
insert into chinuch values (176, 77, null, null, null, null);
insert into chinuch values (177, 103, null, null, null, null);
insert into chinuch values (178, 104, null, null, null, null);
insert into chinuch values (179, 74, null, null, null, null);
insert into chinuch values (180, 105, null, null, null, null);
insert into chinuch values (181, 99, null, null, null, null);
insert into chinuch values (182, 106, null, null, null, null);
insert into chinuch values (183, 75, null, null, null, null);
insert into chinuch values (184, 49, null, null, null, null);
insert into chinuch values (221, 21, null, null, null, null);
insert into chinuch values (263, 37, null, null, null, null);
insert into chinuch values (264, 32, null, null, null, null);
insert into chinuch values (265, 38, null, null, null, null);
insert into chinuch values (266, 61, null, null, null, null);
insert into chinuch values (267, 60, null, null, null, null);
insert into chinuch values (268, 9, null, null, null, null);
insert into chinuch values (270, 43, null, null, null, null);
insert into chinuch values (272, 44, null, null, null, null);
insert into chinuch values (274, 46, null, null, null, null);
insert into chinuch values (277, 47, null, null, null, null);
insert into chinuch values (279, 48, null, null, null, null);
insert into chinuch values (282, 50, null, null, null, null);
insert into chinuch values (284, 51, null, null, null, null);
insert into chinuch values (351, 87, null, null, null, null);
insert into chinuch values (356, 78, null, null, null, null);
insert into chinuch values (362, 31, null, null, null, null);
insert into chinuch values (363, 73, null, null, null, null);
insert into chinuch values (365, 92, null, null, null, null);
insert into chinuch values (366, 93, null, null, null, null);
insert into chinuch values (368, 34, null, null, null, null);
insert into chinuch values (377, 26, null, null, null, null);
insert into chinuch values (380, 57, null, null, null, null);
insert into chinuch values (381, 58, null, null, null, null);
insert into chinuch values (382, 59, null, null, null, null);
insert into chinuch values (386, 14, null, null, null, null);
insert into chinuch values (388, 22, null, null, null, null);
insert into chinuch values (389, 80, null, null, null, null);
insert into chinuch values (390, 23, null, null, null, null);
insert into chinuch values (398, 107, null, null, null, null);
insert into chinuch values (399, 108, null, null, null, null);
insert into chinuch values (401, 39, null, null, null, null);
insert into chinuch values (402, 41, null, null, null, null);
insert into chinuch values (403, 42, null, null, null, null);
insert into chinuch values (404, 45, null, null, null, null);
insert into chinuch values (406, 95, null, null, null, null);
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
insert into chinuch values (437, 83, null, null, null, null);
insert into chinuch values (438, 84, null, null, null, null);
insert into chinuch values (439, 86, null, null, null, null);
insert into chinuch values (441, 85, null, null, null, null);
insert into chinuch values (451, 54, null, null, null, null);
insert into chinuch values (452, 53, null, null, null, null);
insert into chinuch values (494, 18, null, null, null, null);
insert into chinuch values (498, 36, null, null, null, null);
insert into chinuch values (546, 94, null, null, null, null);
insert into chinuch values (608, 8, null, null, null, null);
insert into chinuch values (612, 16, null, null, null, null);
insert into chinuch values (613, 17, null, null, null, null);

create table chinuchNotes (
	mitzvahNumber integer NOT NULL primary key,
	hebrewNote varChar,
	enNote varChar,
	foreign key(mitzvahNumber) references chinuch(mitzvahNumber) on delete cascade
);

insert into chinuchNotes values (12, null, 'The Chinuch uses the pasuk from Shemos 34:20 instead of the Rambam''s');
insert into chinuchNotes values (277, null, 'The Chinuch uses the pasuk from Vayikra 23:25 instead of the Rambam''s');
insert into chinuchNotes values (279, null, 'The Chinuch uses the pasuk from Vayikra 23:27 instead of the Rambam''s');
insert into chinuchNotes values (282, null, 'The Chinuch uses the pasuk from Vayikra 23:36 instead of the Rambam''s');
insert into chinuchNotes values (284, null, 'The Chinuch uses the pasuk from Vayikra 23:36 instead of the Rambam''s');
insert into chinuchNotes values (452, null, 'The Chinuch uses the pasuk from Devarim 16:16 instead of the Rambam''s');