.echo OFF

drop table if exists rashbag;
drop table if exists rashbagNotes;

/**
Rav Shlomo ibn Gabirol's Azharos, as explained by Nesiv Mitzvosecha
*/
create table rashbag (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL unique,
	mitzvahNumber integer NOT NULL,
	azharosText varchar NOT NULL,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

insert into rashbag values (1,  1,   1,  'שמר לבי מענה, היה במאד נענה, ירא האל ומנה, דבריו הישרים.\nוהוא יסלח אשמה, והוא ירבה עצמה, והוא יתן חכמה, להבין נמהרים.\nאספר תושיות, מתוקות לפיות, ואציב תלפיות, לישר העוברים.\nשמנה וארבעים, ומאתים נטועים, כמו מסמרות תקועים, מספר אברים.\nבסיני נודעו, ומרום נשמעו, ויחדו הטבעו, בתוך עשרת דברים.\nאשר התוו התוות בתיבות נשתוות, במספר המצות, ובהם נאמרים.\nוהמושיעך, והמודיעך, עד אשר לרעך, נתנם נחקרים.\nוהרעים אל קעות, בקול הפליא זועות, מקפץ על גבעות, מדלג על הרים.\nועת קרא אותם, רעדה אחזתם, ויצאה נשמתם, ברטט ושברים.\nוהוריד טל אידיו, לעמו ועבדיו, והשיב בחסדיו, נשמות לפגרים.\nאני הוצאתיך, אני הזהרתיך, אני הדרכתיך, בדרכי מישרים.');
insert into rashbag values (2,  10,  2,  'ליחד אל אים');
insert into rashbag values (3,  2,   3,  'שתי פעמים ביום');
insert into rashbag values (4,  5,   4,  'להתפלל יום יום, ערבים ושחרים.');
insert into rashbag values (5,  761, 5,  'לעבדו');
insert into rashbag values (6,  3,   6,  'ולאהבו, בלב');
insert into rashbag values (7,  6,   7,  'ולדבקה בו');
insert into rashbag values (8,  8,   8,  'ולתמך בנתיבו, פעמים ואשורים.');
insert into rashbag values (9,  9,   9,  'לקדש תעצומו');
insert into rashbag values (10, 4,   10, 'ליראה מזעמו');
insert into rashbag values (11, 7,   11, 'להשבע בשמו, בלי שוא ושקרים.');
insert into rashbag values (12, 679, 12, 'לצדק דינהו');
insert into rashbag values (13, 824, 13, 'ולרדוף צדקהו');
insert into rashbag values (14, 768, 14, 'ולשמור דתהו');
insert into rashbag values (15, 769, 15, 'ולעשות מאמרים.');
insert into rashbag values (16, 783, 16, 'דבריו שים מרפא');
insert into rashbag values (17, 895, 17, 'עלי לב גם על פה');
insert into rashbag values (18, 15,  18, 'וכתבם על ספי, מזוזות ושערים.');
insert into rashbag values (19, 11,  19, 'ושננתם תמיד, לבנך ולתלמיד');
insert into rashbag values (20, 896, 20, 'והברכות תצמיד, מאת הנגמרים');
insert into rashbag values (21, 80,  21, 'בכור בנים תפדה');
insert into rashbag values (22, 12,  22, 'וטוטפות תעדה');
insert into rashbag values (23, 235, 23, 'ובכנעני תרדה');
insert into rashbag values (24, 215, 24, 'ותמול בבשרים');
insert into rashbag values (25, 81,  25, 'ותפדה פטר חמור');
insert into rashbag values (26, 770, 26, 'והשבת תשמור');
insert into rashbag values (27, 793, 27, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (28, 794, 28, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (29, 795, 29, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (30, 796, 30, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (31, 797, 31, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (32, 798, 32, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (33, 799, 33, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (34, 800, 34, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (35, 801, 35, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (36, 802, 36, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (37, 803, 37, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (38, 804, 38, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (39, 805, 39, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (40, 806, 40, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (41, 807, 41, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (42, 808, 42, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (43, 809, 43, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (44, 810, 44, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (45, 811, 45, 'וההלל תגמור, בימים נספרים.');
insert into rashbag values (46, 14,  46, 'ועל כנפי בגדך, גדילים תעשה לך');
insert into rashbag values (47, 197, 47, 'ותלוה דל ודך, תפייס בדברים.');
insert into rashbag values (48, 19,  48, 'קבע ברכת מזון, באט ובחפזון');
insert into rashbag values (49, 164, 49, 'ולא תמצא רזון, בענוי כפורים.');
insert into rashbag values (50, 199, 50, 'עבוט עני השב, ואתך אל ישב');
insert into rashbag values (51, 194, 51, 'והגזליה תשב, ועושק מסחרים.');
insert into rashbag values (52, 209, 52, 'היה לשב עניו, לשכלו ולשניו, ותקום מפניו, בפנים נהדרים.');
insert into rashbag values (53, 832, 53, 'היה לשב עניו, לשכלו ולשניו, ותקום מפניו, בפנים נהדרים.');
insert into rashbag values (54, 851, 54, 'ותלמוד');
insert into rashbag values (55, 767, 55, 'ולמד');
insert into rashbag values (56, 210, 56, 'והוריך תכבד');
insert into rashbag values (57, 204, 57, 'ותשיב כלי אובד');
insert into rashbag values (58, 79,  58, 'ותקדיש מבכרים');
insert into rashbag values (59, 195, 59, 'והדלים תרחם');
insert into rashbag values (60, 765, 60, 'והחולים תשיחם');
insert into rashbag values (61, 764, 61, 'והאבלים תנחם');
insert into rashbag values (62, 763, 62, 'ותקבור נגזרים');
insert into rashbag values (63, 778, 63, 'ולפתוח ולתת לאביון יחתת');
insert into rashbag values (64, 779, 64, 'ולפתוח ולתת לאביון יחתת');
insert into rashbag values (65, 188, 65, 'לשמיד ולמותת, עמלק ראש צרים.');
insert into rashbag values (66, 156, 66, 'לבער מחמצת, בכלה ונחרצת');
insert into rashbag values (67, 185, 67, 'ולשרוף מפלצת, אלילים ואשרים');
insert into rashbag values (68, 772, 68, 'לענג יום מנוחה, בהשקט ובבטחה');
insert into rashbag values (69, 52,  69, 'ולחג');
insert into rashbag values (70, 54,  70, 'ולשמה');
insert into rashbag values (71, 207, 71, 'ולאהוב הגרים');
insert into rashbag values (72, 203, 72, 'והצדקה לעשות, כפי יד וכמסות, ומשאות עמוסות, להקים');
insert into rashbag values (73, 202, 73, 'ולהרים.');
insert into rashbag values (74, 205, 74, 'ותלמיד שעשועים, להדר ולהנעים, ותוכחת רעים.');
insert into rashbag values (75, 206, 75, 'ואהבת החברים.');
insert into rashbag values (76, 627, 76, 'ותומה');
insert into rashbag values (77, 831, 77, 'וענוה');
insert into rashbag values (78, 771, 78, 'ויין קידוש חדוה');
insert into rashbag values (79, 21,  79, 'ויראת מקדש');
insert into rashbag values (80, 827, 80, 'וחכמים');
insert into rashbag values (81, 211, 81, 'עם הורים.');
insert into rashbag values (82, 781, 82, 'ולמוד נאמנה, לבנים ברננה');
insert into rashbag values (83, 130, 83, 'ליתום ולאלמנה, ולוי עם רגים. שמור מעשר עני');
insert into rashbag values (84, 128, 84, 'וגם מעשר שני');
insert into rashbag values (85, 166, 85, 'וראשון');
insert into rashbag values (86, 167, 86, 'ושמיני תקדש בהדרים');
insert into rashbag values (87, 129, 87, 'ומעשר');
insert into rashbag values (88, 127, 88, 'ממעשר');
insert into rashbag values (89, 131, 89, 'וגם וידוי מעשר');
insert into rashbag values (90, 78,  90, 'ומבהמה תעשר');
insert into rashbag values (91, 144, 91, 'וראש גז מעדרים');
insert into rashbag values (92, 813, 92, 'וקדשי מתני, וגם מעשר שני, תאכלם במעוני');
insert into rashbag values (93, 133, 93, 'והחלה תרים.');
insert into rashbag values (94, 773, 94, 'וחזק מך ימוט, ולעד לא תמוט');
insert into rashbag values (95, 134, 95, 'ובשביעית תשמוט, ספיחים ונזירים.');
insert into rashbag values (96, 141, 96, 'ותשמט משאות');
insert into rashbag values (97, 776, 97, 'ושכחה');
insert into rashbag values (98, 897, 98, 'עם פאות, באילן ותבואות');
insert into rashbag values (99, 122, 99, 'ושכחה');
insert into rashbag values (100, 120, 100, 'עם פאות, באילן ותבואות');
insert into rashbag values (101, 123, 101, 'ועוללות מבצירים.');
insert into rashbag values (102, 121, 102, 'ולקט הקציר');
insert into rashbag values (103, 124, 103, 'ופרט הבציר, עזוב לבלי תציר, לדלים נארים. ואלימו הבט,');
insert into rashbag values (104, 196, 104, 'בהענק');
insert into rashbag values (105, 780, 105, 'והעבט');
insert into rashbag values (106, 94,  106, 'ותן פן תלבט, נדבות ונדרים.');
insert into rashbag values (107, 91,  107, 'שמח ואמור האח, בהחיותך האח, והנותר באח, יהושלך על אורים.');
insert into rashbag values (108, 898, 108, 'ופגול כי יבאש, ישרף באש');
insert into rashbag values (109, 55,  109, 'ופסח');
insert into rashbag values (110, 56,  110, 'בצלי אש');
insert into rashbag values (111, 158, 111, 'ומצות ומרורים.');
insert into rashbag values (112, 159, 112, 'וראשון');
insert into rashbag values (113, 160, 113, 'ושביעי, תקדש בחג ישעי');
insert into rashbag values (114, 162, 114, 'ומקרא שבועי, בבכרי קצירים.');
insert into rashbag values (115, 163, 115, 'ויום זכרון');
insert into rashbag values (116, 170, 116, 'תרועה');
insert into rashbag values (117, 165, 117, 'ויום כפור תועה');
insert into rashbag values (118, 168, 118, 'וסכה');
insert into rashbag values (119, 169, 119, 'וארבעה, צמחים נבחרים. ערבים כסמדר, ועץ עבות נהדר, ופרי עץ הדר, וכפות תמרים.');
insert into rashbag values (120, 38,  120, 'וכהן הוקם על, באלמנה יגעל, ובבתולה יבעל');
insert into rashbag values (121, 26,  121, 'וידהו ירים.');
insert into rashbag values (122, 110, 122, 'וידע העתים');
insert into rashbag values (123, 899, 123, 'לטהר סות');
insert into rashbag values (124, 900, 124, 'ובתים');
insert into rashbag values (125, 840, 125, 'ופתות הפתים');
insert into rashbag values (126, 843, 126, 'והגש מוקטרים.');
insert into rashbag values (127, 845, 127, 'ונשלח נשלוח, להקטיר');
insert into rashbag values (128, 62,  128, 'ולמלוח, לכפר ולסלוח, פשעים נעתרים.');
insert into rashbag values (129, 838, 129, 'ולצוק');
insert into rashbag values (130, 839, 130, 'ולבלבל');
insert into rashbag values (131, 846, 131, 'ולשחוט פר ויובל');
insert into rashbag values (132, 847, 132, 'ולמלוק');
insert into rashbag values (133, 848, 133, 'ולקבל');
insert into rashbag values (134, 844, 134, 'ולקמץ אזכרים.');
insert into rashbag values (135, 842, 135, 'וכן ילמד עם זה, להניף');
insert into rashbag values (136, 849, 136, 'ולהזה');
insert into rashbag values (137, 760, 137, 'והשוק והחזה, לחוקי נעצרים.');
insert into rashbag values (138, 901, 138, 'ויכין למלאכת, שרד ובעת לכתו, לבית הפרוכת, בגדים משזרים.');	
insert into rashbag values (139, 20,  139, 'ותבנית המשכן');
insert into rashbag values (140, 27,  140, 'ולחם הנתכן');
insert into rashbag values (141, 35,  141, 'ושמן המתוקן, למשחה');
insert into rashbag values (142, 902, 142, 'ולמאורים.');
insert into rashbag values (143, 874, 143, 'חנכה');
insert into rashbag values (144, 903, 144, 'ומלאכת, קטורת נסכת, ושש המערכת');
insert into rashbag values (145, 46,  145, 'ושתי ככרים');
insert into rashbag values (146, 66,  146, 'ושלמים');
insert into rashbag values (147, 67,  147, 'ומנות');
insert into rashbag values (148, 63,  148, 'ועולות');
insert into rashbag values (149, 65,  149, 'וקרבנות, ושלש מתנות, במועדים נזכרים.');
insert into rashbag values (150, 44,  150, 'והעומר לנהל');
insert into rashbag values (151, 820, 151, 'ונר שבת יהל');
insert into rashbag values (152, 16,  152, 'ופרשת הקהל');
insert into rashbag values (153, 176, 153, 'ושופטים עם שטרים.');
insert into rashbag values (154, _, 154, '');
insert into rashbag values (155, _, 155, '');
insert into rashbag values (156, _, 156, '');
insert into rashbag values (157, _, 157, '');
insert into rashbag values (158, _, 158, '');
insert into rashbag values (159, _, 159, '');
insert into rashbag values (160, _, 160, '');
insert into rashbag values (161, _, 161, '');
insert into rashbag values (162, _, 162, '');
insert into rashbag values (163, _, 163, '');
insert into rashbag values (164, _, 164, '');
insert into rashbag values (165, _, 165, '');

create table rashbagNotes (
	_id integer NOT NULL primary key,
	hebrewNote varChar,
	enNote varChar,
	foreign key(_id) references bahag(_id) on delete cascade
);

insert into rashbagNotes values (92, null, 'Nesiv Mitsvosecha understood the Bahag as counting only one, yet Rav Traube counted two.');
insert into rashbagNotes values (111, null, 'Rashbag uses the same expression as Bahag, and Nesiv Mitzvosecha understands it''s not referring to the mitzvah to eat matzah, but maybe it includes it.');
insert into rashbagNotes values (124, null, 'Rav Troib counts the three types of tahara from tzaraas as one mitzvah, yet the Nesiv Mitzvosecha understood the Bahag as it being three.');
insert into rashbagNotes values (138, null, 'Nesiv Mitzvosecha says muktarim refers to Haktaras HaKetores, but the Bahag doesn''t count it. He also says that there are five mitzvos listed here, but if you include this one there are six. So seemingly he doesn''t mean to include it in the counting. It''s strange though that he doesn''t explain himself.');
insert into rashbagNotes values (138, null, 'The Bahag put Parshas Mishkan, Keilim, Shemen HaMaor, Bigdei Serad, Kiddush Kohanim, Chinuch Mizbeach all together (#854), and Rashbag split them up.');
insert into rashbagNotes valueS (142, null, 'The Rashbag split up the Bahag''s Parsha of Menorah Oil and Incense (#855).');
insert into rashbagNotes values (146, null, 'The Rashbag splits up the Bahag''s Parsha of Olos, Menachos and Shelamim (#857).');
insert into rashbagNotes values (153, null, 'Nesiv Mitzvosecha says this is the Bahag''s Parsha of Shoftim and Shotrim, but the Bahag doesn''t count such a Parsha. Rav Yerucham Fischel Perla explains that Rav Saadiah Gaon (Parsha #1) means like the Bahag, yet he calls this Parsha Shoftim and Shotrim, and Rashbag followed suit. However, since he includes less than the Bahag does, we''re equating it to the Rambam''s mitzvah of Sanhedrin.');