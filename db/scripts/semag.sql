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
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (163,   20, 163, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (164,   21, 164, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (165,   22, 165, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (166,   35, 166, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (167,   28, 167, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (168,   34, 168, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (169,   23, 169, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (170,   59, 170, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (171,   32, 171, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (172,   36, 172, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (173,   33, 173, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (174,   31, 174, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (175,   24, 175, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (176,   61, 176, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (177,   86, 177, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (178,   60, 178, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (179,   62, 179, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (180,   63, 180, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (181,   64, 181, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (182,   65, 182, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (183,   66, 183, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (184,   89, 184, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (185,   88, 185, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (186,   67, 186, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (187,   83, 187, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (188,   84, 188, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (189,   85, 189, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (190,   39, 190, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (191,   29, 191, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (192,   30, 192, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (193,   25, 193, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (194,   40, 194, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (195,   41, 195, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (196,   27, 196, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (197,   42, 197, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (198,   43, 198, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (199,   44, 199, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (200,  161, 200, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (201,   45, 201, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (202,   46, 202, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (203,   47, 203, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (204,   48, 204, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (205,   50, 205, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (206,   91, 207, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (208,   90, 208, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (209,   49, 209, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (210,  118, 210, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (211,   79, 211, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (212,   78, 212, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (213,   69, 213, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (214,   70, 214, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (215,   71, 215, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (216,   72, 216, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (217,   68, 217, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (218,   74, 218, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (219,   75, 219, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (220,   76, 220, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (221,   77, 221, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (222,   87, 222, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (223,   55, 223, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (224,   57, 224, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (225,   56, 225, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (226,   58, 226, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (227,   52, 227, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (228,   53, 228, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (229,   54, 229, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (230,   16, 230, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (231,  107, 231, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (232,  113, 232, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (233,  108, 233, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (234,  101, 234, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (235,  112, 235, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (236,  110, 236, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (237,  111, 237, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (238,  102, 238, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (239,  103, 239, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (240,  104, 240, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (241,   99, 241, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (242,  106, 242, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (243,  100, 243, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (244,   96, 244, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (245,   97, 245, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (246,   98, 246, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (247,  105, 247, 5);
insert into semag (_id, mitzvahId, mitzvahNumber, category) values (248,  109, 248, 5);

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