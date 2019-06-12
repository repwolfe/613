.echo OFF

drop table if exists semag;
drop table if exists semagNotes;

/* Mitzvah categories are:
  0 - 
  1 - Miseder Nashim
  2 - Hechsher Maachalos
  3 - Nezikin
  4 - Nedarim UShevuos
  5 - Mikdash

  6 -
  7 - Miseder Nashim
  8 - Issurei Maaachalos (and others)
*/
create table semag (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	category integer,
	source integer,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade,
	foreign key (source) references verses(_id) on delete cascade
);

insert into semag (_id, mitzvahId, mitzvahNumber, category) values (1,    1, 1, 0);	-- Can retrieve source info from rambam when they're the same
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (2,    2, 2, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (3,    3, 3, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (4,    4, 4, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (5,    9, 5, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (6,  172, 6, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (7,    8, 7, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (8,    6, 8, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (9,  206, 9, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (10, 207, 10, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (11, 205, 11, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (12,  11, 12, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (13, 209, 13, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (14, 185, 14, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (15, 186, 15, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (16,  73, 16, 0);
insert into semag values (17, 679, 17, 0, 511);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (18,  10, 18, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (19,   5, 19, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (20,  26, 20, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (21,  13, 21, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (22,  12, 22, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (23,  15, 23, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (24,  17, 24, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (25,  18, 25, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (26,  14, 26, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (27,  19, 27, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (28, 215, 28, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (29, 155, 29, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (30, 154, 30, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (31, 165, 31, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (32, 164, 32, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (33, 159, 33, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (34, 160, 34, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (35, 162, 35, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (36, 163, 36, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (37, 166, 37, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (38, 167, 38, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (39, 156, 39, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (40, 158, 40, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (41, 157, 41, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (42, 170, 42, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (43, 168, 43, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (44, 169, 44, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (45, 171, 45, 0);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (46, 153, 46, 0);
insert into semag values (47, 680, 47, 0, 512);

-- Mitzvos Aseh MiSeder Nashim
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (48, 213, 48, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (49, 212, 49, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (50, 222, 50, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (51, 216, 51, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (52, 217, 52, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (53, 220, 53, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (54, 218, 54, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (55, 219, 55, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (56, 223, 56, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (57,  38, 57, 1);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (58,  37, 58, 1);

-- Mitzvos Aseh Shel Hechsher Maachalos
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (59, 149, 59, 2);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (60, 150, 60, 2);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (61, 151, 61, 2);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (62, 152, 62, 2);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (63, 146, 63, 2);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (64, 147, 64, 2);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (65, 148, 65, 2);

-- Mitzvos Aseh Shel Nezikin
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (66, 237, 66, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (67, 240, 67, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (68, 238, 68, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (69, 241, 69, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (70, 236, 70, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (71, 239, 71, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (72, 208, 72, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (73, 194, 73, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (74, 204, 74, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (75, 225, 75, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (76, 182, 76, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (77, 247, 77, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (78, 181, 78, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (79, 184, 79, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (80, 202, 80, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (81, 203, 81, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (82, 245, 82, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (83, 232, 83, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (84, 196, 84, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (85, 234, 85, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (86, 233, 86, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (87, 235, 87, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (88, 242, 88, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (89, 243, 89, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (90, 200, 90, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (91, 201, 91, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (92, 244, 92, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (93, 197, 93, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (94, 199, 94, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (95, 246, 95, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (96, 248, 96, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (97, 176, 97, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (98, 175, 98, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (99, 226, 99, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (100, 227, 100, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (101, 228, 101, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (102, 229, 102, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (103, 230, 103, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (104, 231, 104, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (105, 224, 105, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (106, 177, 106, 3);
insert into semag values (107, 681, 107, 3, 428);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (108, 178, 108, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (109, 179, 109, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (110, 180, 110, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (111, 174, 111, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (112, 210, 112, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (113, 211, 113, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (114, 173, 114, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (115, 188, 115, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (116, 189, 116, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (117, 187, 117, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (118, 190, 118, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (119, 192, 119, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (120, 191, 120, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (121, 214, 121, 3);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (122, 221, 122, 3);

-- Mitzvos Aseh Hateluyos BeNedarim UvShevuos
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (123,   7, 123, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (124,  94, 124, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (125,  95, 125, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (126,  92, 126, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (127,  93, 127, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (128, 114, 128, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (129, 115, 129, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (130, 116, 130, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (131, 117, 131, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (132, 145, 132, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (133, 126, 133, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (134, 129, 134, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (135, 127, 135, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (136, 128, 136, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (137, 119, 137, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (138, 131, 138, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (139, 125, 139, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (140, 132, 140, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (141, 133, 141, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (142, 143, 142, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (143, 144, 143, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (144,  80, 144, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (145,  81, 145, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (146,  82, 146, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (147, 135, 147, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (148, 134, 148, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (149, 141, 149, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (150, 140, 150, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (151, 136, 151, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (152, 137, 152, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (153, 138, 153, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (154, 139, 154, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (155, 183, 155, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (156, 120, 156, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (157, 121, 157, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (158, 122, 158, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (159, 123, 159, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (160, 124, 160, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (161, 130, 161, 4);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (162, 195, 162, 4);

-- Mitzvos HaMikdash
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (163,  20, 163, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (164,  21, 164, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (165,  22, 165, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (166,  35, 166, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (167,  28, 167, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (168,  34, 168, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (169,  23, 169, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (170,  59, 170, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (171,  32, 171, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (172,  36, 172, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (173,  33, 173, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (174,  31, 174, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (175,  24, 175, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (176,  61, 176, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (177,  86, 177, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (178,  60, 178, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (179,  62, 179, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (180,  63, 180, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (181,  64, 181, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (182,  65, 182, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (183,  66, 183, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (184,  89, 184, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (185,  88, 185, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (186,  67, 186, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (187,  83, 187, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (188,  84, 188, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (189,  85, 189, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (190,  39, 190, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (191,  29, 191, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (192,  30, 192, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (193,  25, 193, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (194,  40, 194, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (195,  41, 195, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (196,  27, 196, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (197,  42, 197, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (198,  43, 198, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (199,  44, 199, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (200, 161, 200, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (201,  45, 201, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (202,  46, 202, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (203,  47, 203, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (204,  48, 204, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (205,  50, 205, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (206,  91, 207, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (208,  90, 208, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (209,  49, 209, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (210, 118, 210, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (211,  79, 211, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (212,  78, 212, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (213,  69, 213, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (214,  70, 214, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (215,  71, 215, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (216,  72, 216, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (217,  68, 217, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (218,  74, 218, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (219,  75, 219, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (220,  76, 220, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (221,  77, 221, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (222,  87, 222, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (223,  55, 223, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (224,  57, 224, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (225,  56, 225, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (226,  58, 226, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (227,  52, 227, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (228,  53, 228, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (229,  54, 229, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (230,  16, 230, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (231, 107, 231, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (232, 113, 232, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (233, 108, 233, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (234, 101, 234, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (235, 112, 235, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (236, 110, 236, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (237, 111, 237, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (238, 102, 238, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (239, 103, 239, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (240, 104, 240, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (241,  99, 241, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (242, 106, 242, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (243, 100, 243, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (244,  96, 244, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (245,  97, 245, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (246,  98, 246, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (247, 105, 247, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (248, 109, 248, 5);

insert into semag (_id, mitzvahId, mitzvahNumber, category) values (249, 249,  1, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (250, 311,  2, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (251, 313,  3, 6);
insert into semag values (252, 682,  4, 6, 277);	-- Derech Mitzvosecha II doesn't list as a unique mitzvah this for some reason
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (253, 550,  5, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (254, 551,  6, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (255, 503,  7, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (256, 504,  8, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (257, 549,  9, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (258, 529, 10, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (259, 552, 11, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (260, 553, 12, 6);
insert into semag values (261, 683, 13, 6, 494);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (262, 258, 14, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (263, 295, 15, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (264, 308, 16, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (265, 254, 17, 6);
insert into semag values (266, 684, 18, 6, 513);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (267, 253, 19, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (268, 250, 20, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (269, 251, 21, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (270, 252, 22, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (271, 263, 23, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (272, 272, 24, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (273, 271, 25, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (274, 264, 26, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (275, 265, 27, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (276, 266, 28, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (277, 267, 29, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (278, 268, 30, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (279, 269, 31, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (280, 262, 32, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (281, 276, 33, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (282, 275, 34, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (283, 277, 35, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (284, 284, 36, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (285, 285, 37, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (286, 256, 38, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (287, 257, 39, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (288, 255, 40, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (289, 259, 41, 6);
insert into semag values (290, 685, 42, 6, 242);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (291, 260, 43, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (292, 261, 44, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (293, 273, 45, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (294, 270, 46, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (295, 296, 47, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (296, 298, 48, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (297, 299, 49, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (298, 278, 50, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (299, 281, 51, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (300, 279, 52, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (301, 280, 53, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (302, 283, 54, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (303, 282, 55, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (304, 286, 56, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (305, 291, 57, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (306, 292, 58, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (307, 287, 59, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (308, 288, 60, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (309, 289, 61, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (310, 293, 62, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (311, 419, 63, 6);
insert into semag values (312, 686, 64, 6, 514);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (313, 568, 65, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (314, 569, 66, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (315, 570, 67, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (316, 577, 68, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (317, 444, 69, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (318, 571, 70, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (319, 572, 71, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (320, 573, 72, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (321, 574, 73, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (322, 575, 74, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (323, 576, 75, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (324, 445, 76, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (325, 448, 77, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (326, 449, 78, 6);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (327, 446, 79, 6);

-- MiSeder Nashim
insert into semag values (328, 687, 80, 7, 467);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (329, 510, 81, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (330, 604, 82, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (331, 605, 83, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (332, 606, 84, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (333, 603, 85, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (334, 607, 86, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (335, 350, 87, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (336, 351, 88, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (337, 599, 89, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (338, 600, 90, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (339, 579, 91, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (340, 578, 92, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (341, 591, 93, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (342, 598, 94, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (343, 596, 95, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (344, 597, 96, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (345, 595, 97, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (346, 582, 98, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (347, 583, 99, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (348, 584, 100, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (349, 585, 101, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (350, 586, 102, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (351, 587, 103, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (352, 581, 104, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (353, 580, 105, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (354, 588, 106, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (355, 589, 107, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (356, 593, 108, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (357, 592, 109, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (358, 590, 110, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (359, 594, 111, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (360, 300, 112, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (361, 301, 113, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (362, 651, 114, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (363, 302, 115, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (364, 303, 116, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (365, 602, 117, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (366, 608, 118, 7);
insert into semag values (367, 688, 119, 7, 469);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (368, 609, 120, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (369, 406, 121, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (370, 407, 122, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (371, 408, 123, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (372, 409, 124, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (373, 410, 125, 7);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (374, 601, 126, 7);

-- Issurei Maachalos (and others)
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (375, 420, 127, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (376, 422, 128, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (377, 421, 129, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (378, 423, 130, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (379, 424, 131, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (380, 427, 132, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (381, 428, 133, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (382, 429, 134, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (383, 436, 135, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (384, 430, 136, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (385, 432, 137, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (386, 433, 138, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (387, 431, 139, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (388, 434, 140, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (389, 435, 141, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (390, 437, 142, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (391, 438, 143, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (392, 439, 144, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (393, 441, 145, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (394, 440, 146, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (395, 401, 147, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (396, 442, 148, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (397, 349, 149, 8);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (398, 554, 150, 8);


create table semagNotes (
	_id integer NOT NULL primary key,
	hebrewNote varChar,
	enNote varChar,
	foreign key(_id) references semag(_id) on delete cascade
);

insert into semagNotes values (16,  null, 'The Semag includes teshuvah in the mitzvah, whereas the Rambam only mentions vidui. However, in the beginning of Hilchos Teshuvah he writes like the Semag.');
insert into semagNotes values (47,  null, 'This sounds like the Ramban''s calcuation of leap years, but the Semag includes calculating the molad in this mitzvah and not in Kiddush HaChodesh like the Rambam and Ramban do.');
insert into semagNotes values (48,  null, 'The Rambam includes aveilus, but the Semag left it out as he holds that''s derabanan.');
insert into semagNotes values (109, null, 'The Semag left out the word "היטב" because he argues on the Rambam how extensive is the investigation.');
insert into semagNotes values (119, null, 'The Semag merges Rambam''s mitzvah #192 and #193 into one.');
insert into semagNotes values (129, null, 'The Semag uses Vayikra 27:9, unlike the Rambam who uses Vayikra 27:11.');
insert into semagNotes values (166, null, 'The Semag emphasizes making the oil whereas the Rambam emphasizes annointing the Kohanim with it.');
insert into semagNotes values (167, null, 'The Semag emphasizes making the incense whereas the Rambam emphasizes using it.');
insert into semagNotes values (170, null, 'The Rambam adds in Hilchos Taanas 1:1 to blow the trumpets at times of peril, but the Semag leaves this out.');
insert into semagNotes values (252, null, 'The Rambam counts this a mitzvah against testing a proven prophet, but the Semag says this is a mitzvah not to test Hashem by performing a mitzvah and seeing if they become blessed. The Mishneh LeMelech in Derech Mitzvosecha II points out this difference but for some reason doesn''t list this as one of the mitzvos which the Semag disagrees with the Rambam, but they''re very clearly different mitzvos.');
insert into semagNotes values (256, null, 'See Derech Mitzvosecha II.');
insert into semagNotes values (258, null, 'The Semag also includes the prohibition- against accepting loshon hara. The Rambam mentions this in  Mishneh Torah Hilchos Sanhedrin 21:7.');
insert into semagNotes values (266, null, 'The Ramban mentions this mitzvah at the end of his Hasagos to Mitzvah Lo Saaseh 5.');
insert into semagNotes values (276, null, 'The Semag defines this mitzvah slightly differently than the Rambam: not to help a Meisis in any way.');
insert into semagNotes values (280, null, 'The Semag merges Rambam Lo Saaseh #14 and #26. See Derech Mitzvosecha II.');
insert into semagNotes values (333, null, 'The Rambam sees Deuteronomy 23:18 as the source for this mitzvah, but the Semag used that verse for Mitzvah #80.');
insert into semagNotes values (360, null, 'The Semag defines this mitzvah slightly differently than the Rambam: he limits it to the seven Canaanite nations.');
insert into semagNotes values (361, null, 'Like the Ramban, the Semag splits this into two mitzvos. This one is about Ammon.');
insert into semagNotes values (366, null, 'The Rambam counts this as one mitzvah, but the Semag splits it into two. This one is about someone without beitzim.');
insert into semagNotes values (396, null, 'The Semag learns this mitzvah is forbidding eating from things used for idol worship, which includes the prohibition on drinking idol wine libations. He learns this from  Exodus 34:12. This is more like the Ramban''s understanding (see his comments on Rambam  #194), although the Ramban doesn''t count this mitzvah.');