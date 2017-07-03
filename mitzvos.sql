.echo OFF

drop table if exists mitzvos;
drop table if exists ramban;
drop table if exists bahag;
drop table if exists rasag;
drop table if exists chofetzChaim;

create table mitzvos (
	_id integer NOT NULL primary key,
	mitzvahName varchar NOT NULL,
	mitzvahNameEn varchar,
	asehOrLoSaseh char(1) NOT NULL	-- A/L
);

insert into mitzvos values (1, 'מצות האמנה במציאות השם יתברך', null, 'A');	
insert into mitzvos values (2, 'מצות אחדות השם', null, 'A');
insert into mitzvos values (3, 'מצות אהבת השם', null, 'A');
insert into mitzvos values (4, 'מצות יראת השם', null, 'A');
insert into mitzvos values (5, 'מצות תפילה', null, 'A');
insert into mitzvos values (6, 'מצות החברה והדביקה עם חכמי התורה', null, 'A');
insert into mitzvos values (7, 'מצות על כל הצריך לישבע שישבע בשם השם', null, 'A');
insert into mitzvos values (8, 'מצות להדמות בדרכי השם יתברך הטובים והישרים', null, 'A');
insert into mitzvos values (9, 'מצות קידוש השם', null, 'A');
insert into mitzvos values (10, 'מצות קרית שמע שחרית וערבית', null, 'A');
insert into mitzvos values (11, 'מצות תלמוד תורה', null, 'A');
insert into mitzvos values (12, 'מצות תפילין של ראש', null, 'A');
insert into mitzvos values (13, 'מצות תפילין של יד', null, 'A');
insert into mitzvos values (14, 'מצות ציצית', null, 'A');
insert into mitzvos values (15, 'מצות מזוזה', null, 'A');
insert into mitzvos values (16, 'מצות הקהל במוצאי שביעית', null, 'A');
insert into mitzvos values (17, 'מצות לכתוב כל אחד מישראל ספר תורה לעצמו', null, 'A');
insert into mitzvos values (18, 'מצות על המלך לכתוב ספר תורה אחד יתר על שאר בני ישראל', null, 'A');
insert into mitzvos values (19, 'מצות ברכת המזון', null, 'A');
insert into mitzvos values (20, 'מצות בניין בית הבחירה', null, 'A');
insert into mitzvos values (21, 'מצות היראה מן המקדש', null, 'A');
insert into mitzvos values (22, 'מצות שמירת המקדש', null, 'A');
insert into mitzvos values (23, 'מצות עבודת הלוי במקדש', null, 'A');
insert into mitzvos values (24, 'מצות קדוש ידים ורגלים בשעת עבודה', null, 'A');
insert into mitzvos values (25, 'מצות עריכת נירות המקדש', null, 'A');
insert into mitzvos values (26, 'מצות ברכת כהנים בכל יום', null, 'A');
insert into mitzvos values (27, 'מצות סידור לחם הפנים ולבונה', null, 'A');
insert into mitzvos values (28, 'מצות הקטרת קטרת', null, 'A');
insert into mitzvos values (29, 'מצות הדלקת אש על המזבח בכל יום', null, 'A');
insert into mitzvos values (30, 'מצות הרמת הדשן', null, 'A');
insert into mitzvos values (31, 'מצות שלוח טמאים חוץ למחנה שכינה', null, 'A');
insert into mitzvos values (32, 'מצות קדוש זרע אהרן', null, 'A');
insert into mitzvos values (33, 'מצות לבישת בגדי הכהנים', null, 'A');
insert into mitzvos values (34, 'מצות משא הארון בכתף', null, 'A');
insert into mitzvos values (35, 'מצות משיחת כהנים גדולים ומלכים בשמן המשחה', null, 'A');
insert into mitzvos values (36, 'מצות להיות הכהנים עובדים במקדש משמרות משמרות ובמועדים עובדים כאחד', null, 'A');
insert into mitzvos values (37, 'מצות עניין טומאת הכהנים לקרוביהם ובכללה שיתאבלו כל אחד מישראל על ששה מקרוביו הידועים', null, 'A');
insert into mitzvos values (38, 'מצות כהן גדול לישא נערה בתולה', null, 'A');
insert into mitzvos values (39, 'מצות תמידין בכל יום', null, 'A');
insert into mitzvos values (40, 'מצות קרבן מנחה של כהן גדול בכל יום', null, 'A');
insert into mitzvos values (41, 'מצות קרבן מוסף של שבת', null, 'A');
insert into mitzvos values (42, 'מצות קרבן מוסף בכל ראש חדש', null, 'A');
insert into mitzvos values (43, 'מצות קרבן מוסף כל שבעת ימי הפסח', null, 'A');
insert into mitzvos values (44, 'מצות קרבן העומר של שעורים ביום שני של פסח', null, 'A');
insert into mitzvos values (45, 'מצות קרבן מוסף ביום חג השבועות', null, 'A');
insert into mitzvos values (46, 'מצות קרבן מנחה חדשה מן החטים ביום עצרת', null, 'A');
insert into mitzvos values (47, 'מצות קרבן מוסף ביום ראש השנה', null, 'A');
insert into mitzvos values (48, 'מצות קרבן מוסף ביום עשירי בתשרי שהוא נקרא יום הכפורים', null, 'A');
insert into mitzvos values (49, 'מצות עבודת יום הכפורים', null, 'A');
insert into mitzvos values (50, 'מצות קרבן מוסף בכל יום משבעת ימי חג הסוכות', null, 'A');
insert into mitzvos values (51, 'מצות קרבן מוסף ביום שמיני של סוכות שהוא נקרא שמיני עצרת', null, 'A');
insert into mitzvos values (52, 'מצות חגיגה ברגלים', null, 'A');
insert into mitzvos values (53, 'מצות להראות ברגלים בבית המקדש', null, 'A');
insert into mitzvos values (54, 'מצות לשמוח ברגלים', null, 'A');
insert into mitzvos values (55, 'מצות שחיטת הפסח', null, 'A');
insert into mitzvos values (56, 'מצות אכילת בשר הפסח', null, 'A');
insert into mitzvos values (57, 'מצות פסח שני בי"ד באייר', null, 'A');
insert into mitzvos values (58, 'מצות פסח שני שיאכל על מצות ומרורים', null, 'A');
insert into mitzvos values (59, 'מצות תקיעת חצוצרות במקדש ובמלחמה', null, 'A');
insert into mitzvos values (60, 'מצות הקרבת הקרבן שיהיה משמונה ימים ולמעלה', null, 'A');
insert into mitzvos values (61, 'מצות קרבן להיות תמים', null, 'A');
insert into mitzvos values (62, 'מצות מליחת הקרבן', null, 'A');
insert into mitzvos values (63, 'מצות מעשה העולה', null, 'A');
insert into mitzvos values (64, 'מצות מעשה החטאת', null, 'A');
insert into mitzvos values (65, 'מצות מעשה האשם', null, 'A');
insert into mitzvos values (66, 'מצות מעשה זבח השלמים', null, 'A');
insert into mitzvos values (67, 'מצות קרבן מנחה', null, 'A');
insert into mitzvos values (68, 'מצות קרבן בית דין אם טעו בהוראה', null, 'A');
insert into mitzvos values (69, 'מצות קרבן חטאת ליחיד ששגג במצות לא תעשה שחייבין עליה כרת', null, 'A');
insert into mitzvos values (70, 'מצות קרבן אשם תלוי', null, 'A');
insert into mitzvos values (71, 'מצות קרבן אשם ודאי', null, 'A');
insert into mitzvos values (72, 'מצות קרבן עולה ויורד', null, 'A');
insert into mitzvos values (73, 'מצות וידוי על החטא', null, 'A');
insert into mitzvos values (74, 'מצות קרבן זב כשיתרפא מזובו', null, 'A');
insert into mitzvos values (75, 'מצות קרבן זבה כשתתרפא מזובה', null, 'A');
insert into mitzvos values (76, 'מצות קרבן יולדת', null, 'A');
insert into mitzvos values (77, 'מצות קרבן מצורע כשיתרפא מצרעתו', null, 'A');
insert into mitzvos values (78, 'מצות מעשר בהמה טהורה בכל שנה', null, 'A');
insert into mitzvos values (79, 'מצות קדוש בכורות בארץ ישראל', null, 'A');
insert into mitzvos values (80, 'מצות פדיון בכור אדם', null, 'A');
insert into mitzvos values (81, 'מצות פדיון פטר חמור', null, 'A');
insert into mitzvos values (82, 'מצות עריפת פטר חמור', null, 'A');
insert into mitzvos values (83, 'מצות להקריב כל הקרבנות שיש על האדם בחובה או בנדבה ברגל ראשון שפוגע בו', null, 'A');
insert into mitzvos values (84, 'מצות לקריב כל הקרבנות בבית הבחירה ולא בחוץ', null, 'A');
insert into mitzvos values (85, 'מצות להטפל בהבאת הקרבן מחוצה לארץ לבית הבחירה', null, 'A');
insert into mitzvos values (86, 'מצות פדיית קדשים שנפל בהן מום ואחר כך מותרין באכילה', null, 'A');
insert into mitzvos values (87, 'מצות הממר בהמת קרבן בבהמה אחרת שתהיינה שתיהן קודש', null, 'A');
insert into mitzvos values (88, 'מצות אכילת שיירי מנחות', null, 'A');
insert into mitzvos values (89, 'מצות אכילת בשר חטאת ואשם', null, 'A');
insert into mitzvos values (90, 'מצות שריפת בשר קודש שנטמא', null, 'A');
insert into mitzvos values (91, 'מצות שריפת נותר הקדשים', null, 'A');
insert into mitzvos values (92, 'מצות גדול שער הנזיר', null, 'A');
insert into mitzvos values (93, 'מצות גלוח הנזיר והבאת קרבנותיו', null, 'A');
insert into mitzvos values (94, 'מצות קיום מוצא שפתיו', null, 'A');
insert into mitzvos values (95, 'מצות דין הפרת נדרים', null, 'A');
insert into mitzvos values (96, 'מצות עניין טומאת נבילה', null, 'A');
insert into mitzvos values (97, 'מצות טומאת שמנה שרצים', null, 'A');
insert into mitzvos values (98, 'מצות עניין טומאת אוכלים', null, 'A');
insert into mitzvos values (99, 'מצות עניין טומאת נדה שטמאה ומטמאה', null, 'A');
insert into mitzvos values (100, 'מצות עניין טומאת יולדת', null, 'A');
insert into mitzvos values (101, 'מצות עניין טומאת מצורע', null, 'A');
insert into mitzvos values (102, 'מצות עניין נגעי בגדים', null, 'A');
insert into mitzvos values (103, 'מצות עניין טומאת בית שיהיה בו נגע', null, 'A');
insert into mitzvos values (104, 'מצות עניין טומאת זב להיות טמא ומטמא', null, 'A');
insert into mitzvos values (105, 'מצות עניין טומאת שכבת זרע שהוא טמא ומטמא', null, 'A');
insert into mitzvos values (106, 'מצות עניין טומאת זבה שטמאה ומטמאה', null, 'A');
insert into mitzvos values (107, 'מצות טומאה של מת', null, 'A');
insert into mitzvos values (108, 'מצות מי נדה שמטמאין אדם טהור ומטהרין אדם טמא מטומאת מת בלבד', null, 'A');
insert into mitzvos values (109, 'מצות טבילה לטמאים', null, 'A');
insert into mitzvos values (110, 'מצות הטהרה מן הצרעת שתהיה במינים ידועים', null, 'A');
insert into mitzvos values (111, 'מצות תגלחת מצורע ביום השביעי', null, 'A');
insert into mitzvos values (112, 'מצות הנהגת המצורע וכל מטמאי אדם בקריעה ופרימה', null, 'A');
insert into mitzvos values (113, 'מצות פרה אדומה', null, 'A');
insert into mitzvos values (114, 'מצות מעריך אדם שיתן דמיו הקצובין בתורה', null, 'A');
insert into mitzvos values (115, 'מצות מעריך בהמה שיתן כפי שיעריכנה הכהן', null, 'A');
insert into mitzvos values (116, 'מצות מעריך בתים שיתן בערך שיעריכם בהכהן ותוספת חומש', null, 'A');
insert into mitzvos values (117, 'מצות מעריך שדה שיתן בערך הקצוב בפרשה', null, 'A');
insert into mitzvos values (118, 'מצות תוספת חומש לאוכל מן התרומה או מועל בה', null, 'A');
insert into mitzvos values (119, 'מצות נטע רבעי', null, 'A');
insert into mitzvos values (120, 'מצות פיאה', null, 'A');
insert into mitzvos values (121, 'מצות לקט', null, 'A');
insert into mitzvos values (122, 'מצות להניח עומרי השכחה', null, 'A');
insert into mitzvos values (123, 'מצות הנחת פאת הכרם', null, 'A');
insert into mitzvos values (124, 'מצות הנחת פרט הכרם', null, 'A');
insert into mitzvos values (125, 'מצות הבאת ביכורים', null, 'A');
insert into mitzvos values (126, 'מצות הפרשת תרומה גדולה', null, 'A');
insert into mitzvos values (127, 'מצות מעשר ראשון', null, 'A');
insert into mitzvos values (128, 'מצות מעשר שני', null, 'A');
insert into mitzvos values (129, 'מצות הלוים לתת מעשר מעשר מן המעשר', null, 'A');
insert into mitzvos values (130, 'מצות מעשר עני תחת מעשר שני בשנה שלישית', null, 'A');
insert into mitzvos values (131, 'מצות וידוי מעשר', null, 'A');
insert into mitzvos values (132, 'מצות קריאה על הביכורים', null, 'A');
insert into mitzvos values (133, 'מצות חלה', null, 'A');
insert into mitzvos values (134, 'מצות שמטת קרקעות', null, 'A');
insert into mitzvos values (135, 'מצות שביתת הארץ בשנת השמטה', null, 'A');
insert into mitzvos values (136, 'מצות קדוש שנת היובל', null, 'A');
insert into mitzvos values (137, 'מצות תקיעת שופר ביום הכפורים של יובל', null, 'A');
insert into mitzvos values (138, 'מצות השבת קרקע לבעליהן ביובל', null, 'A');
insert into mitzvos values (139, 'מצות פדיון הנחלות שהן תוך העיר עד השלמת שנה', null, 'A');
insert into mitzvos values (140, 'מצות ספירת שבע שבתות שנים', null, 'A');
insert into mitzvos values (141, 'מצות השמטת כספים בשנה שביעית', null, 'A');
insert into mitzvos values (142, 'מצות לנגוש את הנכרי', null, 'A');
insert into mitzvos values (143, 'מצות מתנות זרוע לחיים וקיבה לכהן', null, 'A');
insert into mitzvos values (144, 'מצות ראשית הגז שינתן לכהן', null, 'A');
insert into mitzvos values (145, 'מצות דין מחרים מנכסיו שהוא לכהנים', null, 'A');
insert into mitzvos values (146, 'מצות שחיטה', null, 'A');
insert into mitzvos values (147, 'מצות כסוי הדם', null, 'A');
insert into mitzvos values (148, 'מצות שלוח הקן', null, 'A');
insert into mitzvos values (149, 'מצות בדיקת סימני בהמה וחיה', null, 'A');
insert into mitzvos values (150, 'מצות בדיקת סימני העוף', null, 'A');
insert into mitzvos values (151, 'מצות בדיקת סימני חגבים', null, 'A');
insert into mitzvos values (152, 'מצות בדיקת סימני דגים', null, 'A');
insert into mitzvos values (153, 'מצות קדוש החודש', null, 'A');
insert into mitzvos values (154, 'מצות שביתה בשבת', null, 'A');
insert into mitzvos values (155, 'מצות קדוש שבת בדברים', null, 'A');
insert into mitzvos values (156, 'מצות השבתת חמץ', null, 'A');
insert into mitzvos values (157, 'מצות ספור יציאת מצרים', null, 'A');
insert into mitzvos values (158, 'מצות אכילת מצה', null, 'A');
insert into mitzvos values (159, 'מצות שביתה ביום ראשון של פסח', null, 'A');
insert into mitzvos values (160, 'מצות שביתה בשביעי של פסח', null, 'A');
insert into mitzvos values (161, 'מצות ספירת העומר', null, 'A');
insert into mitzvos values (162, 'מצות שביתה ממלאכה ביום עצרת', null, 'A');
insert into mitzvos values (163, 'מצות שביתה ביום ראש השנה', null, 'A');
insert into mitzvos values (164, 'מצות תענית ביום עשירי בתשרי', null, 'A');
insert into mitzvos values (165, 'מצות שביתה ממלאכה ביום הכפורים', null, 'A');
insert into mitzvos values (166, 'מצות שביתה ממלאכה ביום ראשון של חג הסוכות', null, 'A');
insert into mitzvos values (167, 'מצות שביתה ממלאכה ביום שמיני של סוכות', null, 'A');
insert into mitzvos values (168, 'מצות ישיבת סוכה', null, 'A');
insert into mitzvos values (169, 'מצות נטילת לולב', null, 'A');
insert into mitzvos values (170, 'מצות שופר בראש השנה', null, 'A');
insert into mitzvos values (171, 'מצות נתינת מחצית השקל בשנה', null, 'A');
insert into mitzvos values (172, 'מצות לשמוע מכל נביא ונביא שיהיה בכל דור ודור אם לא יוסיף ולא יגרע במצות התורה', null, 'A');
insert into mitzvos values (173, 'מצות מינוי מלך עלינו', null, 'A');
insert into mitzvos values (174, 'מצות לשמוע מכל בית דין הגדול שיעמדו להן לישראל בכל זמן', null, 'A');
insert into mitzvos values (175, 'מצות הטייה אחרי רבים', null, 'A');
insert into mitzvos values (176, 'מצות מינוי שפטים ושוטרים בכל קהל וקהל מישראל', null, 'A');
insert into mitzvos values (177, 'מצות שופט שישפוט בצדק', null, 'A');
insert into mitzvos values (178, 'מצות עדות', null, 'A');
insert into mitzvos values (179, 'מצות חקירת העדים היטב', null, 'A');
insert into mitzvos values (180, 'מצות לעשות לעדים זוממים כמו שדמו לעשות', null, 'A');
insert into mitzvos values (181, 'מצות עריפת העגלה בנחל', null, 'A');
insert into mitzvos values (182, 'מצות להכין שש ערי מקלט', null, 'A');
insert into mitzvos values (183, 'מצות ישראל לתת ערים ללוים לשבת בהן והן קולטות', null, 'A');
insert into mitzvos values (184, 'מצות מעקה', null, 'A');
insert into mitzvos values (185, 'מצות לאבד עבודה זרה ומשמשיה', null, 'A');
insert into mitzvos values (186, 'מצות שריפת עיר הנדחת וכל אשר בה', null, 'A');
insert into mitzvos values (187, 'מצות הריגת שבעה עעמין', null, 'A');
insert into mitzvos values (188, 'מצות להכרית זרעו של עמלק', null, 'A');
insert into mitzvos values (189, 'מצות לזכור מה שעשה עמלק לישראל בצאתם ממצרים', null, 'A');
insert into mitzvos values (190, 'מצות לעשות במלחמת הרשות כמשפט הכתוב', null, 'A');
insert into mitzvos values (191, 'מצות למשוח כהן למלחמה', null, 'A');
insert into mitzvos values (192, 'מצות להתקין יד במחנה', null, 'A');
insert into mitzvos values (193, 'מצות להתקין יתד במחנה', null, 'A');
insert into mitzvos values (194, 'מצות השבת גזל', null, 'A');
insert into mitzvos values (195, 'מצות צדקה', null, 'A');
insert into mitzvos values (196, 'מצות הענק עבד עברי', null, 'A');
insert into mitzvos values (197, 'מצות הלואה לעני', null, 'A');
insert into mitzvos values (198, 'מצות הלואה לנכרי ברבית אם יצטרך ללוות מה שאינו כן בישראל', null, 'A');
insert into mitzvos values (199, 'מצות השבת משכון לבעליו בעת שהוא צריך לו', null, 'A');
insert into mitzvos values (200, 'מצות נתינת שכר שכיר ביומו', null, 'A');
insert into mitzvos values (201, 'מצות עלינו להניח השכיר לאכול בזמן שכירותו מדברים ידועים', null, 'A');
insert into mitzvos values (202, 'מצות פרוק משא', null, 'A');
insert into mitzvos values (203, 'מצות הקמת משא לישראל', null, 'A');
insert into mitzvos values (204, 'מצות השבת אבדה', null, 'A');
insert into mitzvos values (205, 'מצות תוכחה לישראל שאינו נוהג כשורה', null, 'A');
insert into mitzvos values (206, 'מצות אהבת ישראל', null, 'A');
insert into mitzvos values (207, 'מצות אהבת הגרים', null, 'A');
insert into mitzvos values (208, 'מצות צדוק המאזנים והמשקלים והמדות', null, 'A');
insert into mitzvos values (209, 'מצות כבוד חכמים', null, 'A');
insert into mitzvos values (210, 'מצות כיבוד אב ואם', null, 'A');
insert into mitzvos values (211, 'מצות יראת אב ואם', null, 'A');
insert into mitzvos values (212, 'מצות פריה ורבייה', null, 'A');
insert into mitzvos values (213, 'מצות קידושין באשה', null, 'A');
insert into mitzvos values (214, 'מצות שישמח חתן עם אשתו שנה ראשונה', null, 'A');
insert into mitzvos values (215, 'מצות מילה', null, 'A');
insert into mitzvos values (216, 'מצות ייבום', null, 'A');
insert into mitzvos values (217, 'מצות חליצה', null, 'A');
insert into mitzvos values (218, 'מצות האונס שישא אנוסתו לאשה', null, 'A');
insert into mitzvos values (219, 'מצות שתשב אשת מוציא שם רע תחתיו לעולם', null, 'A');
insert into mitzvos values (220, 'מצות בית דין לדון בדין מפתה', null, 'A');
insert into mitzvos values (221, 'מצות ידין יפת תואר', null, 'A');
insert into mitzvos values (222, 'מצות על הרוצה לגרש את אשתו שיגרשנו בשטר', null, 'A');
insert into mitzvos values (223, 'מצות סוטה שיביאה הבעל אל הכהן ויעשה לה כמשפט הכתוב', null, 'A');
insert into mitzvos values (224, 'מצות מלקות לרשעים', null, 'A');
insert into mitzvos values (225, 'מצות על בית דין להשליך מכה נפש בשגגה מעירו לערי מקלט ועל הרוצח בעצמו ללכת שם', null, 'A');
insert into mitzvos values (226, 'מצות בית דין להרוג בסייף המחוייב', null, 'A');
insert into mitzvos values (227, 'מצות בית דין להרוג בחנק המחוייב', null, 'A');
insert into mitzvos values (228, 'מצות שישרפו מי שיתחייב שריפה', null, 'A');
insert into mitzvos values (229, 'מצות על בית דין לסקול באבנים מי שיתחייב סקילה', null, 'A');
insert into mitzvos values (230, 'מצות דין תלייה למי שיתחייב לתלות', null, 'A');
insert into mitzvos values (231, 'מצות קבורה לנהרג על פי בית דין וכן לכל מת', null, 'A');
insert into mitzvos values (232, 'מצות דין עבד עברי', null, 'A');
insert into mitzvos values (233, 'מצות יעוד של אמה העבריה', null, 'A');
insert into mitzvos values (234, 'מצות פדיון אמה העבריה', null, 'A');
insert into mitzvos values (235, 'מצות עבודה בעבד כנעני לעולם', null, 'A');
insert into mitzvos values (236, 'מצות דיני קנסות', null, 'A');
insert into mitzvos values (237, 'מצות בית דין לדון בנזקי בהמה', null, 'A');
insert into mitzvos values (238, 'מצות בית דין לדון בנזקי הבור', null, 'A');
insert into mitzvos values (239, 'מצות בית דין לדון גנב בתשלומין או במיתה', null, 'A');
insert into mitzvos values (240, 'מצות בית דין לדון בנזקי הבער', null, 'A');
insert into mitzvos values (241, 'מצות בית דין לדון בנזקי האש', null, 'A');
insert into mitzvos values (242, 'מצות בית דין לדון בדין שומר חנם', null, 'A');
insert into mitzvos values (243, 'מצות בית דין לדון בדין נושא שכר ושוכר', null, 'A');
insert into mitzvos values (244, 'מצות בית דין לדון בדין השואל', null, 'A');
insert into mitzvos values (245, 'מצות עשיית דין בין לוקח ומוכר', null, 'A');
insert into mitzvos values (246, 'מצות בית דין לדון בדין טוען וכופר', null, 'A');
insert into mitzvos values (247, 'מצות להציל הנרדף', null, 'A');
insert into mitzvos values (248, 'מצות דיני נחלות', null, 'A');

create table ramban (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table bahag (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table rasag (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table chofetzChaim (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);