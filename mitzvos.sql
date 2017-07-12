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
insert into mitzvos values (249, 'שלא נאמין אלוה בלתי השם לבדו', null, 'L');
insert into mitzvos values (250, 'שלא לעשות פסל', null, 'L');
insert into mitzvos values (251, 'שלא לעשות עבודה זרה לא לעצמו ולא לזולתו', null, 'L');
insert into mitzvos values (252, 'שלא לעשות צורות לנוי', null, 'L');
insert into mitzvos values (253, 'שלא להשתחוות לעבודה זרה', null, 'L');
insert into mitzvos values (254, 'שלא לעבוד עבודה זרה במה שגרכה להעבד', null, 'L');
insert into mitzvos values (255, 'שלא נתן מזרעינו למולך', null, 'L');
insert into mitzvos values (256, 'שלא לעשות אוב', null, 'L');
insert into mitzvos values (257, 'שלא לעשות מעשה ידעוני', null, 'L');
insert into mitzvos values (258, 'שלא לפנות אחר עבודה זרה לא במחשבה ולא בדיבור ולא בהטבה', null, 'L');
insert into mitzvos values (259, 'שלא להקים מצבה', null, 'L');
insert into mitzvos values (260, 'שלא נשתחוה על אבן משכית אפילו לשם', null, 'L');
insert into mitzvos values (261, 'שלא לטעת אילן במקדש', null, 'L');
insert into mitzvos values (262, 'שלא לישבע בעבודה זרה', null, 'L');
insert into mitzvos values (263, 'שלא להדיח בני ישראל אחר עבודה זרה', null, 'L');
insert into mitzvos values (264, 'שלא להסית אחד מישראל אחר עבודה זרה', null, 'L');
insert into mitzvos values (265, 'שלא לאבוה המסית', null, 'L');
insert into mitzvos values (266, 'שלא לעזוב השנאה מן במסית', null, 'L');
insert into mitzvos values (267, 'שלא להציל המסית', null, 'L');
insert into mitzvos values (268, 'שלא ילמד המוסת זכות על מסית', null, 'L');
insert into mitzvos values (269, 'שלא ישתוק המוסת מללמד חובה על המסית', null, 'L');
insert into mitzvos values (270, 'שלא ליהנות מצפוי עבודה זרה', null, 'L');
insert into mitzvos values (271, 'שלא לבנות עיר הנדחת לכמוה שהיתה', null, 'L');
insert into mitzvos values (272, 'שלא ליהנות בממון עיר הנדחת', null, 'L');
insert into mitzvos values (273, 'שלא להדביק שום דבר מעבודה זרה עם ממונינו וברשותינו ליהנות בו', null, 'L');
insert into mitzvos values (274, 'שלא להתנבאות בשם עבודה זרה', null, 'L');
insert into mitzvos values (275, 'שלא להתנבאת בשקר', null, 'L');
insert into mitzvos values (276, 'שלא לשמע ממתנבא בשם עבודה זרה', null, 'L');
insert into mitzvos values (277, 'שלא נמנע מהריגת נביא שקר ולא נגור ממנו', null, 'L');
insert into mitzvos values (278, 'שלא ללכת בחוקות הגוים', null, 'L');
insert into mitzvos values (279, 'שלא לקסום', null, 'L');
insert into mitzvos values (280, 'שלא לעונן', null, 'L');
insert into mitzvos values (281, 'שלא לנחש', null, 'L');
insert into mitzvos values (282, 'שלא לכשף', null, 'L');
insert into mitzvos values (283, 'שלא לחבור חבר', null, 'L');
insert into mitzvos values (284, 'שלא לשאול באוב', null, 'L');
insert into mitzvos values (285, 'שלא לשאול בידעוני', null, 'L');
insert into mitzvos values (286, 'שלא לדרוש אל המתים', null, 'L');
insert into mitzvos values (287, 'שלא תעדה אשה עדי איש', null, 'L');
insert into mitzvos values (288, 'שלא יעדה האיש עדי אשה', null, 'L');
insert into mitzvos values (289, 'שלא נכתוב בבשרינו כתובת קעקע', null, 'L');
insert into mitzvos values (290, 'שלא ללבוש שעטנז', null, 'L');
insert into mitzvos values (291, 'שלא להקיף פאתי הראש', null, 'L');
insert into mitzvos values (292, 'שלא להשחית פאת זקן', null, 'L');
insert into mitzvos values (293, 'שלא להתגודד כמו עובדי עבודה זרה', null, 'L');
insert into mitzvos values (294, 'שלא לשכון בארץ מצרים לעולם', null, 'L');
insert into mitzvos values (295, 'שלא לתור אחר מחשבת הלב וראיית הענים', null, 'L');
insert into mitzvos values (296, 'שלא לכרות ברית לשבעה עממים', null, 'L');
insert into mitzvos values (297, 'שלא להחיות אחד מכל שבעה עממין', null, 'L');
insert into mitzvos values (298, 'שלא לחון על עובדי עבודה זרה', null, 'L');
insert into mitzvos values (299, 'שלא להושיב עובד עבודה זרה בארצנו', null, 'L');
insert into mitzvos values (300, 'שלא להתחתן בעובדי עבודה זרה', null, 'L');
insert into mitzvos values (301, 'שלא ישא עמוני ומואבי בת ישראל', null, 'L');
insert into mitzvos values (302, 'שלא להרחיק זרע עשו מהתחתן עם זרע ישראל אחר שיתגיירו אלא עד ג'' דורות', null, 'L');
insert into mitzvos values (303, 'שלא להרחיק מצרי כמו כן אלא עד דור שלישי ולא שלישי בכלל', null, 'L');
insert into mitzvos values (304, 'שלא לקרוא שלום לעמון ומואב', null, 'L');
insert into mitzvos values (305, 'שלא להשחית אילני מאכל במצור וכן כל השחתה בכלל הלאו', null, 'L');
insert into mitzvos values (306, 'שלא לערוץ מפני אחד מכל שבעה עממין', null, 'L');
insert into mitzvos values (307, 'שלא נשכח מעשה עמלק שעשה עם אבותינו בצאתם ממצרים', null, 'L');
insert into mitzvos values (308, 'לאו דברכת השם', null, 'L');
insert into mitzvos values (309, 'שלא נשבע לשקר', null, 'L');
insert into mitzvos values (310, 'שלא לישבע לשוא', null, 'L');
insert into mitzvos values (311, 'שלא לעשות דבר שיתחלל בו שם שמים בין בני אדם', null, 'L');
insert into mitzvos values (312, 'שלא לנסות נביא אמת יותר מדאי', null, 'L');
insert into mitzvos values (313, 'שלא למחות ספרי הקודש והשמות של הקדוש ברוך הוא הכתובים שם וכל בתי עבודת הקודש', null, 'L');
insert into mitzvos values (314, 'שלא ילין הצלוב על העץ וכן המת בביתו אלא לכבודו', null, 'L');
insert into mitzvos values (315, 'שלא לבטל שמירת המקדש', null, 'L');
insert into mitzvos values (316, 'שלא יכנסו הכהנים בכל עת במקדש וכל שכן זרים', null, 'L');
insert into mitzvos values (317, 'שלא יכנס בעל מום בהיכל', null, 'L');
insert into mitzvos values (318, 'שלא יעבד הכן בעל מום', null, 'L');
insert into mitzvos values (319, 'שלא יבער הכן בעל מום עובר', null, 'L');
insert into mitzvos values (320, 'שלא יתעסקו הכהנים בעבודת הלוים ולא הלוים בעבודת הכהנים', null, 'L');
insert into mitzvos values (321, 'שלא להכנס שתויי יין במקדש וכן שלא ירוה שתוי', null, 'L');
insert into mitzvos values (322, 'שלא יעבד זר במקדש', null, 'L');
insert into mitzvos values (323, 'שלא יעבד כהן טמא', null, 'L');
insert into mitzvos values (324, 'שלא ישמש כהן טבול יום עד שיעריב שמשו', null, 'L');
insert into mitzvos values (325, 'שלא יכנס טמא בכל המקדש', null, 'L');
insert into mitzvos values (326, 'שלא יכנס טמא למחנה לוייה', null, 'L');
insert into mitzvos values (327, 'שלא לבנות אבני מזבח גזית', null, 'L');
insert into mitzvos values (328, 'שלא לפסוע על המזבח', null, 'L');
insert into mitzvos values (329, 'שלא להקטיר ולהקריב על מזבח הזהב', null, 'L');
insert into mitzvos values (330, 'שלא לכבות אש מעל המזבח', null, 'L');
insert into mitzvos values (331, 'שלא לעשות במתכונת שמן המשחה', null, 'L');
insert into mitzvos values (332, 'שלא יסוך זר בשמן המשחה', null, 'L');
insert into mitzvos values (333, 'שלא לעשות במתכונת הקטרת', null, 'L');
insert into mitzvos values (334, 'שלא להוציא בדי הארון ממנו', null, 'L');
insert into mitzvos values (335, 'שלא יזח החשן מעל האיפוד', null, 'L');
insert into mitzvos values (336, 'שלא לקרוע המעיל של כהנים', null, 'L');
insert into mitzvos values (337, 'שלא להעלות קדשים בחוץ', null, 'L');
insert into mitzvos values (338, 'שלא לשחוט קדשים חוץ לעזרה', null, 'L');
insert into mitzvos values (339, 'שלא נקדיש בעלי מומין להקריבם למזבח', null, 'L');
insert into mitzvos values (340, 'שלא נשחט בעלי מומין לשם קרבן', null, 'L');
insert into mitzvos values (341, 'שלא נזרוק דם בעל מום על המזבח', null, 'L');
insert into mitzvos values (342, 'שלא נקטיר אימורי בעלי מומין', null, 'L');
insert into mitzvos values (343, 'שלא להקריב קרבן בעל מום עובר', null, 'L');
insert into mitzvos values (344, 'שלא להקריב קרבן בעל מום מיד הגוים', null, 'L');
insert into mitzvos values (345, 'שלא נתן מום בקדשים', null, 'L');
insert into mitzvos values (346, 'שלא להקריב שאור או דבש', null, 'L');
insert into mitzvos values (347, 'שלא להקריב קרבן בלא מלח', null, 'L');
insert into mitzvos values (348, 'שלא להקריב אתנן זונה ומחיר כלב', null, 'L');

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