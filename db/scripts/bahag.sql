.echo OFF

drop table if exists bahag;

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

8 - Parshiyos (65)
*/
create table bahag (
	_id integer NOT NULL primary key unique,
	mitzvahId integer NOT NULL unique,
	categoryNum integer NOT NULL,
	mitzvahTitle varchar NOT NULL,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

-- Onshim (71)

-- 0 - Skilah (18)
insert into bahag values (1,  578, 0, 'הבא על האם');
insert into bahag values (2,  579, 0, 'ועל אשת אב');
insert into bahag values (3,  591, 0, 'ועל הכלה');
insert into bahag values (4,  598, 0, 'והבא על הזכר');
insert into bahag values (5,  596, 0, 'ועל הבהמה');
insert into bahag values (6,  597, 0, 'והאשה הנרבעת לבהמה');
insert into bahag values (7,  308, 0, 'והמגדף');
insert into bahag values (8,  253, 0, 'והעובד ע"ז');
insert into bahag values (9,  255, 0, 'והנותן מזרעו למולך');
insert into bahag values (10, 256, 0, 'ובעל אוב');
insert into bahag values (11, 257, 0, 'וידעוני');
insert into bahag values (12, 568, 0, 'והמחלל את השבת');		-- Counts this again
insert into bahag values (13, 566, 0, 'והמבקלל אביו ואמו');
insert into bahag values (14, 695, 0, 'והבא על נערה מאורשה');	-- Really the same as 595, counted #36 in Skila
insert into bahag values (15, 264, 0, 'והמסית');
insert into bahag values (16, 263, 0, 'והמדיח');
insert into bahag values (17, 282, 0, 'ומכשף');
insert into bahag values (18, 443, 0, 'ובן סורר ומורה');

-- 1 - Sreifa (10)
insert into bahag values (19, 585, 1, 'הבא על אשה ובתה');
insert into bahag values (20, 584, 1, 'ויש בכלל אשה ובתה הבא על בתו');
insert into bahag values (21, 583, 1, 'ועל בת בתו');
insert into bahag values (22, 582, 1, 'ועל בת בנו');
insert into bahag values (23, 586, 1, 'ועל בת אשתו ועל בת בנה');
insert into bahag values (24, 587, 1, 'ועל בת בתה');
insert into bahag values (25, 696, 1, 'ועל חמותו');
insert into bahag values (26, 697, 1, 'ואם חמותו');
insert into bahag values (27, 698, 1, 'ואם חתיו');
insert into bahag values (28, 699, 1, 'ובת כהן כי תזנה');

-- 2 - Hereg (2)
insert into bahag values (29, 537, 2, 'רוצח');
insert into bahag values (30, 700, 2, 'אנשי עיר הנדחת');

-- 3 - Chenek (9)
insert into bahag values (31, 567, 3, 'מכה אביו ואמו');
insert into bahag values (32, 491, 3, 'וגונב נפש מישראל');
insert into bahag values (33, 701, 3, 'וזקן ממרא על פי בית דין');
insert into bahag values (34, 275, 3, 'ונביא שקר');
insert into bahag values (35, 274, 3, 'והמתנבא בשם ע"ז');
insert into bahag values (36, 595, 3, 'והבא על אשת איש');
insert into bahag values (37, 702, 3, 'והיא עמו');
insert into bahag values (38, 703, 3, 'וזוממי בת כהן');
insert into bahag values (39, 704, 3, 'ובועלה');				-- Counted this already #12 in Skila

-- 4 - Kares (21)
insert into bahag values (40, 580, 4, 'הבא על אחותו');
insert into bahag values (41, 588, 4, 'ועל אחות אביו');
insert into bahag values (42, 589, 4, 'ועל אחות אמו');
insert into bahag values (43, 593, 4, 'ועל אחות אשתו');
insert into bahag values (44, 592, 4, 'ועל שאת אחיו');
insert into bahag values (45, 590, 4, 'ועל אשת אחי אביו');
insert into bahag values (46, 594, 4, 'ועל הנדה');
insert into bahag values (47, 433, 4, 'והאוכל חלב');
insert into bahag values (48, 432, 4, 'ודם');
insert into bahag values (49, 445, 4, 'והאוכל חמץ בפסח');
insert into bahag values (50, 444, 4, 'והאוכל');
insert into bahag values (51, 577, 4, 'והעושה מלאכה ביום הכפורים');
insert into bahag values (52, 379, 4, 'והאוכל נותר');
insert into bahag values (53, 380, 4, 'ופיגול');
insert into bahag values (54, 377, 4, 'וטמא שאכל קדש');
insert into bahag values (55, 325, 4, 'והבא למקדש טמא');
insert into bahag values (56, 338, 4, 'והשוחט');
insert into bahag values (57, 337, 4, 'והמעלה עולה בחוץ');
insert into bahag values (58, 331, 4, 'והמפטם את השמן');
insert into bahag values (59, 332, 4, 'והסך את שמן המשחה');
insert into bahag values (60, 333, 4, 'והמפטם את הקטורת');
--insert into bahag values (61, _, 4, 'שלא עשה פסח');	-- Rav Troib takes these out
--insert into bahag values (62, _, 4, 'ושלא מל');		-- Rav Troib takes these out

-- 5 - Misah Bidei Shamayim (11)
insert into bahag values (61, 401, 5, 'האוכל את הטבל');
insert into bahag values (62, 384, 5, 'כהן טמא שאכל תרומה טהורה');
insert into bahag values (63, 381, 5, 'וזר שאכל תרומה');
insert into bahag values (64, 322, 5, 'וזר ששימש במקדש');
insert into bahag values (65, 323, 5, 'וטמא ששימש');
insert into bahag values (66, 412, 5, 'ומחוסר בגדים ששימש');
insert into bahag values (67, 705, 5, 'ומחוסר כפורים');
insert into bahag values (68, 324, 5, 'וטבול יום ששימש');
insert into bahag values (69, 706, 5, 'ולא רחוץ ידים ורגלים');
insert into bahag values (70, 321, 5, 'ושתויי יין');
insert into bahag values (71, 411, 5, 'ופרוע ראש ששימשו במקדש');

-- 6 - Lo Saaseh on Yechidim (277)
insert into bahag values (72, 431, 6, 'לא יאכלו בנ"י את גיד הנשה');
insert into bahag values (73, 375, 6, 'פסח כל ערל לא יאכל בו');
insert into bahag values (74, 376, 6, 'כל בן נכר לא יאכל בו');
insert into bahag values (75, 374, 6, 'תושב ושכיר לא יאכל בו');
insert into bahag values (76, 373, 6, 'אל תאכלו ממנו נא ובשל מבושל במים');
insert into bahag values (77, 363, 6, 'לא תשחט על חמץ דם זבחי');
insert into bahag values (78, 364, 6, 'לא ילין חלב חגי עד בקר');
insert into bahag values (79, 707, 6, 'לא ילין לבקר זבח חג הפסח');		-- This is seemingly the same as Rambam's #118 (366). However, see Sefer HaChinuch #90
insert into bahag values (80, 366, 6, 'לא ילין מן הבשר אשר תזבח בערב');	-- Machon Yerushalayim claims this is Rambam #117 (365). However, it's the verse for 118
insert into bahag values (81, 371, 6, 'לא תיציא מן הבית הבשר חוצה');
insert into bahag values (82, 369, 6, 'ועצם לא תשברו בו');
insert into bahag values (83, 365, 6, 'לא תותירו ממנו עד בקר');
insert into bahag values (84, 449, 6, 'שבעת ימים שאר לא ימצא בבתיכם');
insert into bahag values (85, 448, 6, 'לא יראה לך חמץ');
insert into bahag values (86, 708, 6, 'ולא יראה לך שאר');
--insert into bahag values (87, 568, 6, 'ולא תעשה מלאכה דלאו מאבות מלאכות בשבת');		-- Rav Troib takes this out, as it was counted in Skila (cf. Ramban)
insert into bahag values (87, 571, 6, 'ובמלאכת עבודה בראשון');
insert into bahag values (88, 572, 6, 'ובשביעי של פסח');
insert into bahag values (89, 573, 6, 'ושל עצרת');
insert into bahag values (90, 574, 6, 'וביום הזכרון');
--insert into bahag values (91, 577, 6, 'וביוה"כ');		-- Rav Troib takes this out, as it was counted in Kares
insert into bahag values (91, 575, 6, 'ובראשון');
insert into bahag values (92, 576, 6, 'ושמיני של חג הסוכות');
insert into bahag values (93, 404, 6, 'לא יראו פני ריקם');
insert into bahag values (94, 294, 6, 'לא תוסיף לראותם עוד עד עולם');
insert into bahag values (95, 249, 6, 'לא יהיה לך');
insert into bahag values (96, 310, 6, 'לא תשא');
--insert into bahag values (97, 537, 6, 'לא תרצח');		-- Rav Troib takes this out, as it was counted in Hereg
--insert into bahag values (98, 595, 6, 'לא תנאף');		-- Rav Troib takes this out, as it was counted in Chenek
--insert into bahag values (99, 491, 6, 'לא תגנוב');		-- Rav Troib takes this out, as it's referring to kidnapping, and was counted in Chenek
insert into bahag values (97, 533, 6, 'לא תענה');
insert into bahag values (98, 513, 6, 'לא תחמוד');
insert into bahag values (99, 514, 6, 'לא תתאוה');
insert into bahag values (100, 327, 6, 'לא תבנה אתהן גזית');
insert into bahag values (101, 328, 6, 'לא תעלה במעלות');
insert into bahag values (102, 509, 6, 'לא ימשל למכרה');
insert into bahag values (103, 510, 6, 'שארה כסותה וענתה לא יגרע');
insert into bahag values (104, 500, 6, 'וגר לא תונו');
insert into bahag values (105, 501, 6, 'ולא תלחצנו');
insert into bahag values (106, 504, 6, 'כל אלמנה ויתום לא תענון');
insert into bahag values (107, 482, 6, 'לא תהיה לו כנושה');
insert into bahag values (108, 485, 6, 'לא תשימון עליו נשך');
insert into bahag values (109, 483, 6, 'את כספך לא תתן לו בנשך');
insert into bahag values (110, 709, 6, 'ובמרבית לא תתן אכלך');
insert into bahag values (111, 563, 6, 'אלהים לא תקלל');
insert into bahag values (112, 564, 6, 'ונשיא בעמך לא תאור');
insert into bahag values (113, 402, 6, 'מלאתך ודמעך לא תאחר');
insert into bahag values (114, 429, 6, 'טרפה לא תאכלו');
insert into bahag values (115, 529, 6, 'לא תשא שמע שוא');
insert into bahag values (116, 534, 6, 'לא תשת ידך עם רשע');
insert into bahag values (117, 530, 6, 'לא תהיה אחרי רבים לרעות');
insert into bahag values (118, 531, 6, 'לא תענה על ריב לנטות');
insert into bahag values (119, 525, 6, 'ודל לא תהדר בריבו');
insert into bahag values (120, 526, 6, 'לא תטה משפט אביונך בריבו');
insert into bahag values (121, 538, 6, 'ונקי וצדיק אל תהרוג');
insert into bahag values (122, 262, 6, 'ושם אלהים אחרים לא תזכירו');
insert into bahag values (123, 710, 6, 'ולא ישמע על פיך');
insert into bahag values (124, 434, 6, 'לא תבשל גדי בחלב אמו');
insert into bahag values (125, 711, 6, 'לא תעשה כמעשיהם');
insert into bahag values (126, 278, 6, 'ובחוקותיהם לא תלכו');
insert into bahag values (127, 300, 6, 'לא תתחתן בם בתך לא תתן לבנו ותבו לא תקח לבנך');
insert into bahag values (128, 296, 6, 'לא תכרות להם ולאלהיהם ברית');
insert into bahag values (129, 298, 6, 'ולא תחנם');
insert into bahag values (130, 299, 6, 'לא ישבו בארצך');
insert into bahag values (131, 334, 6, 'לא יסורו ממנו');
insert into bahag values (132, 335, 6, 'ולא יזח החשן');
insert into bahag values (133, 570, 6, 'לא תבערו אש');
insert into bahag values (134, 712, 6, 'בכנפיו לא יבדיל');
insert into bahag values (135, 346, 6, 'כל שאר וכל דבש לא תקטירו');
insert into bahag values (136, 386, 6, 'מנחת כהן לא תאכל');
insert into bahag values (137, 713, 6, 'ראשיכם אל תפרעו');
insert into bahag values (138, 714, 6, 'ובגדיכם לא תפרומו');
insert into bahag values (139, 414, 6, 'לנפש לא יטמא בעמיו');
insert into bahag values (140, 715, 6, 'לא יטמא בעל בעמיו להחלו');
insert into bahag values (141, 716, 6, 'לא יקרחו קרחה');
insert into bahag values (142, 717, 6, 'ופאת זקנם לא יגלחו');
insert into bahag values (143, 718, 6, 'לא ישרטו שרטת');
insert into bahag values (144, 719, 6, 'לא יחללו שם אליהיהם');		-- The Bahag already counted this (#68). See Rav Troib's notes #34
insert into bahag values (145, 407, 6, 'אשה זונה וחללה לא יקחו');		-- The Rambam counts these as two, and the Bahag merges them
insert into bahag values (146, 408, 6, 'גורשה מאישה לא יקחו');
insert into bahag values (147, 409, 6, 'וכהן גדול אלמנה לא יקח');
insert into bahag values (148, 720, 6, '[כה"ג] לא יפרע');
insert into bahag values (149, 721, 6, '[כה"ג] לא יפרום');
insert into bahag values (150, 413, 6, 'ומן המקדש לא יצא');
insert into bahag values (151, 675, 6, 'ולא יחלל (שם) [את מקדש] אלהיו');
insert into bahag values (152, 410, 6, 'ולא יחלל זרעו בעמיו');
insert into bahag values (153, 318, 6, 'לחם אלהיו לא יגש להקריב');
insert into bahag values (154, 317, 6, 'אל הפרכת לא יבוא');
insert into bahag values (155, 722, 6, 'ואל המזבח לא יגש');
insert into bahag values (156, 723, 6, 'בקדשים לא יאכל');	-- The Rambam used this for the prohibition of someone impure eating terumah (listed above #62). Rav Troib suggests it's a new prohibition
insert into bahag values (157, 385, 6, 'היא בתרומת הקדשים לא תאכל');
insert into bahag values (158, 724, 6, 'ולא יחללו את קדשי בנ"י');	-- The Rambam used this for the prohibition of eating tevel (listed above #61). Rav Troib suggests it's a new prohibition
insert into bahag values (159, 428, 6, 'נבלה או טרפה לא יאכל');	-- Treifah was already counted above (#113)
insert into bahag values (160, 420, 6, 'לא תאכלו ממעלי הגרה וממפריסי הפרסה');
insert into bahag values (161, 422, 6, 'תשקצו מן העוף לא יאכלו');
insert into bahag values (162, 421, 6, 'כל אשר אין לו סנפיר וקשקשת לא תאכלו');
insert into bahag values (163, 725, 6, 'וכל אשר אין לו ארבע רגלים וארבע כנפים וקרסוליו וכנפיו חופין את רובו לא תאכלו');
insert into bahag values (164, 423, 6, 'שרץ העוף');
insert into bahag values (165, 427, 6, 'שרץ המים');
insert into bahag values (166, 424, 6, 'שרץ ארץ לא תאכלו (לא) [אל] תשקצו את נפשותיכם ולא תטמאו את נפשותיכם');
insert into bahag values (167, 378, 6, 'אשר יגע בכל טמא לא יאכל');
insert into bahag values (168, 458, 6, 'לא תכלה פאת שדך');
insert into bahag values (169, 459, 6, 'ולקט קצירך לא תלקט');
insert into bahag values (170, 392, 6, 'לא תגנובו');
insert into bahag values (171, 496, 6, 'לא תכחשו');