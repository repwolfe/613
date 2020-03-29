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

8 - Parshiyos (65) - 48 Aseh and 17 Lo Saaseh
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
insert into bahag values (172, 497, 6, 'לא תשקרו איש בעמיתו');
insert into bahag values (173, 309, 6, 'לא תשבעו בשמי לשקר');
insert into bahag values (174, 495, 6, 'לא תעשוק');
insert into bahag values (175, 493, 6, 'לא תגזול');
insert into bahag values (176, 486, 6, 'לא תלין פעולת שכיר');
insert into bahag values (177, 565, 6, 'לא תקלל חרש');
insert into bahag values (178, 547, 6, 'לא תתן מכשול');
insert into bahag values (179, 521, 6, 'לא תעשו עול במשפט');
insert into bahag values (180, 425, 6, 'לא תשא פני דל');
insert into bahag values (181, 523, 6, 'ולא תהדר פני גדול');
insert into bahag values (182, 549, 6, 'לא תלך רכיל');
insert into bahag values (183, 545, 6, 'לא תעמוד על דם רעך');
insert into bahag values (184, 550, 6, 'לא תשנא את אחיך בלבבך');
insert into bahag values (185, 551, 6, 'ולא תשא עליו חטא');
insert into bahag values (186, 552, 6, 'לא תקום');
insert into bahag values (187, 553, 6, 'ולא תטור בני עמך');
insert into bahag values (188, 465, 6, 'בהמתך לא תרביע כלאים');
insert into bahag values (189, 463, 6, 'שדך לא תזרע כלאים');
insert into bahag values (190, 726, 6, 'ובגד שעטנז לא יעלה עליך');
insert into bahag values (191, 440, 6, 'ערלים לא יאכל');
insert into bahag values (192, 727, 6, 'לא תאכלו על הדם');		-- The Rambam uses this for the prohibition of Ben Sorer UMoreh (listed above #18). Rav Troib suggests it's for the other prohibitions included
insert into bahag values (193, 281, 6, 'לא תנחשו');
insert into bahag values (194, 280, 6, 'ולא תעוננו');
insert into bahag values (195, 291, 6, 'לא תקיפו פאת ראשכם');
insert into bahag values (196, 292, 6, 'לא תשחית [את] פאת זקנך');
insert into bahag values (197, 293, 6, 'ושרט [לנפש] לא תתנו בבשרכם');
insert into bahag values (198, 289, 6, 'וכתובת קעקע לא תתנו בכם');
insert into bahag values (199, 603, 6, 'אל תתנו את בתך להזנותה');	-- See Rav Troib's note #66 and #103. I'm assuming the Bahag is the same as the Semag in this matter
insert into bahag values (200, 674, 6, 'ולא תזנה הארץ');			-- I'm assuming the Bahag means like the Ramban in Shoresh 5
insert into bahag values (201, 519, 6, 'לא תעשו עול במשפט במדה במשקל ובמשורה');
insert into bahag values (202, 349, 6, 'אותו ואת בנו תשחטו ביום אחד');
insert into bahag values (203, 311, 6, 'ולא תחללו את שם קדשי');
insert into bahag values (204, 728, 6, 'עורת או שבור לא תקריבו');
insert into bahag values (205, 729, 6, 'ומעוך וכתות ונתוק וכרות לא תקריבו');
insert into bahag values (206, 609, 6, 'ובארצכם לא תעשו');
insert into bahag values (207, 344, 6, 'ומיד בן נכר לא תקריבו');
insert into bahag values (208, 345, 6, 'כל מום לא יהיה בו');
insert into bahag values (209, 437, 6, 'ולחם וקלי וכרמל לא תאכלו');	-- Bahag counts these three as one. So does the Ramban
insert into bahag values (210, 468, 6, 'ובשביעית שדך לא תזרע');
insert into bahag values (211, 469, 6, 'וכרמך לא תזמור');
insert into bahag values (212, 470, 6, 'ספיח קצירך לא תקצור');
insert into bahag values (213, 471, 6, 'ענבי נזיריך לא תבצור');
insert into bahag values (214, 472, 6, 'ביובל לא תזרעו');
insert into bahag values (215, 473, 6, 'ולא תקצרו את ספיחיה');
insert into bahag values (216, 474, 6, 'ולא תבצרו את נזיריה');
insert into bahag values (217, 499, 6, 'לא תונו איש את עמיתו');
insert into bahag values (218, 507, 6, 'לא תרדה בו בפרך');
insert into bahag values (219, 506, 6, 'לא ימכרו ממכרת עבד');
insert into bahag values (220, 505, 6, 'לא תעבוד בו עבודת עבד');
insert into bahag values (221, 260, 6, 'אבן משכית לא תתנו בארצכם');
insert into bahag values (222, 671, 6, 'לא יבואו לראות כבלע');
insert into bahag values (223, 450, 6, 'נזיר יין ושכר וחומץ יין לא ישתה');
insert into bahag values (224, 730, 6, 'וכל משרת ענבים לא ישתה');
insert into bahag values (225, 451, 6, 'לחים ויבשים לא יאכל');	-- The Bahag merges Rambam's (#203, 204)
insert into bahag values (226, 453, 6, 'מחרצנים ועד זג לא יאכל');	-- The Bahag merges Rambam's (#205, 206)
insert into bahag values (227, 457, 6, 'תער לא יעבור על ראשו');
insert into bahag values (228, 456, 6, 'על נפש מת לא יבא');
insert into bahag values (229, 455, 6, 'לאביו ולאמו לאחיו ולאחותו לא יטמא להם');
insert into bahag values (230, 672, 6, 'לוי לא יעבוד עוד');
insert into bahag values (231, 295, 6, 'לא תתורו אחרי לבבכם ואחרי עיניכם');
insert into bahag values (232, 689, 6, 'ולא יהיה כקרח');			-- I'm assuming the Bahag is like the Semag, and not the Ramban (#677)
insert into bahag values (233, 731, 6, 'לא תחניפו את הארץ');
insert into bahag values (234, 676, 6, 'ולא תטמא את הארץ');
insert into bahag values (235, 524, 6, 'לא תגורו מפני איש');
insert into bahag values (236, 649, 6, 'פן תשכח את הדברים');
insert into bahag values (237, 648, 6, 'פן תשכח את ה''');
insert into bahag values (238, 312, 6, 'לא תנסו את ה''');
insert into bahag values (239, 732, 6, 'לא תחוס עינך עליהם');		-- See Rav Troib's end notes #24
insert into bahag values (240, 270, 6, 'לא תחמוד כסף וזהב עליהם');
insert into bahag values (241, 273, 6, 'ולא תביא תועבה');
insert into bahag values (242, 733, 6, 'אל תאמר בלבבך בהדוף [בצדקצי הביאני ה'']');
insert into bahag values (243, 734, 6, 'וערפכם לא תקשו עוד');
insert into bahag values (244, 313, 6, 'לא תעשון כן לה''');
insert into bahag values (245, 430, 6, 'לא תאכל הנפש עם הבשר');
insert into bahag values (246, 735, 6, 'לא תעשון ככל אשר אנחנו עושים');		-- See Rav Troib's note #80
insert into bahag values (247, 276, 6, 'לא תשמע אל דברי הנביא ההוא');
insert into bahag values (248, 736, 6, 'לא תוכל לאכול בשעריך');
insert into bahag values (249, 737, 6, 'והלוי לא תעזבנו');
insert into bahag values (250, 738, 6, 'לא תתגודדו');		-- See Rav Troib's note #81
insert into bahag values (251, 419, 6, 'ולא תשימו קרחה');
insert into bahag values (252, 388, 6, 'לא תאכל כל תועבה');
insert into bahag values (253, 561, 6, 'לא תוסיף עליו');
insert into bahag values (254, 562, 6, 'ולא תגרע ממנו');
insert into bahag values (255, 478, 6, 'לא יגוש את רעהו');
insert into bahag values (256, 480, 6, 'לא תאמץ');
insert into bahag values (257, 739, 6, 'לא תקפץ');
insert into bahag values (258, 670, 6, 'ולא ירע לבבך');	-- See Rav Troib's note #85
insert into bahag values (259, 481, 6, 'לא תשלחנו ריקם');
insert into bahag values (260, 667, 6, 'לא יקשה בעינך');
insert into bahag values (261, 361, 6, 'לא תעבוד בבכור שורך');
insert into bahag values (262, 362, 6, 'ולא תגוז בכור צאנך');
insert into bahag values (263, 271, 6, 'לא תבנה עוד');
insert into bahag values (264, 272, 6, 'ולא ידבק בידך מאומה');
insert into bahag values (265, 614, 6, 'לא תוכל לזבוח את הפסח');
insert into bahag values (266, 740, 6, 'לא תטה משפט');	-- See Rav Troib's note #89
insert into bahag values (267, 741, 6, 'ולא תכיר פנים');	-- See Rav Troib's note #89
insert into bahag values (268, 522, 6, 'לא תקח שוחד');
insert into bahag values (269, 261, 6, 'לא תטע לך אשרה');
insert into bahag values (270, 259, 6, 'לא תקים לך מצבה');
insert into bahag values (271, 343, 6, 'לא תזבח לה'' אלהיך');
insert into bahag values (272, 560, 6, 'לא תסור מן הדבר');
insert into bahag values (273, 742, 6, 'לא יזידון עוד');
insert into bahag values (274, 611, 6, 'לא ירבה לו סוסים');
insert into bahag values (275, 743, 6, 'לא ישיב את העם');		-- This was already counted #94. See Rav Troib's note #30
insert into bahag values (276, 744, 6, 'לא תוסיפון לשוב');		-- This was already counted #94. See Rav Troib's note #30
insert into bahag values (277, 612, 6, 'לא ירבה לו נשים');
insert into bahag values (278, 613, 6, 'וכסף וזהב לא ירבה לו מאד');
insert into bahag values (279, 279, 6, 'לא ימצא בך מעביר בנו ובתו באש');
insert into bahag values (280, 494, 6, 'לא תשיג גבול');
insert into bahag values (281, 536, 6, 'לא יקום עד אחד באיש');
insert into bahag values (282, 277, 6, 'לא תגור ממנו');
insert into bahag values (283, 297, 6, 'לא תחיה כל נשמה');
insert into bahag values (284, 305, 6, 'לא תשחית את עצה');
insert into bahag values (285, 745, 6, 'ואותו לא תכרות');
insert into bahag values (286, 557, 6, 'לא יעבד בו');
insert into bahag values (287, 746, 6, 'ולא יזרע');
insert into bahag values (288, 511, 6, 'לא תמכרנה בכסף');
insert into bahag values (289, 512, 6, 'לא תתעמר בה');
insert into bahag values (290, 314, 6, 'לא תלין נבלתו');
insert into bahag values (291, 747, 6, 'לא תראה שורו נדחים');
insert into bahag values (292, 518, 6, 'לא תראה חמור נופלים');
insert into bahag values (293, 517, 6, 'וכל אבדה לא תוכל להתעלם');
insert into bahag values (294, 287, 6, 'לא יהיה כלי גבר');
insert into bahag values (295, 288, 6, 'ולא ילבש גבר');
insert into bahag values (296, 554, 6, 'לא תקח האם');
insert into bahag values (297, 546, 6, 'לא תשים דמים');
insert into bahag values (298, 466, 6, 'לא תחרוש בשור ובחמור');
insert into bahag values (299, 464, 6, 'לא תזרע כרמך');
insert into bahag values (300, 290, 6, 'לא תלבש שעטנז');
insert into bahag values (301, 607, 6, 'ומוש"ר (וענשו אותו מאה כסף) לא יוכל לשלחה');
insert into bahag values (302, 606, 6, 'ואונס לא יוכל לשלחה');
insert into bahag values (303, 748, 6, 'לא יגלה כנף אביו');
insert into bahag values (304, 608, 6, 'לא יבוא פצוע דכא');
insert into bahag values (305, 602, 6, 'לא יבוא ממזר');
insert into bahag values (306, 301, 6, 'לא יבוא עמוני');
insert into bahag values (307, 749, 6, 'לא יבוא להם עד עולם');
insert into bahag values (308, 304, 6, 'לא תדרוש שלומם וטובתם');
insert into bahag values (309, 302, 6, 'לא תתעב אדומי');
insert into bahag values (310, 303, 6, 'לא תתעב מצרי');
insert into bahag values (311, 326, 6, 'לא יבוא בעל קרי אל תוך המחנה');
insert into bahag values (312, 662, 6, 'לא יראה בך ערות דבר');		-- See Rav Troib's note #102
insert into bahag values (313, 502, 6, 'לא תסגיר עבד');
insert into bahag values (314, 503, 6, 'לא תוננו');
insert into bahag values (315, 687, 6, 'לא תהיה קדשה');	-- See Rav Troib's note #66 and #103. I'm assuming the Bahag is the same as the Semag in this matter, although the Bahag splits it into two
insert into bahag values (316, 750, 6, 'ולא יהיה קדש');
insert into bahag values (317, 348, 6, 'לא תביא אתנן זונה ומחיר כלב');
insert into bahag values (318, 484, 6, 'לא תשיך לאחיך');
insert into bahag values (319, 403, 6, 'לא תאחר לשלמו');
insert into bahag values (320, 516, 6, 'ואל כליך לא תתן');
insert into bahag values (321, 515, 6, 'וחרמש לא תניף');
insert into bahag values (322, 604, 6, 'לא יוכל בעלה הראשון');
insert into bahag values (323, 673, 6, 'לא תחטיא הארץ');
insert into bahag values (324, 559, 6, 'ולא יצא בצבא');
insert into bahag values (325, 751, 6, 'ולא יעבר עליו לכל דבר');
insert into bahag values (326, 490, 6, 'ולא יחבול ריחים');
insert into bahag values (327, 661, 6, 'לא ימס את לבב אחיו');
insert into bahag values (328, 487, 6, 'לא תבוא אל ביתו לעבוט עבוטו');
insert into bahag values (329, 488, 6, 'לא תשכב בעבוטו');
insert into bahag values (330, 752, 6, 'לא תעשק שכיר');
insert into bahag values (331, 753, 6, 'לא תבוא עליו השמש');
insert into bahag values (332, 535, 6, 'לא יומתו אבות');
insert into bahag values (333, 528, 6, 'לא תטה משפט גר יתום');
insert into bahag values (334, 489, 6, 'לא תחבול בגד [אלמנה]');
insert into bahag values (335, 462, 6, 'לא תשוב לקחתו');
insert into bahag values (336, 548, 6, 'ארבעים יכנו ולא יוסיף');
insert into bahag values (337, 754, 6, 'זיתך לא תפאר');
insert into bahag values (338, 460, 6, 'כרמך לא תעולל');
insert into bahag values (339, 467, 6, 'לא תחסום שור');
insert into bahag values (340, 605, 6, 'לא תהיה אשת המת [החוצה]');
insert into bahag values (341, 541, 6, 'וקצצה את כפה לא תחוס עיניך');
insert into bahag values (342, 520, 6, 'לא יהיה לך בכיסך');
insert into bahag values (343, 755, 6, 'לא יהיה לך בביתך איפה');
insert into bahag values (344, 399, 6, 'לא אכלתי באני ממנו');
insert into bahag values (345, 398, 6, 'ולא בערתי ממנו בטמא');
insert into bahag values (346, 400, 6, 'לא נתתי ממנו למת');
insert into bahag values (347, 756, 6, 'לא תניף עליהם ברזל');
insert into bahag values (348, 757, 6, 'לא תסור מכל הדברים');

-- 7 - Aseh on Yechidim (200)
insert into bahag values (349, 10,  7, 'קרית שמע');	-- For some reason the Rav Traube claims the Rambam didn't count this mitzvah. The Bahag doesn't count #2 of the Rambam, so perhaps he viewed this as a fusion of the two? See also Rav Perla's commentary to Rav Saadiah Gaon, Aseh #3
insert into bahag values (350, 12,  7, 'ותפילין');		-- The Bahag counts this as one, whereas the Rambam counts this as two
insert into bahag values (351, 15,  7, 'ומזוזה');
insert into bahag values (352, 14,  7, 'ציצית');
insert into bahag values (353, 215, 7, 'ומילה');
insert into bahag values (354, 80,  7, 'פדיון הבן');
insert into bahag values (355, 81,  7, 'ופדיון פטר חמור');
insert into bahag values (356, 79,  7, 'והפרשת בכורות שור וכבש או עז');
insert into bahag values (357, 212, 7, 'ופריה ורביה');
insert into bahag values (358, 126, 7, 'תרומה גדולה');
insert into bahag values (359, 127, 7, 'ומעשר ראשון');
insert into bahag values (360, 129, 7, 'תרומת מעשר');
insert into bahag values (361, 128, 7, 'מעשר שני');
insert into bahag values (362, 130, 7, 'ומעשר עני');
insert into bahag values (363, 144, 7, 'ראשית הגז');
insert into bahag values (364, 143, 7, 'והמתנות');
insert into bahag values (365, 133, 7, 'חלה');
insert into bahag values (366, 125, 7, 'בכורים');
insert into bahag values (367, 171, 7, 'שקלים');
insert into bahag values (368, 758, 7, 'עורות קדשים');		-- For some reason Rav Troib cross references Rambam #20, which isn't relevant
insert into bahag values (369, 759, 7, 'והמורם תרומה מתודה');
insert into bahag values (370, 760, 7, 'וחזה ושוק');
insert into bahag values (371, 19,  7, 'וברכת המזון');
insert into bahag values (372, 11,  7, 'ותלמוד תורה');
insert into bahag values (373, 5,   7, 'מאה ברכות בכל יום');	-- It's up for debate if the Bahag means the Rambam's #5
insert into bahag values (374, 9,   7, 'קידוש השם');
insert into bahag values (375, 3,   7, 'ואהבת השם');
insert into bahag values (376, 4,   7, 'ויראת השם');
insert into bahag values (377, 761, 7, 'לעבד השם');		-- See Rav Troib's note #4
insert into bahag values (378, 7,   7, 'להשבע בשם');
insert into bahag values (379, 6,   7, 'ולדבק בשם');
insert into bahag values (380, 8,   7, 'וללכת בדרכיו');
insert into bahag values (381, 762, 7, 'להלביש ערומים');
insert into bahag values (382, 763, 7, 'לקבור מתים');
insert into bahag values (383, 764, 7, 'לנחם אבילים');
insert into bahag values (384, 765, 7, 'בקור חולים');
insert into bahag values (385, 766, 7, 'ואהבת שלום. וצדק אמת');	-- See Rav Troib's note #11
insert into bahag values (386, 851, 7, 'ללמוד');		-- See Rav Troib's note #12
insert into bahag values (387, 767, 7, 'וללמד');
insert into bahag values (388, 768, 7, 'לשמור');
insert into bahag values (389, 769, 7, 'ולעשות');
insert into bahag values (390, 94,  7, 'מוצא שפתיך תשמור ועשית');
insert into bahag values (391, 211, 7, 'מורא');
insert into bahag values (392, 210, 7, 'וכיבוד אב ואם');
insert into bahag values (393, 21,  7, 'מוראת מקדש');
insert into bahag values (394, 770, 7, 'ושמור שבת');	-- See Rav Troib's note #13, and Rav Hildesheimer's note #17
insert into bahag values (395, 771, 7, 'ושמחת שבת');	-- See Rav Troib's note #14, and Rav Hildesheimer's note #18
insert into bahag values (396, 772, 7, 'ועינוג');
insert into bahag values (397, 773, 7, 'והחיאת אח');	-- See Rav Troib's note #16 and Rav Perla's comment
insert into bahag values (398, 197, 7, 'והלואת אביון');
insert into bahag values (399, 199, 7, 'והשבת עבוט');
insert into bahag values (400, 774, 7, 'והשכחה');
insert into bahag values (401, 775, 7, 'ופאה בכרם');
insert into bahag values (402, 134, 7, 'הפקר שביעית [לעניים]');
insert into bahag values (403, 135, 7, '[השמטת (דייש ו)שביעית (לעניים)');	-- See Rav Hildesheimer's note #19 and Rav Perla's comment
insert into bahag values (404, 121, 7, 'ולקט');
insert into bahag values (405, 122, 7, 'שכחה');
insert into bahag values (406, 120, 7, 'ופאה בתבואה');
insert into bahag values (407, 776, 7, 'ושכחה באילן');
insert into bahag values (408, 124, 7, 'ופרט');
insert into bahag values (409, 123, 7, 'ועוללות');
insert into bahag values (410, 777, 7, 'ומתנה במתנת ידך');	-- See Rav Troib's note #20 and Rav Hildesheimer's note #20
insert into bahag values (411, 205, 7, 'הוכח תוכיח');
insert into bahag values (412, 141, 7, 'השמטת כספים');
insert into bahag values (413, 137, 7, 'ושילוח עבדים');
insert into bahag values (414, 206, 7, 'ואהבת לרעך כמוך');
insert into bahag values (415, 196, 7, 'הענק תעניק');
insert into bahag values (416, 778, 7, 'פתוח תפתח');
insert into bahag values (417, 779, 7, 'נתן תתן');
insert into bahag values (418, 780, 7, 'העבט תעביטנו');
insert into bahag values (419, 781, 7, 'למד בנך תורה ומצות');
insert into bahag values (420, 782, 7, 'ושננתם');
insert into bahag values (421, 783, 7, 'ושמתם את דברי');
insert into bahag values (422, 153, 7, 'קביעות ראשי חדשים');
insert into bahag values (423, 642, 7, 'וחישוב תקופות');
insert into bahag values (424, 161, 7, 'וספירת העומר');
insert into bahag values (425, 55,  7, 'לעשות הפסח');
insert into bahag values (426, 56, 7, 'לאכלו צלי');
insert into bahag values (427, 158, 7, 'לאכלו על מצות ומרומים');	-- See Rav Troib's note #27 and Rav Hildesheimer's note #21
insert into bahag values (428, 784, 7, 'לשמרו שבעת ימים');		-- See Rav Troib's note #28*
insert into bahag values (429, 154, 7, 'שבות שמונה ימים [שבת]');
insert into bahag values (430, 159, 7, 'ראשון');
insert into bahag values (431, 160, 7, 'ושביעי של פסח');
insert into bahag values (432, 152, 7, 'ועצרת');
insert into bahag values (433, 163, 7, 'ויום זכרון');
insert into bahag values (434, 165, 7, 'ויוה"כ');
insert into bahag values (435, 166, 7, 'וראשון');
insert into bahag values (436, 167, 7, 'ושמיני של חג הסוכות');
insert into bahag values (437, 785, 7, 'קידוש שמנה ימים [אלו]');	-- Rav Troib's note #22 and Rav Hildesheimer's note #22
insert into bahag values (438, 786, 7, 'קידוש שמנה ימים [אלו]');
insert into bahag values (439, 787, 7, 'קידוש שמנה ימים [אלו]');
insert into bahag values (440, 788, 7, 'קידוש שמנה ימים [אלו]');
insert into bahag values (441, 789, 7, 'קידוש שמנה ימים [אלו]');
insert into bahag values (442, 790, 7, 'קידוש שמנה ימים [אלו]');
insert into bahag values (443, 791, 7, 'קידוש שמנה ימים [אלו]');
insert into bahag values (444, 792, 7, 'קידוש שמנה ימים [אלו]');
insert into bahag values (445, 170, 7, 'תקיעה בר"ה');
insert into bahag values (446, 164, 7, 'ועינוי ביוה"כ');
insert into bahag values (447, 168, 7, 'וסוכה');
insert into bahag values (448, 169, 7, 'ולולב');
insert into bahag values (449, 793, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (450, 794, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (451, 795, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (452, 796, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (453, 797, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (454, 798, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (455, 799, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (456, 800, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (457, 801, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (458, 802, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (459, 803, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (460, 804, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (461, 805, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (462, 806, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (463, 807, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (464, 808, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (465, 809, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (466, 810, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (467, 811, 7, 'וימים שמנה עשר ולילה אחד לגמור את ההלל');
insert into bahag values (468, 235, 7, 'לעבוד בעבד כנעני לעולם');
insert into bahag values (469, 78,  7, 'מעשר בהמה');
insert into bahag values (470, 53,  7, 'ראיה');
insert into bahag values (471, 52,  7, 'וחגיגה');
insert into bahag values (472, 54,  7, 'ושמחת שלש רגלים');
insert into bahag values (473, 185, 7, 'לשרוף [צורות אלילים]');
insert into bahag values (474, 812, 7, 'ולגדע עבודה זרה [אשרות אלילים]');
insert into bahag values (475, 813, 7, 'לאכול קדשים');		-- See Rav Perla's note
insert into bahag values (476, 615, 7, 'ומעשר שני בירושלים');	-- The Ramban counts these last two as one mitzvah, the Bahag according to Rav Troib splits them
insert into bahag values (477, 814, 7, 'לשבות עבדך ואמתך ובהמתך כמוך');
insert into bahag values (478, 815, 7, 'שמח לוי וגר יום ואלמנה בשילוש רגלים');
insert into bahag values (479, 204, 7, 'השב אבדה');
insert into bahag values (480, 194, 7, 'ושילום גזל');
insert into bahag values (481, 118, 7, 'וחמשה חומשין');
insert into bahag values (482, 816, 7, 'וחמשה חומשין');
insert into bahag values (483, 817, 7, 'וחמשה חומשין');
insert into bahag values (484, 818, 7, 'וחמשה חומשין');
insert into bahag values (485, 819, 7, 'וחמשה חומשין');
insert into bahag values (486, 820, 7, 'נר שבת');
insert into bahag values (487, 821, 7, 'נר חנוכה');
insert into bahag values (488, 822, 7, 'נבלה לגר תושב');
insert into bahag values (489, 207, 7, 'לאהוב גר צדק');
insert into bahag values (490, 823, 7, 'אהוב משפט');
insert into bahag values (491, 679, 7, 'צדוק הדין');
insert into bahag values (492, 627, 7, 'להיות תמים');		-- For some reason Rav Troib cross references Rambam #56, then in his note #38 says it's something the Ramban counts
insert into bahag values (493, 195, 7, 'לעשות צדקה');
insert into bahag values (494, 824, 7, 'לרדוף צדק');
insert into bahag values (495, 825, 7, 'לגמול חסד');
insert into bahag values (496, 826, 7, 'שמכת כלה');		-- See Rav Troib's note #40 and Rav Hildesheimer's note #24
insert into bahag values (497, 200, 7, 'שכר שכיר ביומו');
insert into bahag values (498, 203, 7, 'לטעון');
insert into bahag values (499, 202, 7, 'ולפרק עם חברו');
insert into bahag values (500, 148, 7, 'שילוח הקן');
insert into bahag values (501, 193, 7, 'והכן יתד על אזנך');
insert into bahag values (502, 827, 7, 'ליראה מן החכמים');
insert into bahag values (503, 217, 7, 'מצות חליצה');
insert into bahag values (504, 216, 7, 'ויבום');
insert into bahag values (505, 208, 7, 'צדק הינין');
insert into bahag values (506, 828, 7, 'ושילום מדות');
insert into bahag values (507, 829, 7, 'ביעור שביעית');
insert into bahag values (508, 131, 7, 'וידוי מעשר');
insert into bahag values (509, 132, 7, 'מקרא בכורים');
insert into bahag values (510, 16,  7, 'ומצות הקהל');
insert into bahag values (511, 830, 7, 'והתקדשתם והייתם קדושים');
insert into bahag values (512, 831, 7, 'והוי שפל רוח');
insert into bahag values (513, 188, 7, 'למחות זרעו של עמלק');
insert into bahag values (514, 91,  7, 'לשרוף נותר באש');
insert into bahag values (515, 209, 7, 'לקום מפשני שיבה');
insert into bahag values (516, 832, 7, 'ולהדר פני זקן');
insert into bahag values (517, 156, 7, 'ביעור חמץ');
insert into bahag values (518, 147, 7, 'וכיסוי הדם');
insert into bahag values (519, 109, 7, 'וטבילה בזמנה');		-- See Rav Troib's note #48
insert into bahag values (520, 83,  7, 'ומצות נדרים ונדבות ועולות ושלמים');
insert into bahag values (521, 833, 7, 'וחטא חטאת ואשם');
insert into bahag values (522, 73,  7, 'להתכפר בתחנונים ובקרבן');
insert into bahag values (523, 108, 7, 'טמאים לטהר (בהזאות) [הזאה] וטבילה וקרבן (אחד) כראוי');
insert into bahag values (524, 17,  7, 'מצות מלך לכתוב לו ספר תורה לשמו');
insert into bahag values (525, 38,  7, 'מצות כהן גדול ליקח בתולה');
insert into bahag values (526, 834, 7, 'ולהביא פר הבא על כל המצות');
insert into bahag values (527, 835, 7, 'ופר יום הכפורים');
insert into bahag values (528, 836, 7, 'ועשירית האפיה [לחינוך]');
insert into bahag values (529, 40,  7, '(חביתי כהנים) [חביטין]');	-- See Rav Hildesheimer's note #25
insert into bahag values (530, 837, 7, 'כל מעשה יום הכפורים');
insert into bahag values (531, 838, 7, 'מצות כהנים ללמוד לעשות יציקות');
insert into bahag values (532, 839, 7, 'ובלילות');
insert into bahag values (533, 840, 7, 'ופתיתות');
insert into bahag values (534, 841, 7, 'מליחות');
insert into bahag values (535, 842, 7, 'תנופות');
insert into bahag values (536, 843, 7, 'הגשות');
insert into bahag values (537, 844, 7, 'קמיצות');
insert into bahag values (538, 845, 7, 'הקטרות');
insert into bahag values (539, 846, 7, 'שחיטות');
insert into bahag values (540, 847, 7, 'ומליקות');
insert into bahag values (541, 848, 7, 'קבלות');
insert into bahag values (542, 849, 7, 'והזאות');
insert into bahag values (543, 223, 7, 'השקיית סוטה');
insert into bahag values (544, 181, 7, 'ועריפת עגלה');
insert into bahag values (545, 110, 7, 'טהרת מצורע אדם ובגדים ובתים');
insert into bahag values (546, 26,  7, 'ונשיאות כפים');
insert into bahag values (547, 184, 7, 'ועשיית מעקה');
insert into bahag values (548, 850, 7, 'ומקרא מכילה');

-- 8 - Parshiyos (65), 48 Aseh and 17 Lo Saaseh (Based on Rav Troib's endnote #9)
insert into bahag values (549, 852, 8, 'פרשת סנהדרי גדולה וקטנה דיני נפשות ודיני ממונות עבד עברי ומוכר עצמו ומכרוהו ב"ד ונמכר לנכרי ואמה עבריה');	-- A
insert into bahag values (550, 182, 8, 'פרשת שש ערי מקלט ומ"ב עיר'); -- A. See Rav Perla's note to Rav Troib's comment #7
insert into bahag values (551, 853, 8, 'פרשת נזיקין החובל בחבירו ונוגח ונוגף וגונב וממונות');	-- L
insert into bahag values (552, 854, 8, 'פרשת משכן וכל כליו ושמן המאור ובגדי שרד קידוש כהנים וחינוך מזבח');	-- A
insert into bahag values (553, 855, 8, 'פרשת שמן המשחה וקטורת הסמים');	-- A
insert into bahag values (554, 856, 8, 'פרשת תחנונים');	-- A
insert into bahag values (555, 857, 8, 'פרשת עולות מנחות ושלמים');	-- A
insert into bahag values (556, 64,  8, 'פרשת חוטא וחטאת עולה ויורד');	-- A
insert into bahag values (557, 65,  8, 'פרשת אשם ודאי אדם תלוי');		-- A
insert into bahag values (558, 858, 8, 'פרשת מעילות');		-- L
insert into bahag values (559, 859, 8, 'פרשת טומאת נבילות וטהרת נבילות טומאת שרץ וטהרת שרץ וטומאת כלים אדם ואוכלין ומשקין');		-- L
insert into bahag values (560, 860, 8, 'פרשת יולדת');		-- L
insert into bahag values (561, 861, 8, 'פרשת נגעים');	-- L
insert into bahag values (562, 862, 8, 'פרשת זב וזבה נדה בועלנדה שכבת זרע');	-- L
insert into bahag values (563, 49,  8, 'פרשת יוה"כ');		-- A
insert into bahag values (564, 863, 8, 'פרשת נחרפת');		-- L
insert into bahag values (565, 864, 8, 'פרשת ערלה');		-- L
insert into bahag values (566, 865, 8, 'פרשת מומי בהמה');	-- L
insert into bahag values (567, 866, 8, 'פרשת נדברים ונדבות');	-- A
insert into bahag values (568, 46,  8, 'פרשת שתי הלחם');	-- A
insert into bahag values (569, 27,  8, 'פרשת לחם הפנים');		-- A
insert into bahag values (570, 867, 8, 'פרשת נותן מום בחברו');	-- L
insert into bahag values (571, 140, 8, 'פרשת שביעית');		-- A
insert into bahag values (572, 138, 8, 'פרשת יובל');		-- A
insert into bahag values (573, 139, 8, 'פרשת ממכר ובתי ערי חומה ובתי החצרים גור ותושב');	-- A
insert into bahag values (574, 868, 8, 'פרשת ערכין');		-- A
insert into bahag values (575, 869, 8, 'פרשת מקדיש וחרמים');	-- A
insert into bahag values (576, 870, 8, 'פרשת כהנים ומנחת ישראל');	-- A See Rav Troib's note #8
insert into bahag values (577, 31,  8, 'פרשת שילוח טמאים');		-- A
insert into bahag values (578, 871, 8, 'פרשת סוטה');		-- A See Rav Hildesheimer's note #31
insert into bahag values (579, 872, 8, 'פרשת נזיר');		-- A See Rav Hildesheimer's note #32
insert into bahag values (580, 873, 8, 'פרשת ברכת כהנים');	-- A See Rav Troib's note #10
insert into bahag values (581, 874, 8, 'פרשת חנוכת מזבח');	-- A
insert into bahag values (582, 57,  8, 'פרשת פסח שני');	-- A
insert into bahag values (583, 59,  8, 'פרשת חצוצרות');	-- A
insert into bahag values (584, 875, 8, 'פרשת נסכים');		-- A
insert into bahag values (585, 68,  8, 'פרשת העלם דבר');	-- A
insert into bahag values (586, 876, 8, 'פרשת מתנות כהונה');	-- A
insert into bahag values (587, 113, 8, 'פרשת פרה אדומה');	-- A
insert into bahag values (588, 248, 8, 'פרשת נחלות ובת יורשת נחלה');	-- A
insert into bahag values (589, 39,  8, 'פרשת תמידין');		-- A
insert into bahag values (590, 877, 8, 'פרשת עשרים מוספים');	-- A
insert into bahag values (591, 878, 8, 'פרשת נדרים ושבועות');	-- A
insert into bahag values (592, 879, 8, 'פרשת תרומת המכס');	-- A
insert into bahag values (593, 880, 8, 'פרשת הלוקח כלי תשמיש מן הגואים');	-- A
insert into bahag values (594, 183, 8, 'פרשת קידוש הארץ לתת ללוים ערי מקלט');	-- A
insert into bahag values (595, 881, 8, 'פרשת נביא השקר');	-- L See Rav Troib's note #15, Rav Perla's note, and Rav Hildesheimer's note #33
insert into bahag values (596, 882, 8, 'פרשת עיר הנדחת');	-- L
insert into bahag values (597, 173, 8, 'פרשת המלך');		-- A
insert into bahag values (598, 883, 8, 'פרשת עדים זוממין');	-- L
insert into bahag values (599, 191, 8, 'פרשת משוח מלחמה');	-- A
insert into bahag values (600, 190, 8, 'פרשת עיר משלמת ועיר שאינה משלמת');		-- A
insert into bahag values (601, 884, 8, 'פרשת עגלה ערופה');	-- A
insert into bahag values (602, 221, 8, 'פרשת יפת תאר');	-- A
insert into bahag values (603, 885, 8, 'פרשת משפט הבכורה');	-- A See Rav Troib's endnote #38 
insert into bahag values (604, 886, 8, 'פרשת בן סורר ומורה');	-- L
insert into bahag values (605, 887, 8, 'פרשת מוציא שם רע');		-- L
insert into bahag values (606, 888, 8, 'פרשת אונס ומפתה');		-- L For some reason Rav Troib in his endnote #9 doesn't list this as one of the Lo Saaseh's, but its obvious it is
insert into bahag values (607, 213, 8, 'פרשת לקוחין וגרושין');		-- A See Rav Troib's note #17 and Rav Hildesheimer's note #34
insert into bahag values (608, 889, 8, 'פרשת יבמין');			-- A
insert into bahag values (609, 890, 8, 'פרשת שולחת יד במבושיו');	-- L See Rav Perla's note
insert into bahag values (610, 891, 8, 'פרשת בכורים');			-- A See Rav Troib's note #19
insert into bahag values (611, 892, 8, 'פרשת אבנים גדולות');		-- A
insert into bahag values (612, 893, 8, 'פרשת ברכות וקללות');		-- A
insert into bahag values (613, 894, 8, 'פרשת הקהל');			-- A