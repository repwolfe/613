.echo OFF

drop table if exists bahag;
drop table if exists bahagNotes;

/**

The following listing follows the Machon Yerushalayim edition of Halachos Gedolos, using Rav Troib's notes.
The Bahag's listing is very confusing and there are many versions of what the list consists of and many opinions of how to divide his
mitzvos. This is just one opinion.

Mitzvah Categories
------------------
Onshim (71)
	0 - Skilah (18)
	1 - Sreifa (10) - Bahag himself counts nine, but Rav Troib notes that ten were listed
	2 - Hereg (2)
	3 - Chenek (9) - Rav Hildisheimer points out the Bahag at the end of the sefer counts 8, and the former counts 7, but Rav Troib leaves it at 9
	4 - Kares (21) - Bahag lists 23, but Rav Troib takes out Pesach and Milah, which are Aseh. This way the total is 71
	5 - Misah Bidei Shamayim (11)

6 - Lo Saaseh on Yechidim (277) - Bahag lists 282 (and says he counts 277), but Rav Troib takes out 5 of them which were already counted: 16, 21, 28, 29, 30

7 - Aseh on Yechidim (200)

8 - Parshiyos (65) - 48 Aseh and 17 Lo Saaseh
*/
create table bahag (
	_id integer NOT NULL primary key unique,
	mitzvahId integer NOT NULL unique,
	categoryNum integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	mitzvahTitle varchar NOT NULL,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

-- Onshim (71)

-- 0 - Skilah (18)
insert into bahag values (1,  578, 0, 1,  'הבא על האם');
insert into bahag values (2,  579, 0, 2,  'ועל אשת אב');
insert into bahag values (3,  591, 0, 3,  'ועל הכלה');
insert into bahag values (4,  598, 0, 4,  'והבא על הזכר');
insert into bahag values (5,  596, 0, 5,  'ועל הבהמה');
insert into bahag values (6,  597, 0, 6,  'והאשה הנרבעת לבהמה');
insert into bahag values (7,  308, 0, 7,  'והמגדף');
insert into bahag values (8,  254, 0, 8,  'והעובד ע"ז');
insert into bahag values (9,  255, 0, 9,  'והנותן מזרעו למולך');
insert into bahag values (10, 256, 0, 10, 'ובעל אוב');
insert into bahag values (11, 257, 0, 11, 'וידעוני');
insert into bahag values (12, 568, 0, 12, 'והמחלל את השבת');
insert into bahag values (13, 566, 0, 13, 'והמבקלל אביו ואמו');
insert into bahag values (14, 695, 0, 14, 'והבא על נערה מאורשה');
insert into bahag values (15, 264, 0, 15, 'והמסית');
insert into bahag values (16, 263, 0, 16, 'והמדיח');
insert into bahag values (17, 282, 0, 17, 'ומכשף');
insert into bahag values (18, 443, 0, 18, 'ובן סורר ומורה');

-- 1 - Sreifa (10)
insert into bahag values (19, 585, 1, 19, 'הבא על אשה ובתה');
insert into bahag values (20, 584, 1, 20, 'ויש בכלל אשה ובתה הבא על בתו');
insert into bahag values (21, 583, 1, 21, 'ועל בת בתו');
insert into bahag values (22, 582, 1, 22, 'ועל בת בנו');
insert into bahag values (23, 586, 1, 23, 'ועל בת אשתו ועל בת בנה');
insert into bahag values (24, 587, 1, 24, 'ועל בת בתה');
insert into bahag values (25, 696, 1, 25, 'ועל חמותו');
insert into bahag values (26, 697, 1, 26, 'ואם חמותו');
insert into bahag values (27, 698, 1, 27, 'ואם חתיו');
insert into bahag values (28, 699, 1, 28, 'ובת כהן כי תזנה');

-- 2 - Hereg (2)
insert into bahag values (29, 537, 2, 29, 'רוצח');
insert into bahag values (30, 700, 2, 30, 'אנשי עיר הנדחת');

-- 3 - Chenek (9)
insert into bahag values (31, 567, 3, 31, 'מכה אביו ואמו');
insert into bahag values (32, 491, 3, 32, 'וגונב נפש מישראל');
insert into bahag values (33, 701, 3, 33, 'וזקן ממרא על פי בית דין');
insert into bahag values (34, 275, 3, 34, 'ונביא שקר');
insert into bahag values (35, 274, 3, 35, 'והמתנבא בשם ע"ז');
insert into bahag values (36, 595, 3, 36, 'והבא על אשת איש');
insert into bahag values (37, 702, 3, 37, 'והיא עמו');
insert into bahag values (38, 703, 3, 38, 'וזוממי בת כהן');
insert into bahag values (39, 704, 3, 39, 'ובועלה');

-- 4 - Kares (21)
insert into bahag values (40, 580, 4, 40, 'הבא על אחותו');
insert into bahag values (41, 588, 4, 41, 'ועל אחות אביו');
insert into bahag values (42, 589, 4, 42, 'ועל אחות אמו');
insert into bahag values (43, 593, 4, 43, 'ועל אחות אשתו');
insert into bahag values (44, 592, 4, 44, 'ועל שאת אחיו');
insert into bahag values (45, 590, 4, 45, 'ועל אשת אחי אביו');
insert into bahag values (46, 594, 4, 46, 'ועל הנדה');
insert into bahag values (47, 433, 4, 47, 'והאוכל חלב');
insert into bahag values (48, 432, 4, 48, 'ודם');
insert into bahag values (49, 445, 4, 49, 'והאוכל חמץ בפסח');
insert into bahag values (50, 444, 4, 50, 'והאוכל');
insert into bahag values (51, 577, 4, 51, 'והעושה מלאכה ביום הכפורים');
insert into bahag values (52, 379, 4, 52, 'והאוכל נותר');
insert into bahag values (53, 380, 4, 53, 'ופיגול');
insert into bahag values (54, 377, 4, 54, 'וטמא שאכל קדש');
insert into bahag values (55, 325, 4, 55, 'והבא למקדש טמא');
insert into bahag values (56, 338, 4, 56, 'והשוחט');
insert into bahag values (57, 337, 4, 57, 'והמעלה עולה בחוץ');
insert into bahag values (58, 331, 4, 58, 'והמפטם את השמן');
insert into bahag values (59, 332, 4, 59, 'והסך את שמן המשחה');
insert into bahag values (60, 333, 4, 60, 'והמפטם את הקטורת');
--insert into bahag values (61, _, 4, 61, 'שלא עשה פסח');	-- Rav Troib takes these out
--insert into bahag values (62, _, 4, 62, 'ושלא מל');		-- Rav Troib takes these out

-- 5 - Misah Bidei Shamayim (11)
insert into bahag values (61, 401, 5, 61, 'האוכל את הטבל');
insert into bahag values (62, 384, 5, 62, 'כהן טמא שאכל תרומה טהורה');
insert into bahag values (63, 381, 5, 63, 'וזר שאכל תרומה');
insert into bahag values (64, 322, 5, 64, 'וזר ששימש במקדש');
insert into bahag values (65, 323, 5, 65, 'וטמא ששימש');
insert into bahag values (66, 412, 5, 66, 'ומחוסר בגדים ששימש');
insert into bahag values (67, 705, 5, 67, 'ומחוסר כפורים');
insert into bahag values (68, 324, 5, 68, 'וטבול יום ששימש');
insert into bahag values (69, 706, 5, 69, 'ולא רחוץ ידים ורגלים');
insert into bahag values (70, 321, 5, 70, 'ושתויי יין');
insert into bahag values (71, 411, 5, 71, 'ופרוע ראש ששימשו במקדש');

-- 6 - Lo Saaseh on Yechidim (277)
insert into bahag values (72, 431, 6, 1,  'לא יאכלו בנ"י את גיד הנשה');
insert into bahag values (73, 375, 6, 2,  'פסח כל ערל לא יאכל בו');
insert into bahag values (74, 376, 6, 3,  'כל בן נכר לא יאכל בו');
insert into bahag values (75, 374, 6, 4,  'תושב ושכיר לא יאכל בו');
insert into bahag values (76, 373, 6, 5,  'אל תאכלו ממנו נא ובשל מבושל במים');
insert into bahag values (77, 363, 6, 6,  'לא תשחט על חמץ דם זבחי');
insert into bahag values (78, 364, 6, 7,  'לא ילין חלב חגי עד בקר');
insert into bahag values (79, 707, 6, 8,  'לא ילין לבקר זבח חג הפסח');
insert into bahag values (80, 366, 6, 9,  'לא ילין מן הבשר אשר תזבח בערב');
insert into bahag values (81, 371, 6, 10, 'לא תיציא מן הבית הבשר חוצה');
insert into bahag values (82, 369, 6, 11, 'ועצם לא תשברו בו');
insert into bahag values (83, 365, 6, 12, 'לא תותירו ממנו עד בקר');
insert into bahag values (84, 449, 6, 13, 'שבעת ימים שאר לא ימצא בבתיכם');
insert into bahag values (85, 448, 6, 14, 'לא יראה לך חמץ');
insert into bahag values (86, 708, 6, 15, 'ולא יראה לך שאר');
--insert into bahag values (87, 568, 6, 16, 'ולא תעשה מלאכה דלאו מאבות מלאכות בשבת');		-- Rav Troib takes this out, as it was counted in Skila (cf. Ramban)
insert into bahag values (87, 571, 6, 16, 'ובמלאכת עבודה בראשון');
insert into bahag values (88, 572, 6, 17, 'ובשביעי של פסח');
insert into bahag values (89, 573, 6, 18, 'ושל עצרת');
insert into bahag values (90, 574, 6, 19, 'וביום הזכרון');
--insert into bahag values (91, 577, 6, 20, 'וביוה"כ');		-- Rav Troib takes this out, as it was counted in Kares
insert into bahag values (91, 575, 6, 20, 'ובראשון');
insert into bahag values (92, 576, 6, 21, 'ושמיני של חג הסוכות');
insert into bahag values (93, 404, 6, 22, 'לא יראו פני ריקם');
insert into bahag values (94, 294, 6, 23, 'לא תוסיף לראותם עוד עד עולם');
insert into bahag values (95, 249, 6, 24, 'לא יהיה לך');
insert into bahag values (96, 310, 6, 25, 'לא תשא');
--insert into bahag values (97, 537, 6, 26, 'לא תרצח');		-- Rav Troib takes this out, as it was counted in Hereg
--insert into bahag values (98, 595, 6, 27, 'לא תנאף');		-- Rav Troib takes this out, as it was counted in Chenek
--insert into bahag values (99, 491, 6, 28, 'לא תגנוב');		-- Rav Troib takes this out, as it's referring to kidnapping, and was counted in Chenek
insert into bahag values (97, 533, 6, 26, 'לא תענה');
insert into bahag values (98, 513, 6, 27, 'לא תחמוד');
insert into bahag values (99, 514, 6, 28, 'לא תתאוה');
insert into bahag values (100, 327, 6, 29, 'לא תבנה אתהן גזית');
insert into bahag values (101, 328, 6, 30, 'לא תעלה במעלות');
insert into bahag values (102, 509, 6, 31, 'לא ימשל למכרה');
insert into bahag values (103, 510, 6, 32, 'שארה כסותה וענתה לא יגרע');
insert into bahag values (104, 500, 6, 33, 'וגר לא תונו');
insert into bahag values (105, 501, 6, 34, 'ולא תלחצנו');
insert into bahag values (106, 504, 6, 35, 'כל אלמנה ויתום לא תענון');
insert into bahag values (107, 482, 6, 36, 'לא תהיה לו כנושה');
insert into bahag values (108, 485, 6, 37, 'לא תשימון עליו נשך');
insert into bahag values (109, 483, 6, 38, 'את כספך לא תתן לו בנשך');
insert into bahag values (110, 709, 6, 39, 'ובמרבית לא תתן אכלך');
insert into bahag values (111, 563, 6, 40, 'אלהים לא תקלל');
insert into bahag values (112, 564, 6, 41, 'ונשיא בעמך לא תאור');
insert into bahag values (113, 402, 6, 42, 'מלאתך ודמעך לא תאחר');	-- 
insert into bahag values (114, 429, 6, 43, 'טרפה לא תאכלו');
insert into bahag values (115, 529, 6, 44, 'לא תשא שמע שוא');
insert into bahag values (116, 534, 6, 45, 'לא תשת ידך עם רשע');
insert into bahag values (117, 530, 6, 46, 'לא תהיה אחרי רבים לרעות');
insert into bahag values (118, 531, 6, 47, 'לא תענה על ריב לנטות');
insert into bahag values (119, 525, 6, 48, 'ודל לא תהדר בריבו');
insert into bahag values (120, 526, 6, 49, 'לא תטה משפט אביונך בריבו');
insert into bahag values (121, 538, 6, 50, 'ונקי וצדיק אל תהרוג');
insert into bahag values (122, 262, 6, 51, 'ושם אלהים אחרים לא תזכירו');
insert into bahag values (123, 710, 6, 52, 'ולא ישמע על פיך');
insert into bahag values (124, 434, 6, 53, 'לא תבשל גדי בחלב אמו');
insert into bahag values (125, 711, 6, 54, 'לא תעשה כמעשיהם');
insert into bahag values (126, 278, 6, 55, 'ובחוקותיהם לא תלכו');
insert into bahag values (127, 300, 6, 56, 'לא תתחתן בם בתך לא תתן לבנו ותבו לא תקח לבנך');
insert into bahag values (128, 296, 6, 57, 'לא תכרות להם ולאלהיהם ברית');
insert into bahag values (129, 298, 6, 58, 'ולא תחנם');
insert into bahag values (130, 299, 6, 59, 'לא ישבו בארצך');
insert into bahag values (131, 334, 6, 60, 'לא יסורו ממנו');
insert into bahag values (132, 335, 6, 61, 'ולא יזח החשן');
insert into bahag values (133, 570, 6, 62, 'לא תבערו אש');
insert into bahag values (134, 712, 6, 63, 'בכנפיו לא יבדיל');
insert into bahag values (135, 346, 6, 64, 'כל שאר וכל דבש לא תקטירו');
insert into bahag values (136, 386, 6, 65, 'מנחת כהן לא תאכל');
insert into bahag values (137, 713, 6, 66, 'ראשיכם אל תפרעו');
insert into bahag values (138, 714, 6, 67, 'ובגדיכם לא תפרומו');
insert into bahag values (139, 414, 6, 68, 'לנפש לא יטמא בעמיו');
insert into bahag values (140, 715, 6, 69, 'לא יטמא בעל בעמיו להחלו');
insert into bahag values (141, 716, 6, 70, 'לא יקרחו קרחה');
insert into bahag values (142, 717, 6, 71, 'ופאת זקנם לא יגלחו');
insert into bahag values (143, 718, 6, 72, 'לא ישרטו שרטת');
insert into bahag values (144, 719, 6, 73, 'לא יחללו שם אליהיהם');
insert into bahag values (145, 407, 6, 74, 'אשה זונה וחללה לא יקחו');
insert into bahag values (146, 408, 6, 75, 'גורשה מאישה לא יקחו');
insert into bahag values (147, 409, 6, 76, 'וכהן גדול אלמנה לא יקח');
insert into bahag values (148, 720, 6, 77, '[כה"ג] לא יפרע');
insert into bahag values (149, 721, 6, 78, '[כה"ג] לא יפרום');
insert into bahag values (150, 413, 6, 79, 'ומן המקדש לא יצא');
insert into bahag values (151, 675, 6, 80, 'ולא יחלל (שם) [את מקדש] אלהיו');
insert into bahag values (152, 410, 6, 81, 'ולא יחלל זרעו בעמיו');
insert into bahag values (153, 318, 6, 82, 'לחם אלהיו לא יגש להקריב');
insert into bahag values (154, 317, 6, 83, 'אל הפרכת לא יבוא');
insert into bahag values (155, 722, 6, 84, 'ואל המזבח לא יגש');
insert into bahag values (156, 723, 6, 85, 'בקדשים לא יאכל');
insert into bahag values (157, 385, 6, 86, 'היא בתרומת הקדשים לא תאכל');
insert into bahag values (158, 724, 6, 87, 'ולא יחללו את קדשי בנ"י');
insert into bahag values (159, 428, 6, 88, 'נבלה או טרפה לא יאכל');
insert into bahag values (160, 420, 6, 89, 'לא תאכלו ממעלי הגרה וממפריסי הפרסה');
insert into bahag values (161, 422, 6, 90, 'תשקצו מן העוף לא יאכלו');
insert into bahag values (162, 421, 6, 91, 'כל אשר אין לו סנפיר וקשקשת לא תאכלו');
insert into bahag values (163, 725, 6, 92, 'וכל אשר אין לו ארבע רגלים וארבע כנפים וקרסוליו וכנפיו חופין את רובו לא תאכלו');
insert into bahag values (164, 423, 6, 93, 'שרץ העוף');
insert into bahag values (165, 427, 6, 94, 'שרץ המים');
insert into bahag values (166, 424, 6, 95, 'שרץ ארץ לא תאכלו (לא) [אל] תשקצו את נפשותיכם ולא תטמאו את נפשותיכם');
insert into bahag values (167, 378, 6, 96, 'אשר יגע בכל טמא לא יאכל');
insert into bahag values (168, 458, 6, 97, 'לא תכלה פאת שדך');
insert into bahag values (169, 459, 6, 98, 'ולקט קצירך לא תלקט');
insert into bahag values (170, 492, 6, 99, 'לא תגנובו');
insert into bahag values (171, 496, 6, 100, 'לא תכחשו');
insert into bahag values (172, 497, 6, 101, 'לא תשקרו איש בעמיתו');
insert into bahag values (173, 309, 6, 102, 'לא תשבעו בשמי לשקר');
insert into bahag values (174, 495, 6, 103, 'לא תעשוק');
insert into bahag values (175, 493, 6, 104, 'לא תגזול');
insert into bahag values (176, 486, 6, 105, 'לא תלין פעולת שכיר');
insert into bahag values (177, 565, 6, 106, 'לא תקלל חרש');
insert into bahag values (178, 547, 6, 107, 'לא תתן מכשול');
insert into bahag values (179, 521, 6, 108, 'לא תעשו עול במשפט');
insert into bahag values (180, 425, 6, 109, 'לא תשא פני דל');
insert into bahag values (181, 523, 6, 110, 'ולא תהדר פני גדול');
insert into bahag values (182, 549, 6, 111, 'לא תלך רכיל');
insert into bahag values (183, 545, 6, 112, 'לא תעמוד על דם רעך');
insert into bahag values (184, 550, 6, 113, 'לא תשנא את אחיך בלבבך');
insert into bahag values (185, 551, 6, 114, 'ולא תשא עליו חטא');
insert into bahag values (186, 552, 6, 115, 'לא תקום');
insert into bahag values (187, 553, 6, 116, 'ולא תטור בני עמך');
insert into bahag values (188, 465, 6, 117, 'בהמתך לא תרביע כלאים');
insert into bahag values (189, 463, 6, 118, 'שדך לא תזרע כלאים');
insert into bahag values (190, 726, 6, 119, 'ובגד שעטנז לא יעלה עליך');
insert into bahag values (191, 440, 6, 120, 'ערלים לא יאכל');
insert into bahag values (192, 727, 6, 121, 'לא תאכלו על הדם');	
insert into bahag values (193, 281, 6, 122, 'לא תנחשו');
insert into bahag values (194, 280, 6, 123, 'ולא תעוננו');
insert into bahag values (195, 291, 6, 124, 'לא תקיפו פאת ראשכם');
insert into bahag values (196, 292, 6, 125, 'לא תשחית [את] פאת זקנך');
insert into bahag values (197, 293, 6, 126, 'ושרט [לנפש] לא תתנו בבשרכם');
insert into bahag values (198, 289, 6, 127, 'וכתובת קעקע לא תתנו בכם');
insert into bahag values (199, 603, 6, 128, 'אל תתנו את בתך להזנותה');
insert into bahag values (200, 674, 6, 129, 'ולא תזנה הארץ');
insert into bahag values (201, 519, 6, 130, 'לא תעשו עול במשפט במדה במשקל ובמשורה');
insert into bahag values (202, 349, 6, 131, 'אותו ואת בנו תשחטו ביום אחד');
insert into bahag values (203, 311, 6, 132, 'ולא תחללו את שם קדשי');
insert into bahag values (204, 728, 6, 133, 'עורת או שבור לא תקריבו');
insert into bahag values (205, 729, 6, 134, 'ומעוך וכתות ונתוק וכרות לא תקריבו');
insert into bahag values (206, 609, 6, 135, 'ובארצכם לא תעשו');
insert into bahag values (207, 344, 6, 136, 'ומיד בן נכר לא תקריבו');
insert into bahag values (208, 345, 6, 137, 'כל מום לא יהיה בו');
insert into bahag values (209, 437, 6, 138, 'ולחם וקלי וכרמל לא תאכלו');
insert into bahag values (210, 468, 6, 139, 'ובשביעית שדך לא תזרע');
insert into bahag values (211, 469, 6, 140, 'וכרמך לא תזמור');
insert into bahag values (212, 470, 6, 141, 'ספיח קצירך לא תקצור');
insert into bahag values (213, 471, 6, 142, 'ענבי נזיריך לא תבצור');
insert into bahag values (214, 472, 6, 143, 'ביובל לא תזרעו');
insert into bahag values (215, 473, 6, 144, 'ולא תקצרו את ספיחיה');
insert into bahag values (216, 474, 6, 145, 'ולא תבצרו את נזיריה');
insert into bahag values (217, 499, 6, 146, 'לא תונו איש את עמיתו');
insert into bahag values (218, 507, 6, 147, 'לא תרדה בו בפרך');
insert into bahag values (219, 506, 6, 148, 'לא ימכרו ממכרת עבד');
insert into bahag values (220, 505, 6, 149, 'לא תעבוד בו עבודת עבד');
insert into bahag values (221, 260, 6, 150, 'אבן משכית לא תתנו בארצכם');
insert into bahag values (222, 671, 6, 151, 'לא יבואו לראות כבלע');
insert into bahag values (223, 450, 6, 152, 'נזיר יין ושכר וחומץ יין לא ישתה');
insert into bahag values (224, 730, 6, 153, 'וכל משרת ענבים לא ישתה');
insert into bahag values (225, 451, 6, 154, 'לחים ויבשים לא יאכל');
insert into bahag values (226, 453, 6, 155, 'מחרצנים ועד זג לא יאכל');
insert into bahag values (227, 457, 6, 156, 'תער לא יעבור על ראשו');
insert into bahag values (228, 456, 6, 157, 'על נפש מת לא יבא');
insert into bahag values (229, 455, 6, 158, 'לאביו ולאמו לאחיו ולאחותו לא יטמא להם');
insert into bahag values (230, 672, 6, 159, 'לוי לא יעבוד עוד');
insert into bahag values (231, 295, 6, 160, 'לא תתורו אחרי לבבכם ואחרי עיניכם');
insert into bahag values (232, 689, 6, 161, 'ולא יהיה כקרח');
insert into bahag values (233, 731, 6, 162, 'לא תחניפו את הארץ');
insert into bahag values (234, 676, 6, 163, 'ולא תטמא את הארץ');
insert into bahag values (235, 524, 6, 164, 'לא תגורו מפני איש');
insert into bahag values (236, 649, 6, 165, 'פן תשכח את הדברים');
insert into bahag values (237, 648, 6, 166, 'פן תשכח את ה''');
insert into bahag values (238, 312, 6, 167, 'לא תנסו את ה''');
insert into bahag values (239, 732, 6, 168, 'לא תחוס עינך עליהם');
insert into bahag values (240, 270, 6, 169, 'לא תחמוד כסף וזהב עליהם');
insert into bahag values (241, 273, 6, 170, 'ולא תביא תועבה');
insert into bahag values (242, 733, 6, 171, 'אל תאמר בלבבך בהדוף [בצדקצי הביאני ה'']');
insert into bahag values (243, 734, 6, 172, 'וערפכם לא תקשו עוד');
insert into bahag values (244, 313, 6, 173, 'לא תעשון כן לה''');
insert into bahag values (245, 430, 6, 174, 'לא תאכל הנפש עם הבשר');
insert into bahag values (246, 735, 6, 175, 'לא תעשון ככל אשר אנחנו עושים');
insert into bahag values (247, 276, 6, 176, 'לא תשמע אל דברי הנביא ההוא');
insert into bahag values (248, 736, 6, 177, 'לא תוכל לאכול בשעריך');
insert into bahag values (249, 737, 6, 178, 'והלוי לא תעזבנו');
insert into bahag values (250, 738, 6, 179, 'לא תתגודדו');
insert into bahag values (251, 419, 6, 180, 'ולא תשימו קרחה');
insert into bahag values (252, 388, 6, 181, 'לא תאכל כל תועבה');
insert into bahag values (253, 561, 6, 182, 'לא תוסיף עליו');
insert into bahag values (254, 562, 6, 183, 'ולא תגרע ממנו');
insert into bahag values (255, 478, 6, 184, 'לא יגוש את רעהו');
insert into bahag values (256, 480, 6, 185, 'לא תאמץ');
insert into bahag values (257, 739, 6, 186, 'לא תקפץ');
insert into bahag values (258, 670, 6, 187, 'ולא ירע לבבך');
insert into bahag values (259, 481, 6, 188, 'לא תשלחנו ריקם');
insert into bahag values (260, 667, 6, 189, 'לא יקשה בעינך');
insert into bahag values (261, 361, 6, 190, 'לא תעבוד בבכור שורך');
insert into bahag values (262, 362, 6, 191, 'ולא תגוז בכור צאנך');
insert into bahag values (263, 271, 6, 192, 'לא תבנה עוד');
insert into bahag values (264, 272, 6, 193, 'ולא ידבק בידך מאומה');
insert into bahag values (265, 614, 6, 194, 'לא תוכל לזבוח את הפסח');
insert into bahag values (266, 740, 6, 195, 'לא תטה משפט');
insert into bahag values (267, 741, 6, 196, 'ולא תכיר פנים');
insert into bahag values (268, 522, 6, 197, 'לא תקח שוחד');
insert into bahag values (269, 261, 6, 198, 'לא תטע לך אשרה');
insert into bahag values (270, 259, 6, 199, 'לא תקים לך מצבה');
insert into bahag values (271, 343, 6, 200, 'לא תזבח לה'' אלהיך');
insert into bahag values (272, 560, 6, 201, 'לא תסור מן הדבר');
insert into bahag values (273, 742, 6, 202, 'לא יזידון עוד');
insert into bahag values (274, 611, 6, 203, 'לא ירבה לו סוסים');
insert into bahag values (275, 743, 6, 204, 'לא ישיב את העם');
insert into bahag values (276, 744, 6, 205, 'לא תוסיפון לשוב');
insert into bahag values (277, 612, 6, 206, 'לא ירבה לו נשים');
insert into bahag values (278, 613, 6, 207, 'וכסף וזהב לא ירבה לו מאד');
insert into bahag values (279, 279, 6, 208, 'לא ימצא בך מעביר בנו ובתו באש');
insert into bahag values (280, 494, 6, 209, 'לא תשיג גבול');
insert into bahag values (281, 536, 6, 210, 'לא יקום עד אחד באיש');
insert into bahag values (282, 277, 6, 211, 'לא תגור ממנו');
insert into bahag values (283, 297, 6, 212, 'לא תחיה כל נשמה');
insert into bahag values (284, 305, 6, 213, 'לא תשחית את עצה');
insert into bahag values (285, 745, 6, 214, 'ואותו לא תכרות');
insert into bahag values (286, 557, 6, 215, 'לא יעבד בו');
insert into bahag values (287, 746, 6, 216, 'ולא יזרע');
insert into bahag values (288, 511, 6, 217, 'לא תמכרנה בכסף');
insert into bahag values (289, 512, 6, 218, 'לא תתעמר בה');
insert into bahag values (290, 314, 6, 219, 'לא תלין נבלתו');
insert into bahag values (291, 747, 6, 220, 'לא תראה שורו נדחים');
insert into bahag values (292, 518, 6, 221, 'לא תראה חמור נופלים');
insert into bahag values (293, 517, 6, 222, 'וכל אבדה לא תוכל להתעלם');
insert into bahag values (294, 287, 6, 223, 'לא יהיה כלי גבר');
insert into bahag values (295, 288, 6, 224, 'ולא ילבש גבר');
insert into bahag values (296, 554, 6, 225, 'לא תקח האם');
insert into bahag values (297, 546, 6, 226, 'לא תשים דמים');
insert into bahag values (298, 466, 6, 227, 'לא תחרוש בשור ובחמור');
insert into bahag values (299, 464, 6, 228, 'לא תזרע כרמך');
insert into bahag values (300, 290, 6, 229, 'לא תלבש שעטנז');
insert into bahag values (301, 607, 6, 230, 'ומוש"ר (וענשו אותו מאה כסף) לא יוכל לשלחה');
insert into bahag values (302, 606, 6, 231, 'ואונס לא יוכל לשלחה');
insert into bahag values (303, 748, 6, 232, 'לא יגלה כנף אביו');
insert into bahag values (304, 608, 6, 233, 'לא יבוא פצוע דכא');
insert into bahag values (305, 602, 6, 234, 'לא יבוא ממזר');
insert into bahag values (306, 301, 6, 235, 'לא יבוא עמוני');
insert into bahag values (307, 749, 6, 236, 'לא יבוא להם עד עולם');
insert into bahag values (308, 304, 6, 237, 'לא תדרוש שלומם וטובתם');
insert into bahag values (309, 302, 6, 238, 'לא תתעב אדומי');
insert into bahag values (310, 303, 6, 239, 'לא תתעב מצרי');
insert into bahag values (311, 326, 6, 240, 'לא יבוא בעל קרי אל תוך המחנה');
insert into bahag values (312, 662, 6, 241, 'לא יראה בך ערות דבר');
insert into bahag values (313, 502, 6, 242, 'לא תסגיר עבד');
insert into bahag values (314, 503, 6, 243, 'לא תוננו');
insert into bahag values (315, 687, 6, 244, 'לא תהיה קדשה');
insert into bahag values (316, 750, 6, 245, 'ולא יהיה קדש');
insert into bahag values (317, 348, 6, 246, 'לא תביא אתנן זונה ומחיר כלב');
insert into bahag values (318, 484, 6, 247, 'לא תשיך לאחיך');
insert into bahag values (319, 403, 6, 248, 'לא תאחר לשלמו');
insert into bahag values (320, 516, 6, 249, 'ואל כליך לא תתן');
insert into bahag values (321, 515, 6, 250, 'וחרמש לא תניף');
insert into bahag values (322, 604, 6, 251, 'לא יוכל בעלה הראשון');
insert into bahag values (323, 673, 6, 252, 'לא תחטיא הארץ');
insert into bahag values (324, 559, 6, 253, 'ולא יצא בצבא');
insert into bahag values (325, 751, 6, 254, 'ולא יעבר עליו לכל דבר');
insert into bahag values (326, 490, 6, 255, 'ולא יחבול ריחים');
insert into bahag values (327, 661, 6, 256, 'לא ימס את לבב אחיו');
insert into bahag values (328, 487, 6, 257, 'לא תבוא אל ביתו לעבוט עבוטו');
insert into bahag values (329, 488, 6, 258, 'לא תשכב בעבוטו');
insert into bahag values (330, 752, 6, 259, 'לא תעשק שכיר');
insert into bahag values (331, 753, 6, 260, 'לא תבוא עליו השמש');
insert into bahag values (332, 535, 6, 261, 'לא יומתו אבות');
insert into bahag values (333, 528, 6, 262, 'לא תטה משפט גר יתום');
insert into bahag values (334, 489, 6, 263, 'לא תחבול בגד [אלמנה]');
insert into bahag values (335, 462, 6, 264, 'לא תשוב לקחתו');
insert into bahag values (336, 548, 6, 265, 'ארבעים יכנו ולא יוסיף');
insert into bahag values (337, 754, 6, 266, 'זיתך לא תפאר');
insert into bahag values (338, 460, 6, 267, 'כרמך לא תעולל');
insert into bahag values (339, 467, 6, 268, 'לא תחסום שור');
insert into bahag values (340, 605, 6, 269, 'לא תהיה אשת המת [החוצה]');
insert into bahag values (341, 541, 6, 270, 'וקצצה את כפה לא תחוס עיניך');
insert into bahag values (342, 520, 6, 271, 'לא יהיה לך בכיסך');
insert into bahag values (343, 755, 6, 272, 'לא יהיה לך בביתך איפה');
insert into bahag values (344, 399, 6, 273, 'לא אכלתי באני ממנו');
insert into bahag values (345, 398, 6, 274, 'ולא בערתי ממנו בטמא');
insert into bahag values (346, 400, 6, 275, 'לא נתתי ממנו למת');
insert into bahag values (347, 756, 6, 276, 'לא תניף עליהם ברזל');
insert into bahag values (348, 757, 6, 277, 'לא תסור מכל הדברים');

-- 7 - Aseh on Yechidim (200)
insert into bahag values (349, 10,  7, 1,   'קרית שמע');
insert into bahag values (350, 12,  7, 2,   'ותפילין');	
insert into bahag values (351, 15,  7, 3,   'ומזוזה');
insert into bahag values (352, 14,  7, 4,   'ציצית');
insert into bahag values (353, 215, 7, 5,   'ומילה');
insert into bahag values (354, 80,  7, 6,   'פדיון הבן');
insert into bahag values (355, 81,  7, 7,   'ופדיון פטר חמור');
insert into bahag values (356, 79,  7, 8,   'והפרשת בכורות שור וכבש או עז');
insert into bahag values (357, 212, 7, 9,   'ופריה ורביה');
insert into bahag values (358, 126, 7, 10,  'תרומה גדולה');
insert into bahag values (359, 127, 7, 11,  'ומעשר ראשון');
insert into bahag values (360, 129, 7, 12,  'תרומת מעשר');
insert into bahag values (361, 128, 7, 13,  'מעשר שני');
insert into bahag values (362, 130, 7, 14,  'ומעשר עני');
insert into bahag values (363, 144, 7, 15,  'ראשית הגז');
insert into bahag values (364, 143, 7, 16,  'והמתנות');
insert into bahag values (365, 133, 7, 17,  'חלה');
insert into bahag values (366, 125, 7, 18,  'בכורים');
insert into bahag values (367, 171, 7, 19,  'שקלים');
insert into bahag values (368, 758, 7, 20,  'עורות קדשים');
insert into bahag values (369, 759, 7, 21,  'והמורם תרומה מתודה');
insert into bahag values (370, 760, 7, 22,  'וחזה ושוק');
insert into bahag values (371, 19,  7, 23,  'וברכת המזון');
insert into bahag values (372, 11,  7, 24,  'ותלמוד תורה');
insert into bahag values (373, 5,   7, 25,  'מאה ברכות בכל יום');
insert into bahag values (374, 9,   7, 26,  'קידוש השם');
insert into bahag values (375, 3,   7, 27,  'ואהבת השם');
insert into bahag values (376, 4,   7, 28,  'ויראת השם');
insert into bahag values (377, 761, 7, 29,  'לעבד השם');
insert into bahag values (378, 7,   7, 30,  'להשבע בשם');
insert into bahag values (379, 6,   7, 31,  'ולדבק בשם');
insert into bahag values (380, 8,   7, 32,  'וללכת בדרכיו');
insert into bahag values (381, 762, 7, 33,  'להלביש ערומים');
insert into bahag values (382, 763, 7, 34,  'לקבור מתים');
insert into bahag values (383, 764, 7, 35,  'לנחם אבילים');
insert into bahag values (384, 765, 7, 36,  'בקור חולים');
insert into bahag values (385, 766, 7, 37,  'ואהבת שלום. וצדק אמת');	
insert into bahag values (386, 851, 7, 38,  'ללמוד');
insert into bahag values (387, 767, 7, 39,  'וללמד');
insert into bahag values (388, 768, 7, 40,  'לשמור');
insert into bahag values (389, 769, 7, 41,  'ולעשות');
insert into bahag values (390, 94,  7, 42,  'מוצא שפתיך תשמור ועשית');
insert into bahag values (391, 211, 7, 43,  'מורא');
insert into bahag values (392, 210, 7, 44,  'וכיבוד אב ואם');
insert into bahag values (393, 21,  7, 45,  'מוראת מקדש');
insert into bahag values (394, 770, 7, 46,  'ושמור שבת');
insert into bahag values (395, 771, 7, 47,  'ושמחת שבת');	
insert into bahag values (396, 772, 7, 48,  'ועינוג');
insert into bahag values (397, 773, 7, 49,  'והחיאת אח');	-- 
insert into bahag values (398, 197, 7, 50,  'והלואת אביון');
insert into bahag values (399, 199, 7, 51,  'והשבת עבוט');
insert into bahag values (400, 774, 7, 52,  'והשכחה');
insert into bahag values (401, 775, 7, 53,  'ופאה בכרם');
insert into bahag values (402, 134, 7, 54,  'הפקר שביעית [לעניים]');
insert into bahag values (403, 135, 7, 55,  '[השמטת (דייש ו)שביעית (לעניים)');
insert into bahag values (404, 121, 7, 56,  'ולקט');
insert into bahag values (405, 122, 7, 57,  'שכחה');
insert into bahag values (406, 120, 7, 58,  'ופאה בתבואה');
insert into bahag values (407, 776, 7, 59,  'ושכחה באילן');
insert into bahag values (408, 124, 7, 60,  'ופרט');
insert into bahag values (409, 123, 7, 61,  'ועוללות');
insert into bahag values (410, 777, 7, 62,  'ומתנה במתנת ידך');
insert into bahag values (411, 205, 7, 63,  'הוכח תוכיח');
insert into bahag values (412, 141, 7, 64,  'השמטת כספים');
insert into bahag values (413, 137, 7, 65,  'ושילוח עבדים');
insert into bahag values (414, 206, 7, 66,  'ואהבת לרעך כמוך');
insert into bahag values (415, 196, 7, 67,  'הענק תעניק');
insert into bahag values (416, 778, 7, 68,  'פתוח תפתח');
insert into bahag values (417, 779, 7, 69,  'נתן תתן');
insert into bahag values (418, 780, 7, 70,  'העבט תעביטנו');
insert into bahag values (419, 781, 7, 71,  'למד בנך תורה ומצות');
insert into bahag values (420, 782, 7, 72,  'ושננתם');
insert into bahag values (421, 783, 7, 73,  'ושמתם את דברי');
insert into bahag values (422, 153, 7, 74,  'קביעות ראשי חדשים');
insert into bahag values (423, 642, 7, 75,  'וחישוב תקופות');
insert into bahag values (424, 161, 7, 76,  'וספירת העומר');
insert into bahag values (425, 55,  7, 77,  'לעשות הפסח');
insert into bahag values (426, 56,  7, 78,  'לאכלו צלי');
insert into bahag values (427, 158, 7, 79,  'לאכלו על מצות ומרומים');
insert into bahag values (428, 784, 7, 80,  'לשמרו שבעת ימים');
insert into bahag values (429, 154, 7, 81,  'שבות שמונה ימים [שבת]');
insert into bahag values (430, 159, 7, 82,  'ראשון');
insert into bahag values (431, 160, 7, 83,  'ושביעי של פסח');
insert into bahag values (432, 162, 7, 84,  'ועצרת');
insert into bahag values (433, 163, 7, 85,  'ויום זכרון');
insert into bahag values (434, 165, 7, 86,  'ויוה"כ');
insert into bahag values (435, 166, 7, 87,  'וראשון');
insert into bahag values (436, 167, 7, 88,  'ושמיני של חג הסוכות');
insert into bahag values (437, 155, 7, 89,  'קידוש שמנה ימים [אלו]');
insert into bahag values (438, 786, 7, 90,  'קידוש שמנה ימים [אלו]');
insert into bahag values (439, 787, 7, 91,  'קידוש שמנה ימים [אלו]');
insert into bahag values (440, 788, 7, 92,  'קידוש שמנה ימים [אלו]');
insert into bahag values (441, 789, 7, 93,  'קידוש שמנה ימים [אלו]');
insert into bahag values (442, 790, 7, 94,  'קידוש שמנה ימים [אלו]');
insert into bahag values (443, 791, 7, 95,  'קידוש שמנה ימים [אלו]');
insert into bahag values (444, 792, 7, 96,  'קידוש שמנה ימים [אלו]');
insert into bahag values (445, 170, 7, 97,  'תקיעה בר"ה');
insert into bahag values (446, 164, 7, 98,  'ועינוי ביוה"כ');
insert into bahag values (447, 168, 7, 99,  'וסוכה');
insert into bahag values (448, 169, 7, 100, 'ולולב');
insert into bahag values (449, 793, 7, 101, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (450, 794, 7, 102, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (451, 795, 7, 103, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (452, 796, 7, 104, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (453, 797, 7, 105, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (454, 798, 7, 106, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (455, 799, 7, 107, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (456, 800, 7, 108, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (457, 801, 7, 109, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (458, 802, 7, 110, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (459, 803, 7, 111, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (460, 804, 7, 112, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (461, 805, 7, 113, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (462, 806, 7, 114, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (463, 807, 7, 115, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (464, 808, 7, 116, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (465, 809, 7, 117, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (466, 810, 7, 118, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (467, 811, 7, 119, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (468, 235, 7, 120, 'לעבוד בעבד כנעני לעולם');
insert into bahag values (469, 78,  7, 121, 'מעשר בהמה');
insert into bahag values (470, 53,  7, 122, 'ראיה');
insert into bahag values (471, 52,  7, 123, 'וחגיגה');
insert into bahag values (472, 54,  7, 124, 'ושמחת שלש רגלים');
insert into bahag values (473, 185, 7, 125, 'לשרוף [צורות אלילים]');
insert into bahag values (474, 812, 7, 126, 'ולגדע עבודה זרה [אשרות אלילים]');
insert into bahag values (475, 813, 7, 127, 'לאכול קדשים');	
insert into bahag values (476, 615, 7, 128, 'ומעשר שני בירושלים');
insert into bahag values (477, 814, 7, 129, 'לשבות עבדך ואמתך ובהמתך כמוך');
insert into bahag values (478, 815, 7, 130, 'שמח לוי וגר יום ואלמנה בשילוש רגלים');
insert into bahag values (479, 204, 7, 131, 'השב אבדה');
insert into bahag values (480, 194, 7, 132, 'ושילום גזל');
insert into bahag values (481, 118, 7, 133, 'וחמשה חומשין');
insert into bahag values (482, 816, 7, 134, 'וחמשה חומשין');
insert into bahag values (483, 817, 7, 135, 'וחמשה חומשין');
insert into bahag values (484, 818, 7, 136, 'וחמשה חומשין');
insert into bahag values (485, 819, 7, 137, 'וחמשה חומשין');
insert into bahag values (486, 820, 7, 138, 'נר שבת');
insert into bahag values (487, 821, 7, 139, 'נר חנוכה');
insert into bahag values (488, 822, 7, 140, 'נבלה לגר תושב');
insert into bahag values (489, 207, 7, 141, 'לאהוב גר צדק');
insert into bahag values (490, 823, 7, 142, 'אהוב משפט');
insert into bahag values (491, 679, 7, 143, 'צדוק הדין');
insert into bahag values (492, 627, 7, 144, 'להיות תמים');
insert into bahag values (493, 195, 7, 145, 'לעשות צדקה');
insert into bahag values (494, 824, 7, 146, 'לרדוף צדק');
insert into bahag values (495, 825, 7, 147, 'לגמול חסד');
insert into bahag values (496, 826, 7, 148, 'שמכת כלה');
insert into bahag values (497, 200, 7, 149, 'שכר שכיר ביומו');
insert into bahag values (498, 203, 7, 150, 'לטעון');
insert into bahag values (499, 202, 7, 151, 'ולפרק עם חברו');
insert into bahag values (500, 148, 7, 152, 'שילוח הקן');
insert into bahag values (501, 193, 7, 153, 'והכן יתד על אזנך');
insert into bahag values (502, 827, 7, 154, 'ליראה מן החכמים');
insert into bahag values (503, 217, 7, 155, 'מצות חליצה');
insert into bahag values (504, 216, 7, 156, 'ויבום');
insert into bahag values (505, 208, 7, 157, 'צדק הינין');
insert into bahag values (506, 828, 7, 158, 'ושילום מדות');
insert into bahag values (507, 829, 7, 159, 'ביעור שביעית');
insert into bahag values (508, 131, 7, 160, 'וידוי מעשר');
insert into bahag values (509, 132, 7, 161, 'מקרא בכורים');
insert into bahag values (510, 16,  7, 162, 'ומצות הקהל');
insert into bahag values (511, 830, 7, 163, 'והתקדשתם והייתם קדושים');
insert into bahag values (512, 831, 7, 164, 'והוי שפל רוח');
insert into bahag values (513, 188, 7, 165, 'למחות זרעו של עמלק');
insert into bahag values (514, 91,  7, 166, 'לשרוף נותר באש');
insert into bahag values (515, 209, 7, 167, 'לקום מפשני שיבה');
insert into bahag values (516, 832, 7, 168, 'ולהדר פני זקן');
insert into bahag values (517, 156, 7, 169, 'ביעור חמץ');
insert into bahag values (518, 147, 7, 170, 'וכיסוי הדם');
insert into bahag values (519, 109, 7, 171, 'וטבילה בזמנה');
insert into bahag values (520, 83,  7, 172, 'ומצות נדרים ונדבות ועולות ושלמים');
insert into bahag values (521, 833, 7, 173, 'וחטא חטאת ואשם');
insert into bahag values (522, 73,  7, 174, 'להתכפר בתחנונים ובקרבן');
insert into bahag values (523, 108, 7, 175, 'טמאים לטהר (בהזאות) [הזאה] וטבילה וקרבן (אחד) כראוי');
insert into bahag values (524, 18,  7, 176, 'מצות מלך לכתוב לו ספר תורה לשמו');
insert into bahag values (525, 38,  7, 177, 'מצות כהן גדול ליקח בתולה');
insert into bahag values (526, 834, 7, 178, 'ולהביא פר הבא על כל המצות');
insert into bahag values (527, 835, 7, 179, 'ופר יום הכפורים');
insert into bahag values (528, 836, 7, 180, 'ועשירית האפיה [לחינוך]');
insert into bahag values (529, 40,  7, 181, '(חביתי כהנים) [חביטין]');	
insert into bahag values (530, 837, 7, 182, 'כל מעשה יום הכפורים');
insert into bahag values (531, 838, 7, 183, 'מצות כהנים ללמוד לעשות יציקות');
insert into bahag values (532, 839, 7, 184, 'ובלילות');
insert into bahag values (533, 840, 7, 185, 'ופתיתות');
insert into bahag values (534, 841, 7, 186, 'מליחות');
insert into bahag values (535, 842, 7, 187, 'תנופות');
insert into bahag values (536, 843, 7, 188, 'הגשות');
insert into bahag values (537, 844, 7, 189, 'קמיצות');
insert into bahag values (538, 845, 7, 190, 'הקטרות');
insert into bahag values (539, 846, 7, 191, 'שחיטות');
insert into bahag values (540, 847, 7, 192, 'ומליקות');
insert into bahag values (541, 848, 7, 193, 'קבלות');
insert into bahag values (542, 849, 7, 194, 'והזאות');
insert into bahag values (543, 223, 7, 195, 'השקיית סוטה');
insert into bahag values (544, 181, 7, 196, 'ועריפת עגלה');
insert into bahag values (545, 110, 7, 197, 'טהרת מצורע אדם ובגדים ובתים');	
insert into bahag values (546, 26,  7, 198, 'ונשיאות כפים');
insert into bahag values (547, 184, 7, 199, 'ועשיית מעקה');
insert into bahag values (548, 850, 7, 200, 'ומקרא מגילה');

-- 8 - Parshiyos (65), 48 Aseh and 17 Lo Saaseh (Based on Rav Troib's endnote #9)
insert into bahag values (549, 852, 8, 1,  'פרשת סנהדרי גדולה וקטנה דיני נפשות ודיני ממונות עבד עברי ומוכר עצמו ומכרוהו ב"ד ונמכר לנכרי ואמה עבריה');	-- A
insert into bahag values (550, 182, 8, 2,  'פרשת שש ערי מקלט ומ"ב עיר'); -- A
insert into bahag values (551, 853, 8, 3,  'פרשת נזיקין החובל בחבירו ונוגח ונוגף וגונב וממונות');	-- L
insert into bahag values (552, 854, 8, 4,  'פרשת משכן וכל כליו ושמן המאור ובגדי שרד קידוש כהנים וחינוך מזבח');	-- A
insert into bahag values (553, 855, 8, 5,  'פרשת שמן המשחה וקטורת הסמים');	-- A
insert into bahag values (554, 856, 8, 6,  'פרשת תחנונים');	-- A
insert into bahag values (555, 857, 8, 7,  'פרשת עולות מנחות ושלמים');	-- A
insert into bahag values (556, 64,  8, 8,  'פרשת חוטא וחטאת עולה ויורד');	-- A
insert into bahag values (557, 65,  8, 9,  'פרשת אשם ודאי אדם תלוי');		-- A
insert into bahag values (558, 858, 8, 10, 'פרשת מעילות');		-- L
insert into bahag values (559, 859, 8, 11, 'פרשת טומאת נבילות וטהרת נבילות טומאת שרץ וטהרת שרץ וטומאת כלים אדם ואוכלין ומשקין');		-- L
insert into bahag values (560, 860, 8, 12, 'פרשת יולדת');		-- L
insert into bahag values (561, 861, 8, 13, 'פרשת נגעים');	-- L
insert into bahag values (562, 862, 8, 14, 'פרשת זב וזבה נדה בועלנדה שכבת זרע');	-- L
insert into bahag values (563, 49,  8, 15, 'פרשת יוה"כ');		-- A
insert into bahag values (564, 863, 8, 16, 'פרשת נחרפת');		-- L
insert into bahag values (565, 864, 8, 17, 'פרשת ערלה');		-- L
insert into bahag values (566, 865, 8, 18, 'פרשת מומי בהמה');	-- L
insert into bahag values (567, 866, 8, 19, 'פרשת נדברים ונדבות');	-- A
insert into bahag values (568, 46,  8, 20, 'פרשת שתי הלחם');	-- A
insert into bahag values (569, 27,  8, 21, 'פרשת לחם הפנים');		-- A
insert into bahag values (570, 867, 8, 22, 'פרשת נותן מום בחברו');	-- L
insert into bahag values (571, 140, 8, 23, 'פרשת שביעית');		-- A
insert into bahag values (572, 138, 8, 24, 'פרשת יובל');		-- A
insert into bahag values (573, 139, 8, 25, 'פרשת ממכר ובתי ערי חומה ובתי החצרים גור ותושב');	-- A
insert into bahag values (574, 868, 8, 26, 'פרשת ערכין');		-- A
insert into bahag values (575, 869, 8, 27, 'פרשת מקדיש וחרמים');	-- A
insert into bahag values (576, 870, 8, 28, 'פרשת כהנים ומנחת ישראל');	-- A
insert into bahag values (577, 31,  8, 29, 'פרשת שילוח טמאים');		-- A
insert into bahag values (578, 871, 8, 30, 'פרשת סוטה');		-- A
insert into bahag values (579, 872, 8, 31, 'פרשת נזיר');		-- A
insert into bahag values (580, 873, 8, 32, 'פרשת ברכת כהנים');	-- A
insert into bahag values (581, 874, 8, 33, 'פרשת חנוכת מזבח');	-- A
insert into bahag values (582, 57,  8, 34, 'פרשת פסח שני');	-- A
insert into bahag values (583, 59,  8, 35, 'פרשת חצוצרות');	-- A
insert into bahag values (584, 875, 8, 36, 'פרשת נסכים');		-- A
insert into bahag values (585, 68,  8, 37, 'פרשת העלם דבר');	-- A
insert into bahag values (586, 876, 8, 38, 'פרשת מתנות כהונה');	-- A
insert into bahag values (587, 113, 8, 39, 'פרשת פרה אדומה');	-- A
insert into bahag values (588, 248, 8, 40, 'פרשת נחלות ובת יורשת נחלה');	-- A
insert into bahag values (589, 39,  8, 41, 'פרשת תמידין');		-- A
insert into bahag values (590, 877, 8, 42, 'פרשת עשרים מוספים');	-- A
insert into bahag values (591, 878, 8, 43, 'פרשת נדרים ושבועות');	-- A
insert into bahag values (592, 879, 8, 44, 'פרשת תרומת המכס');	-- A
insert into bahag values (593, 880, 8, 45, 'פרשת הלוקח כלי תשמיש מן הגואים');	-- A
insert into bahag values (594, 183, 8, 46, 'פרשת קידוש הארץ לתת ללוים ערי מקלט');	-- A
insert into bahag values (595, 881, 8, 47, 'פרשת נביא השקר');	-- L
insert into bahag values (596, 882, 8, 48, 'פרשת עיר הנדחת');	-- L
insert into bahag values (597, 173, 8, 49, 'פרשת המלך');		-- A
insert into bahag values (598, 883, 8, 50, 'פרשת עדים זוממין');	-- L
insert into bahag values (599, 191, 8, 51, 'פרשת משוח מלחמה');	-- A
insert into bahag values (600, 190, 8, 52, 'פרשת עיר משלמת ועיר שאינה משלמת');		-- A
insert into bahag values (601, 884, 8, 53, 'פרשת עגלה ערופה');	-- A
insert into bahag values (602, 221, 8, 54, 'פרשת יפת תאר');	-- A
insert into bahag values (603, 885, 8, 55, 'פרשת משפט הבכורה');	-- A
insert into bahag values (604, 886, 8, 56, 'פרשת בן סורר ומורה');	-- L
insert into bahag values (605, 887, 8, 57, 'פרשת מוציא שם רע');		-- L
insert into bahag values (606, 888, 8, 58, 'פרשת אונס ומפתה');		-- L
insert into bahag values (607, 213, 8, 59, 'פרשת לקוחין וגרושין');		-- A
insert into bahag values (608, 889, 8, 60, 'פרשת יבמין');			-- A
insert into bahag values (609, 890, 8, 61, 'פרשת שולחת יד במבושיו');	-- L
insert into bahag values (610, 891, 8, 62, 'פרשת בכורים');			-- A
insert into bahag values (611, 892, 8, 63, 'פרשת אבנים גדולות');		-- A
insert into bahag values (612, 893, 8, 64, 'פרשת ברכות וקללות');		-- A
insert into bahag values (613, 894, 8, 65, 'פרשת הקהל');			-- A

create table bahagNotes (
	_id integer NOT NULL primary key,
	hebrewNote varChar,
	enNote varChar,
	foreign key(_id) references bahag(_id) on delete cascade
);

insert into bahagNotes values (12,  null, 'Bahag counts this again in his list of Lo Saasehs');
insert into bahagNotes values (14,  null, 'This is the same as #36 and #39');
insert into bahagNotes values (36,  null, 'This is the same as #14 and #39');
insert into bahagNotes values (39,  null, 'This is the same as #14 and #36');
insert into bahagNotes values (79,  null, 'This is seemingly the same as Rambam''s #118 (366). However, see Sefer HaChinuch #90');
insert into bahagNotes values (80,  null, 'Rav Troib claims this is Rambam #117 (365). However, it''s the verse for #118');
insert into bahagNotes values (81,  null, 'For some reason Rav Troib at the end of his notes says the Bahag left this out');
insert into bahagNotes values (113, null, 'For some reason Rav Troib at the end of his notes says the Bahag left this out');
insert into bahagNotes values (144, null, 'The Bahag already counted this (#68). See Rav Troib''s notes #34');
insert into bahagNotes values (145, null, 'The Rambam counts these as two, and the Bahag merges them');
insert into bahagNotes values (156, null, 'The Rambam used this for the prohibition of someone impure eating terumah (listed as Onshim #62). Rav Troib suggests it''s a new prohibition');
insert into bahagNotes values (158, null, 'The Rambam used this for the prohibition of eating tevel (listed as Onshim #61). Rav Troib suggests it''s a new prohibition');
insert into bahagNotes values (159, null, 'Treifah was already counted above (#113)');
insert into bahagNotes values (170, null, 'Rav Troib cross references this as Rambam''s #144, but it should be #244');
insert into bahagNotes values (183, null, 'For some reason Rav Troib at the end of his notes says the Bahag left this out');
insert into bahagNotes values (192, null, 'The Rambam uses this for the prohibition of Ben Sorer UMoreh (listed as Onshim #18). Rav Troib suggests it''s for the other prohibitions included');
insert into bahagNotes values (199, null, 'See Rav Troib''s note #66 and #103. We''re assuming the Bahag is the same as the Semag in this matter');
insert into bahagNotes values (200, null, 'We''re assuming the Bahag means like the Ramban in Shoresh 5');
insert into bahagNotes values (209, null, 'Bahag counts these three as one. So does the Ramban');
insert into bahagNotes values (225, null, 'The Bahag merges Rambam''s #203, 204');
insert into bahagNotes values (226, null, 'The Bahag merges Rambam''s #205, 206');
insert into bahagNotes values (232, null, 'We''re assuming the Bahag is like the Semag, and not the Ramban (#619)');
insert into bahagNotes values (239, null, 'See Rav Troib''s endnote #24');
insert into bahagNotes values (246, null, 'See Rav Troib''s note #80');
insert into bahagNotes values (250, null, 'See Rav Troib''s note #81');
insert into bahagNotes values (258, null, 'See Rav Troib''s note #85');
insert into bahagNotes values (266, null, 'See Rav Troib''s note #89');
insert into bahagNotes values (267, null, 'See Rav Troib''s note #89');
insert into bahagNotes values (275, null, 'This was already counted #94. See Rav Troib''s note #30');
insert into bahagNotes values (276, null, 'This was already counted #94. See Rav Troib''s note #30');
insert into bahagNotes values (312, null, 'See Rav Troib''s note #102');
insert into bahagNotes values (315, null, 'See Rav Troib''s note #66 and #103. We''re assuming the Bahag is the same as the Semag in this matter, although the Bahag splits it into two');
insert into bahagNotes values (349, null, 'For some reason Rav Troib claims the Rambam didn''t count this mitzvah. The Bahag doesn''t count #2 of the Rambam, so perhaps Rav Troib viewed this as a fusion of the two? See also Rav Perla''s commentary to Rav Saadiah Gaon, Aseh #3');
insert into bahagNotes values (350, null, 'The Bahag counts this as one, whereas the Rambam counts this as two');
insert into bahagNotes values (368, null, 'For some reason Rav Troib cross references Rambam #20, which isn''t relevant');
insert into bahagNotes values (373, null, 'It''s up for debate if the Bahag means the Rambam''s #5');
insert into bahagNotes values (377, null, 'See Rav Troib''s note #4');
insert into bahagNotes values (385, null, 'See Rav Troib''s note #11');
insert into bahagNotes values (386, null, 'See Rav Troib''s note #12');
insert into bahagNotes values (394, null, 'See Rav Troib''s note #13, and Rav Hildesheimer''s note #17');
insert into bahagNotes values (395, null, 'See Rav Troib''s note #14, and Rav Hildesheimer''s note #18');
insert into bahagNotes values (397, null, 'See Rav Troib''s note #16 and Rav Perla''s comment');
insert into bahagNotes values (403, null, 'See Rav Hildesheimer''s note #19 and Rav Perla''s comment');
insert into bahagNotes values (410, null, 'See Rav Troib''s note #20 and Rav Hildesheimer''s note #20');
insert into bahagNotes values (427, null, 'See Rav Troib''s note #27 and Rav Hildesheimer''s note #21');
insert into bahagNotes values (428, null, 'See Rav Troib''s note #28*');
insert into bahagNotes values (437, null, 'See Rav Troib''s note #22 and Rav Hildesheimer''s note #22');
insert into bahagNotes values (475, null, 'See Rav Perla''s note');
insert into bahagNotes values (476, null, 'The Ramban counts these last two as one mitzvah, the Bahag according to Rav Troib splits them');
insert into bahagNotes values (492, null, 'For some reason Rav Troib cross references Rambam #56, then in his note #38 says it''s something only the Ramban counts');
insert into bahagNotes values (496, null, 'See Rav Troib''s note #40 and Rav Hildesheimer''s note #24');
insert into bahagNotes values (514, null, 'For some reason Rav Troib at the end of his notes says the Bahag left this out');
insert into bahagNotes values (519, null, 'See Rav Troib''s note #48');
insert into bahagNotes values (523, null, 'For some reason Rav Troib at the end of his notes says the Bahag left this out');
insert into bahagNotes values (529, null, 'See Rav Hildesheimer''s note #25');
insert into bahagNotes values (545, null, 'For some reason Rav Troib at the end of his notes says the Bahag left this out');
insert into bahagNotes values (550, null, 'See Rav Perla''s note to Rav Troib''s comment #7');
insert into bahagNotes values (576, null, 'See Rav Troib''s note #8');
insert into bahagNotes values (578, null, 'See Rav Hildesheimer''s note #31');
insert into bahagNotes values (579, null, 'See Rav Hildesheimer''s note #32');
insert into bahagNotes values (580, null, 'See Rav Troib''s note #10');
insert into bahagNotes values (595, null, 'See Rav Troib''s note #15, Rav Perla''s note, and Rav Hildesheimer''s note #33');
insert into bahagNotes values (603, null, 'See Rav Troib''s endnote #38');
insert into bahagNotes values (606, null, 'For some reason Rav Troib in his endnote #9 doesn''t list this as one of the Lo Saaseh''s, but its obvious it is');
insert into bahagNotes values (607, null, 'See Rav Troib''s note #17 and Rav Hildesheimer''s note #34. Also for some reason at the end of Rav Troib''s notes he says the Bahag leaves this out as it''s a Lav HaBah Miklal Aseh');
insert into bahagNotes values (609, null, 'See Rav Perla''s note');
insert into bahagNotes values (610, null, 'See Rav Troib''s note #19');
	
/** The following from the Rambam's list seem to be missing in the Bahag, and for some reason Rav Troib doesn't list them in the end of his notes
	Burial (Aseh #231)
	---------------
	Lachbor Chaver (Lo Saaseh #35)
	Shoel BeOv (#36)
	Shoel BeYidoni (#37)
	Shecht Baal Moom (#92)
	Lizrok Baal Moon (#93) (Rav Troib did list #91 and #94...)
	Shelo LeHavdil Chatas HaOf (#112)
	Shelo Nachel Devareinu (#157)
	Shelo Laazov HaLeviim (#229). It seems to be counted as an Aseh, Bahag #130
	Shelo LeRachem al Mazik (#279)
	Shelo Limnos Dayan Sheino Chacham (#284)
	Shelo Likach Kofer LeHatzil Megalus (#296). Rav Troib listed #295...
	Shelo Lehachayos Mechashef (#310)
*/