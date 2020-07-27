.echo OFF

drop table if exists zoharHaRakiah;

create table zoharHaRakiah (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

insert into zoharHaRakiah values (1,  10,  1);
insert into zoharHaRakiah values (2,  3,   2);
insert into zoharHaRakiah values (3,  6,   3);
insert into zoharHaRakiah values (4,  8,   4);
insert into zoharHaRakiah values (5,  9,   5);
insert into zoharHaRakiah values (6,  4,   6);
insert into zoharHaRakiah values (7,  177, 7);
insert into zoharHaRakiah values (8,  15,  8);
insert into zoharHaRakiah values (9,  11,  9);
insert into zoharHaRakiah values (10, 8,   10);
insert into zoharHaRakiah values (11, 12,  11);
insert into zoharHaRakiah values (12, 235, 12);
insert into zoharHaRakiah values (13, 215, 13);
insert into zoharHaRakiah values (14, 81,  14);
insert into zoharHaRakiah values (15, 154, 15);
insert into zoharHaRakiah values (16, 930, 16);
insert into zoharHaRakiah values (17, 14,  17);
insert into zoharHaRakiah values (18, 931, 18);
insert into zoharHaRakiah values (19, 197, 19);
insert into zoharHaRakiah values (20, 19,  20);
insert into zoharHaRakiah values (21, 164, 21);
insert into zoharHaRakiah values (22, 199, 22);
insert into zoharHaRakiah values (23, 194, 23);
insert into zoharHaRakiah values (24, 209, 24);
insert into zoharHaRakiah values (25, 634, 25);
insert into zoharHaRakiah values (26, 210, 26);
insert into zoharHaRakiah values (27, 204, 27);
insert into zoharHaRakiah values (28, 79,  28);
insert into zoharHaRakiah values (29, 195, 29);
insert into zoharHaRakiah values (30, 37,  30);
insert into zoharHaRakiah values (31, 231, 31);
insert into zoharHaRakiah values (32, 188, 32);
insert into zoharHaRakiah values (33, 189, 33);
insert into zoharHaRakiah values (34, 626, 34);
insert into zoharHaRakiah values (35, 932, 35);
insert into zoharHaRakiah values (36, 156, 36);
insert into zoharHaRakiah values (37, 185, 37);
insert into zoharHaRakiah values (38, 52,  38);
insert into zoharHaRakiah values (39, 54,  39);
insert into zoharHaRakiah values (40, 207, 40);
insert into zoharHaRakiah values (41, 203, 41);
insert into zoharHaRakiah values (42, 202, 42);
insert into zoharHaRakiah values (43, 17,  43);
insert into zoharHaRakiah values (44, 205, 44);
insert into zoharHaRakiah values (45, 206, 45);
insert into zoharHaRakiah values (46, 172, 46);
insert into zoharHaRakiah values (47, 155, 47);
insert into zoharHaRakiah values (48, 21,  48);
insert into zoharHaRakiah values (49, 31,  49);
insert into zoharHaRakiah values (50, 211, 50);
insert into zoharHaRakiah values (51, 157, 51);
insert into zoharHaRakiah values (52, 130, 52);
insert into zoharHaRakiah values (53, 128, 53);
insert into zoharHaRakiah values (54, 166, 54);
insert into zoharHaRakiah values (55, 167, 55);
insert into zoharHaRakiah values (56, 127, 56);
insert into zoharHaRakiah values (57, 129, 57);
insert into zoharHaRakiah values (58, 933, 58);
insert into zoharHaRakiah values (59, 131, 59);
insert into zoharHaRakiah values (60, 78,  60);
insert into zoharHaRakiah values (61, 144, 61);
insert into zoharHaRakiah values (62, 143, 62);
insert into zoharHaRakiah values (63, 813, 63);
insert into zoharHaRakiah values (64, 630, 64);
insert into zoharHaRakiah values (65, 133, 65);
insert into zoharHaRakiah values (66, 134, 66);
insert into zoharHaRakiah values (67, 621, 67);
insert into zoharHaRakiah values (68, 135, 68);
insert into zoharHaRakiah values (69, 141, 69);
insert into zoharHaRakiah values (70, 122, 70);
insert into zoharHaRakiah values (71, 120, 71);
insert into zoharHaRakiah values (72, 123, 72);
insert into zoharHaRakiah values (73, 121, 73);
insert into zoharHaRakiah values (74, 124, 74);
insert into zoharHaRakiah values (75, 198, 75);
insert into zoharHaRakiah values (76, 196, 76);
insert into zoharHaRakiah values (77, 94,  77);
insert into zoharHaRakiah values (78, 83,  78);
insert into zoharHaRakiah values (79, 84,  79);
insert into zoharHaRakiah values (80, 635, 80);
insert into zoharHaRakiah values (81, 636, 81);
insert into zoharHaRakiah values (82, 91,  82);
insert into zoharHaRakiah values (83, 90,  83);
insert into zoharHaRakiah values (84, 55,  84);
insert into zoharHaRakiah values (85, 56,  85);
insert into zoharHaRakiah values (86, 158, 86);
insert into zoharHaRakiah values (87, 631, 87);
insert into zoharHaRakiah values (88, 934, 88);
insert into zoharHaRakiah values (89, 159, 89);
insert into zoharHaRakiah values (90, 160, 90);
insert into zoharHaRakiah values (91, 162, 91);
insert into zoharHaRakiah values (92, 163, 92);
insert into zoharHaRakiah values (93, 165, 93);
insert into zoharHaRakiah values (94, 170, 94);
insert into zoharHaRakiah values (95, 73,  95);
insert into zoharHaRakiah values (96, 168, 96);
insert into zoharHaRakiah values (97, 169, 97);
insert into zoharHaRakiah values (98, 38,  98);
insert into zoharHaRakiah values (99, 935, 99);
insert into zoharHaRakiah values (100, 936, 100);
insert into zoharHaRakiah values (101, 26,  101);
insert into zoharHaRakiah values (102, 937, 102);
insert into zoharHaRakiah values (103, 633, 103);
insert into zoharHaRakiah values (104, 63,  104);
insert into zoharHaRakiah values (105, 64,  105);
insert into zoharHaRakiah values (106, 65,  106);
insert into zoharHaRakiah values (107, 66,  107);
insert into zoharHaRakiah values (108, 67,  108);
insert into zoharHaRakiah values (109, 39,  109);
insert into zoharHaRakiah values (110, 62,  110);
insert into zoharHaRakiah values (111, 36,  111);
insert into zoharHaRakiah values (112, 29,  112);
insert into zoharHaRakiah values (113, 30,  113);
insert into zoharHaRakiah values (114, 34,  114);
insert into zoharHaRakiah values (115, 22,  115);
insert into zoharHaRakiah values (116, 23,  116);
insert into zoharHaRakiah values (117, 938, 117);
insert into zoharHaRakiah values (118, 33,  118);
insert into zoharHaRakiah values (119, 24,  119);
insert into zoharHaRakiah values (120, 20,  120);
insert into zoharHaRakiah values (121, 643, 121);
insert into zoharHaRakiah values (122, 27,  122);
insert into zoharHaRakiah values (123, 35,  123);
insert into zoharHaRakiah values (124, 25,  124);
insert into zoharHaRakiah values (125, 32,  125);
insert into zoharHaRakiah values (126, 939, 126);
insert into zoharHaRakiah values (127, 28,  127);
insert into zoharHaRakiah values (128, 46,  128);
insert into zoharHaRakiah values (129, 60,  129);
insert into zoharHaRakiah values (130, 61,  130);
insert into zoharHaRakiah values (131, 940, 131);
insert into zoharHaRakiah values (132, 941, 132);
insert into zoharHaRakiah values (133, 629, 133);
insert into zoharHaRakiah values (134, 44,  134);
insert into zoharHaRakiah values (135, 16,  135);
insert into zoharHaRakiah values (136, 176, 136);
insert into zoharHaRakiah values (137, 174, 137);
insert into zoharHaRakiah values (138, 179, 138);
insert into zoharHaRakiah values (139, 178, 139);
insert into zoharHaRakiah values (140, 224, 140);
insert into zoharHaRakiah values (141, 644, 141);
insert into zoharHaRakiah values (142, 225, 142);
insert into zoharHaRakiah values (143, 230, 143);
insert into zoharHaRakiah values (144, 942, 144);
insert into zoharHaRakiah values (145, 153, 145);
insert into zoharHaRakiah values (146, 88,  146);
insert into zoharHaRakiah values (147, 89,  147);
insert into zoharHaRakiah values (148, 943, 148);
insert into zoharHaRakiah values (149, 616, 149);
insert into zoharHaRakiah values (150, 944, 150);
insert into zoharHaRakiah values (151, 628, 151);
insert into zoharHaRakiah values (152, 53,  152);
insert into zoharHaRakiah values (153, 118, 153);
insert into zoharHaRakiah values (154, 109, 154);
insert into zoharHaRakiah values (155, 125, 155);
insert into zoharHaRakiah values (156, 132, 156);
insert into zoharHaRakiah values (157, 208, 157);
insert into zoharHaRakiah values (158, 647, 158);
insert into zoharHaRakiah values (159, 681, 159);
insert into zoharHaRakiah values (160, 945, 160);
insert into zoharHaRakiah values (161, 92,  161);
insert into zoharHaRakiah values (162, 93,  162);
insert into zoharHaRakiah values (163, 946, 163);
insert into zoharHaRakiah values (164, 232, 164);
insert into zoharHaRakiah values (165, 233, 165);
insert into zoharHaRakiah values (166, 234, 166);
insert into zoharHaRakiah values (167, 947, 167);
insert into zoharHaRakiah values (168, 182, 168);
insert into zoharHaRakiah values (169, 183, 169);
insert into zoharHaRakiah values (170, 181, 170);
insert into zoharHaRakiah values (171, 57,  171);
insert into zoharHaRakiah values (172, 58,  172);
insert into zoharHaRakiah values (173, 948, 173);
insert into zoharHaRakiah values (174, 68,  174);
insert into zoharHaRakiah values (175, 49,  175);
insert into zoharHaRakiah values (176, 104, 176);
insert into zoharHaRakiah values (177, 106, 177);
insert into zoharHaRakiah values (178, 100, 178);
insert into zoharHaRakiah values (179, 101, 179);
insert into zoharHaRakiah values (180, 41,  180);
insert into zoharHaRakiah values (181, 42,  181);
insert into zoharHaRakiah values (182, 43,  182);
insert into zoharHaRakiah values (183, 45,  183);
insert into zoharHaRakiah values (184, 47,  184);
insert into zoharHaRakiah values (185, 48,  185);
insert into zoharHaRakiah values (186, 50,  186);
insert into zoharHaRakiah values (187, 51,  187);
insert into zoharHaRakiah values (188, 69,  188);
insert into zoharHaRakiah values (189, 72,  189);
insert into zoharHaRakiah values (190, 71,  190);
insert into zoharHaRakiah values (191, 70,  191);
insert into zoharHaRakiah values (192, 145, 192);
insert into zoharHaRakiah values (193, 114, 193);
insert into zoharHaRakiah values (194, 115, 194);
insert into zoharHaRakiah values (195, 116, 195);
insert into zoharHaRakiah values (196, 117, 196);
insert into zoharHaRakiah values (197, 86,  197);
insert into zoharHaRakiah values (198, 87,  198);
insert into zoharHaRakiah values (199, 192, 199);
insert into zoharHaRakiah values (200, 193, 200);
insert into zoharHaRakiah values (201, 161, 201);
insert into zoharHaRakiah values (202, 148, 202);
insert into zoharHaRakiah values (203, 108, 203);	-- Raavad asks on Rambam why is this one mitzvah and not two, and perhaps the Zohar HaRakiah really only counts the purification
insert into zoharHaRakiah values (204, 216, 204);
insert into zoharHaRakiah values (205, 949, 205);
insert into zoharHaRakiah values (206, 217, 206);
insert into zoharHaRakiah values (207, 247, 207);
insert into zoharHaRakiah values (208, 221, 208);
insert into zoharHaRakiah values (209, 212, 209);
insert into zoharHaRakiah values (210, 213, 210);
insert into zoharHaRakiah values (211, 221, 211);
insert into zoharHaRakiah values (212, 119, 212);
insert into zoharHaRakiah values (213, 18,  213);
insert into zoharHaRakiah values (214, 173, 214);
insert into zoharHaRakiah values (215, 200, 215);
insert into zoharHaRakiah values (216, 248, 216);
insert into zoharHaRakiah values (217, 136, 217);
insert into zoharHaRakiah values (218, 137, 218);
insert into zoharHaRakiah values (219, 138, 219);
insert into zoharHaRakiah values (220, 950, 220);
insert into zoharHaRakiah values (221, 140, 221);
insert into zoharHaRakiah values (222, 59,  222);
insert into zoharHaRakiah values (223, 113, 223);
insert into zoharHaRakiah values (224, 40,  224);
insert into zoharHaRakiah values (225, 126, 225);
insert into zoharHaRakiah values (226, 622, 226);
insert into zoharHaRakiah values (227, 187, 227);
insert into zoharHaRakiah values (228, 186, 228);
insert into zoharHaRakiah values (229, 190, 229);	-- Zohar HaRakiah calls this a mitzvah to kill all the men when they refuse to remain peaceful
insert into zoharHaRakiah values (230, 625, 230);
insert into zoharHaRakiah values (231, 171, 231);
insert into zoharHaRakiah values (232, 180, 232);
insert into zoharHaRakiah values (233, 219, 233);
insert into zoharHaRakiah values (234, 218, 234);
insert into zoharHaRakiah values (235, 220, 235);
insert into zoharHaRakiah values (236, 111, 236);
insert into zoharHaRakiah values (237, 110, 237);
insert into zoharHaRakiah values (238, 112, 238);
insert into zoharHaRakiah values (239, 147, 239);
insert into zoharHaRakiah values (240, 951, 240);
insert into zoharHaRakiah values (241, 149, 241);
insert into zoharHaRakiah values (242, 152, 242);
insert into zoharHaRakiah values (243, 150, 243);
insert into zoharHaRakiah values (244, 151, 244);
insert into zoharHaRakiah values (245, 223, 245);
insert into zoharHaRakiah values (246, 184, 246);
insert into zoharHaRakiah values (247, 214, 247);
insert into zoharHaRakiah values (248, 191, 248);