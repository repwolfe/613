.echo OFF

drop table if exists mitzvos;
drop table if exists rasag;
drop table if exists eliyahuHaZaken;
drop table if exists ataHinchalta;
drop table if exists riAlbargeloni;
drop table if exists shimonIbnGabirol;
drop table if exists seferCharedim;
drop table if exists semak;
drop table if exists maamarHaSeichel;
drop table if exists reeim;
drop table if exists chofetzChaim;

create table mitzvos (
	_id integer NOT NULL primary key,
	mitzvahName varchar NOT NULL,
	mitzvahNameEn varchar,
	asehOrLoSaseh char(1) NOT NULL	-- A/L
);

-- Rambam's unique mitzvos
insert into mitzvos values (1, 'מצות האמנה במציאות השם יתברך', 'Emunah in the reality of Hashem Yisboroch', 'A');	
insert into mitzvos values (2, 'מצות אחדות השם', 'Unity of Hashem', 'A');
insert into mitzvos values (3, 'מצות אהבת השם', 'Love of Hashem', 'A');
insert into mitzvos values (4, 'מצות יראת השם', 'Fear of Hashem', 'A');
insert into mitzvos values (5, 'מצות תפילה', 'Prayer', 'A');
insert into mitzvos values (6, 'מצות החברה והדביקה עם חכמי התורה', 'Association and companionship with Torah Sages', 'A');
insert into mitzvos values (7, 'מצות על כל הצריך לישבע שישבע בשם השם', 'Anyone who has to swear to only swear in the name of Hashem', 'A');
insert into mitzvos values (8, 'מצות להדמות בדרכי השם יתברך הטובים והישרים', 'To replicate the good and upright ways of Hashem', 'A');
insert into mitzvos values (9, 'מצות קידוש השם', 'Kiddush Hashem', 'A');
insert into mitzvos values (10, 'מצות קרית שמע שחרית וערבית', 'Reciting the Shema morning and evening', 'A');
insert into mitzvos values (11, 'מצות תלמוד תורה', 'Learning Torah', 'A');
insert into mitzvos values (12, 'מצות תפילין של ראש', 'Tefillin of the head', 'A');
insert into mitzvos values (13, 'מצות תפילין של יד', 'Tefillin of the arm', 'A');
insert into mitzvos values (14, 'מצות ציצית', 'Tzitzis', 'A');
insert into mitzvos values (15, 'מצות מזוזה', 'Mezuzah', 'A');
insert into mitzvos values (16, 'מצות הקהל במוצאי שביעית', 'Hakhel after the seventh year', 'A');
insert into mitzvos values (17, 'מצות לכתוב כל אחד מישראל ספר תורה לעצמו', 'For each Jew to write a sefer Torah for themself', 'A');
insert into mitzvos values (18, 'מצות על המלך לכתוב ספר תורה אחד יתר על שאר בני ישראל', 'For a King to write one more sefer Torah than the rest of the Jews', 'A');
insert into mitzvos values (19, 'מצות ברכת המזון', 'Grace after Meals', 'A');
insert into mitzvos values (20, 'מצות בניין בית הבחירה', 'Building the Temple', 'A');
insert into mitzvos values (21, 'מצות היראה מן המקדש', 'Revering the Temple', 'A');
insert into mitzvos values (22, 'מצות שמירת המקדש', 'Guarding the Temple', 'A');
insert into mitzvos values (23, 'מצות עבודת הלוי במקדש', 'Service of the Leviim in the Temple', 'A');
insert into mitzvos values (24, 'מצות קדוש ידים ורגלים בשעת עבודה', 'Washing the hands and feet for the Temple service', 'A');
insert into mitzvos values (25, 'מצות עריכת נירות המקדש', 'Arranging the menorah lights in the Temple', 'A');
insert into mitzvos values (26, 'מצות ברכת כהנים בכל יום', 'Priestly Blessing every day', 'A');
insert into mitzvos values (27, 'מצות סידור לחם הפנים ולבונה', 'Arranging the showbread and frankincense', 'A');
insert into mitzvos values (28, 'מצות הקטרת קטרת', 'Burning the incense', 'A');
insert into mitzvos values (29, 'מצות הדלקת אש על המזבח בכל יום', 'Igniting the altar fire every day', 'A');
insert into mitzvos values (30, 'מצות הרמת הדשן', 'Removing the altar ash', 'A');
insert into mitzvos values (31, 'מצות שלוח טמאים חוץ למחנה שכינה', 'Expelling from the camp of the Shechinah those who are impure', 'A');
insert into mitzvos values (32, 'מצות קדוש זרע אהרן', 'Sanctifying the descendants of Aharon', 'A');
insert into mitzvos values (33, 'מצות לבישת בגדי הכהנים', 'Donning the clothing of the Kohanim', 'A');
insert into mitzvos values (34, 'מצות משא הארון בכתף', 'Carrying the Aron on one''s shoulders', 'A');
insert into mitzvos values (35, 'מצות משיחת כהנים גדולים ומלכים בשמן המשחה', 'Annointing the Kohanim Gedolim and Kings with the annointing oil', 'A');
insert into mitzvos values (36, 'מצות להיות הכהנים עובדים במקדש משמרות משמרות ובמועדים עובדים כאחד', 'For the Kohanim to serve in separate units, yet together during the festivals', 'A');
insert into mitzvos values (37, 'מצות עניין טומאת הכהנים לקרוביהם ובכללה שיתאבלו כל אחד מישראל על ששה מקרוביו הידועים', 'The subject of Kohanim becoming impure for their close relatives as well as everyone mourning for their close relatives', 'A');
insert into mitzvos values (38, 'מצות כהן גדול לישא נערה בתולה', 'For a Kohen Gadol to marry a virgin', 'A');
insert into mitzvos values (39, 'מצות תמידין בכל יום', 'The daily Tamid offering', 'A');
insert into mitzvos values (40, 'מצות קרבן מנחה של כהן גדול בכל יום', 'The daily Mincha offering of the Kohen Gadol', 'A');
insert into mitzvos values (41, 'מצות קרבן מוסף של שבת', 'The Mussaf offering for Shabbos', 'A');
insert into mitzvos values (42, 'מצות קרבן מוסף בכל ראש חדש', 'The Mussaf offering for Rosh Chodesh', 'A');
insert into mitzvos values (43, 'מצות קרבן מוסף כל שבעת ימי הפסח', 'The Mussaf offering for the seven days of Pesach', 'A');
insert into mitzvos values (44, 'מצות קרבן העומר של שעורים ביום שני של פסח', 'The Omer offering of barley on the second day of Pesach', 'A');
insert into mitzvos values (45, 'מצות קרבן מוסף ביום חג השבועות', 'The Mussaf offering for Shavuos', 'A');
insert into mitzvos values (46, 'מצות קרבן מנחה חדשה מן החטים ביום עצרת', 'The new Mincha offering of wheat on Shavuos', 'A');
insert into mitzvos values (47, 'מצות קרבן מוסף ביום ראש השנה', 'The Mussaf offering for Rosh Hashanah', 'A');
insert into mitzvos values (48, 'מצות קרבן מוסף ביום עשירי בתשרי שהוא נקרא יום הכפורים', 'The Mussaf offering for the tenth of Tishrei, known as Yom Kippur', 'A');
insert into mitzvos values (49, 'מצות עבודת יום הכפורים', 'The Yom Kippur Temple service', 'A');
insert into mitzvos values (50, 'מצות קרבן מוסף בכל יום משבעת ימי חג הסוכות', 'The Mussaf offering for the seven days of Sukkos', 'A');
insert into mitzvos values (51, 'מצות קרבן מוסף ביום שמיני של סוכות שהוא נקרא שמיני עצרת', 'The Mussaf offering for the eighth day of Sukkos, known as Shemini Atzeres', 'A');
insert into mitzvos values (52, 'מצות חגיגה ברגלים', 'The Chagigah offering for the Festivals', 'A');
insert into mitzvos values (53, 'מצות להראות ברגלים בבית המקדש', 'To be seen on the Festivals', 'A');
insert into mitzvos values (54, 'מצות לשמוח ברגלים', 'To be joyous on the Festivals', 'A');
insert into mitzvos values (55, 'מצות שחיטת הפסח', 'Slaughtering the Pesach offering', 'A');
insert into mitzvos values (56, 'מצות אכילת בשר הפסח', 'Eating the Pesach offering', 'A');
insert into mitzvos values (57, 'מצות פסח שני בי"ד באייר', 'Pesach Sheni on the fourteenth of Iyar', 'A');
insert into mitzvos values (58, 'מצות פסח שני שיאכל על מצות ומרורים', 'To eat the Pesach Sheni offering with matzah and marror', 'A');
insert into mitzvos values (59, 'מצות תקיעת חצוצרות במקדש ובמלחמה', 'Blowing trumpets in the Temple and durign war', 'A');
insert into mitzvos values (60, 'מצות הקרבת הקרבן שיהיה משמונה ימים ולמעלה', 'Only bringing an offering once it''s eight days old', 'A');
insert into mitzvos values (61, 'מצות קרבן להיות תמים', 'For an offering to be free of blesmish', 'A');
insert into mitzvos values (62, 'מצות מליחת הקרבן', 'The salting of offerings', 'A');
insert into mitzvos values (63, 'מצות מעשה העולה', 'The Olah offering procedure', 'A');
insert into mitzvos values (64, 'מצות מעשה החטאת', 'The Chatas offering procedure', 'A');
insert into mitzvos values (65, 'מצות מעשה האשם', 'The Asham offering procedure', 'A');
insert into mitzvos values (66, 'מצות מעשה זבח השלמים', 'The Shelamim offering procedure', 'A');
insert into mitzvos values (67, 'מצות קרבן מנחה', 'The Mincha offering', 'A');
insert into mitzvos values (68, 'מצות קרבן בית דין אם טעו בהוראה', 'The offering of the Sanhedrin due to a mistaken ruling', 'A');
insert into mitzvos values (69, 'מצות קרבן חטאת ליחיד ששגג במצות לא תעשה שחייבין עליה כרת', 'The Chatas offering for one who unintentionally transgressed a prohibition deserving kares', 'A');
insert into mitzvos values (70, 'מצות קרבן אשם תלוי', 'The offering of an Asham talui', 'A');
insert into mitzvos values (71, 'מצות קרבן אשם ודאי', 'The offering of an Asham vadai', 'A');
insert into mitzvos values (72, 'מצות קרבן עולה ויורד', 'The variable priced offering', 'A');
insert into mitzvos values (73, 'מצות וידוי על החטא', 'Confession over a sin', 'A');
insert into mitzvos values (74, 'מצות קרבן זב כשיתרפא מזובו', 'The offering of a zav when he recovers', 'A');
insert into mitzvos values (75, 'מצות קרבן זבה כשתתרפא מזובה', 'The offering of a zava when she recovers', 'A');
insert into mitzvos values (76, 'מצות קרבן יולדת', 'The offering of one who gives birth', 'A');
insert into mitzvos values (77, 'מצות קרבן מצורע כשיתרפא מצרעתו', 'The offering of a Metzora when he recovers', 'A');
insert into mitzvos values (78, 'מצות מעשר בהמה טהורה בכל שנה', 'The yearly tithe of kosher animals', 'A');
insert into mitzvos values (79, 'מצות קדוש בכורות בארץ ישראל', 'The sanctification of firstborn animals in the land of Israel', 'A');
insert into mitzvos values (80, 'מצות פדיון בכור אדם', 'To redeem the firstborn son', 'A');
insert into mitzvos values (81, 'מצות פדיון פטר חמור', 'To redeem the firstborn of a donkey', 'A');
insert into mitzvos values (82, 'מצות עריפת פטר חמור', 'Beheading the firstborn of a donkey', 'A');
insert into mitzvos values (83, 'מצות להקריב כל הקרבנות שיש על האדם בחובה או בנדבה ברגל ראשון שפוגע בו', 'To offer the all vow or voluntary offerings at the first festival that arrives', 'A');
insert into mitzvos values (84, 'מצות להקריב כל הקרבנות בבית הבחירה ולא בחוץ', 'To offer all offerings in the Temple and not outside', 'A');
insert into mitzvos values (85, 'מצות להטפל בהבאת הקרבן מחוצה לארץ לבית הבחירה', 'To take care of the offerings as they are brought from outside the land to the Temple', 'A');
insert into mitzvos values (86, 'מצות פדיית קדשים שנפל בהן מום ואחר כך מותרין באכילה', 'To redeem offerings that became blemished upon which consumption is permitted', 'A');
insert into mitzvos values (87, 'מצות הממר בהמת קרבן בבהמה אחרת שתהיינה שתיהן קודש', 'Treating both the original offering and the one it was replaced with with sanctity', 'A');
insert into mitzvos values (88, 'מצות אכילת שיירי מנחות', 'Eating the leftovers of the mincha offering', 'A');
insert into mitzvos values (89, 'מצות אכילת בשר חטאת ואשם', 'Eating the meat of the chatas and asham offering', 'A');
insert into mitzvos values (90, 'מצות שריפת בשר קודש שנטמא', 'Burning the flesh of a contaminated offering', 'A');
insert into mitzvos values (91, 'מצות שריפת נותר הקדשים', 'Burning the leftovers of an offering', 'A');
insert into mitzvos values (92, 'מצות גדול שער הנזיר', 'For a Nazir to grow out his hair', 'A');
insert into mitzvos values (93, 'מצות גלוח הנזיר והבאת קרבנותיו', 'For a Nazir to shave his hair and bring offerings at the conclusion of his nezirus', 'A');
insert into mitzvos values (94, 'מצות קיום מוצא שפתיו', 'To fulfill the vows of our mouths', 'A');
insert into mitzvos values (95, 'מצות דין הפרת נדרים', 'Nullification of vows', 'A');
insert into mitzvos values (96, 'מצות עניין טומאת נבילה', 'The concept of tumah of a neveilah', 'A');
insert into mitzvos values (97, 'מצות טומאת שמנה שרצים', 'The concept of tumah of the eight sheratzim', 'A');
insert into mitzvos values (98, 'מצות עניין טומאת אוכלים', 'The concept of tumah of food', 'A');
insert into mitzvos values (99, 'מצות עניין טומאת נדה שטמאה ומטמאה', 'The concept of tumah of a Niddah', 'A');
insert into mitzvos values (100, 'מצות עניין טומאת יולדת', 'The concept of tumah of a woman who gave birth', 'A');
insert into mitzvos values (101, 'מצות עניין טומאת מצורע', 'The concept of tumah of a Metzora', 'A');
insert into mitzvos values (102, 'מצות עניין נגעי בגדים', 'The concept of tumah of tzaraas on a garment', 'A');
insert into mitzvos values (103, 'מצות עניין טומאת בית שיהיה בו נגע', 'The concept of tumah of tzaraas on a building', 'A');
insert into mitzvos values (104, 'מצות עניין טומאת זב להיות טמא ומטמא', 'The concept of tumah of a zav', 'A');
insert into mitzvos values (105, 'מצות עניין טומאת שכבת זרע שהוא טמא ומטמא', 'The concept of tumah of someone who had a seminal emission', 'A');
insert into mitzvos values (106, 'מצות עניין טומאת זבה שטמאה ומטמאה', 'The concept of tumah of a zavah', 'A');
insert into mitzvos values (107, 'מצות טומאה של מת', 'The concept of tumah of a corpse', 'A');
insert into mitzvos values (108, 'מצות מי נדה שמטמאין אדם טהור ומטהרין אדם טמא מטומאת מת בלבד', 'The concept of the water of a red heffer which purify and contaminate', 'A');
insert into mitzvos values (109, 'מצות טבילה לטמאים', 'Immersion in a mikveh for the impure', 'A');
insert into mitzvos values (110, 'מצות הטהרה מן הצרעת שתהיה במינים ידועים', 'The purification of a Metzora using known species', 'A');
insert into mitzvos values (111, 'מצות תגלחת מצורע ביום השביעי', 'The shaving of a Metzora''s hair on the seventh day of his purification', 'A');
insert into mitzvos values (112, 'מצות הנהגת המצורע וכל מטמאי אדם בקריעה ופרימה', 'The behavior of a Metzora and others who are impure with tattered clothes and dissheveled hair', 'A');
insert into mitzvos values (113, 'מצות פרה אדומה', 'The preparation of the red heffer', 'A');
insert into mitzvos values (114, 'מצות מעריך אדם שיתן דמיו הקצובין בתורה', 'For a person who volunteers his value to the Temple to give the stated value', 'A');
insert into mitzvos values (115, 'מצות מעריך בהמה שיתן כפי שיעריכנה הכהן', 'For a person who volunteers his animal''s value to the Temple to give according to the Kohen''s evaluation', 'A');
insert into mitzvos values (116, 'מצות מעריך בתים שיתן בערך שיעריכם הכהן ותוספת חומש', 'For a person who volunteers his house''s value to the Temple to give according to the Kohen''s evalaution, plus a fifth', 'A');
insert into mitzvos values (117, 'מצות מעריך שדה שיתן בערך הקצוב בפרשה', 'For a person who volunteers his field''s value to the Temple to give the stated value', 'A');
insert into mitzvos values (118, 'מצות תוספת חומש לאוכל מן התרומה או מועל בה', 'For someone who misappropriates terumah to add a fifth', 'A');
insert into mitzvos values (119, 'מצות נטע רבעי', 'The holy produce of the fourth year', 'A');
insert into mitzvos values (120, 'מצות פיאה', 'To leave the corner of ones''s field for the  poor', 'A');
insert into mitzvos values (121, 'מצות לקט', 'To leave gleanings for the poor', 'A');
insert into mitzvos values (122, 'מצות להניח עומרי השכחה', 'To leave forgotten sheaves for the poor', 'A');
insert into mitzvos values (123, 'מצות הנחת פאת הכרם', 'To leave the corner of one''s vineyard for the poor', 'A');
insert into mitzvos values (124, 'מצות הנחת פרט הכרם', 'To leave fallen grapes for the poor', 'A');
insert into mitzvos values (125, 'מצות הבאת ביכורים', 'To bring the first fruits to the Temple', 'A');
insert into mitzvos values (126, 'מצות הפרשת תרומה גדולה', 'To separate Terumah Gedolah', 'A');
insert into mitzvos values (127, 'מצות מעשר ראשון', 'To separate the First Tithe', 'A');
insert into mitzvos values (128, 'מצות מעשר שני', 'To separate the Second Tithe', 'A');
insert into mitzvos values (129, 'מצות הלוים לתת מעשר מן המעשר', 'For Levites to separate a Tithe from their Tithe', 'A');
insert into mitzvos values (130, 'מצות מעשר עני תחת מעשר שני בשנה שלישית ושישית', 'To separate the Tithe for the poor instead of the Second Tithe in the third and sixth year', 'A');
insert into mitzvos values (131, 'מצות וידוי מעשר', 'The confession on tithes', 'A');
insert into mitzvos values (132, 'מצות קריאה על הביכורים', 'The recitation of verses on the first fruits', 'A');
insert into mitzvos values (133, 'מצות חלה', 'To separate a portion from dough for the Kohen', 'A');
insert into mitzvos values (134, 'מצות שמטת קרקעות', 'To let land and its produce be ownerless in the seventh year', 'A');
insert into mitzvos values (135, 'מצות שביתת הארץ בשנת השמטה', 'Letting the land lie fallow in the seventh year', 'A');
insert into mitzvos values (136, 'מצות קדוש שנת היובל', 'The sanctification of the Jubilee year', 'A');
insert into mitzvos values (137, 'מצות תקיעת שופר ביום הכפורים של יובל', 'Sounding the shofar on Yom Kippur in the Jubilee year', 'A');
insert into mitzvos values (138, 'מצות השבת קרקע לבעליהן ביובל', 'Returning land to its original owner in the Jubilee year', 'A');
insert into mitzvos values (139, 'מצות פדיון הנחלות שהן תוך העיר עד השלמת שנה', 'The ability to redeem property within a city in within the first year', 'A');
insert into mitzvos values (140, 'מצות ספירת שבע שבתות שנים', 'To count the seven Shemittah years', 'A');
insert into mitzvos values (141, 'מצות השמטת כספים בשנה שביעית', 'The annulment of loans in the seventh year', 'A');
insert into mitzvos values (142, 'מצות לנגוש את הנכרי', 'To pressure a non-Jew to repay a debt', 'A');
insert into mitzvos values (143, 'מצות מתנות זרוע לחיים וקיבה לכהן', 'To give the animal offerings'' shoulder, cheeks, and stomach to a Kohen', 'A');
insert into mitzvos values (144, 'מצות ראשית הגז שינתן לכהן', 'To give an animals'' first shearing to a Kohen', 'A');
insert into mitzvos values (145, 'מצות דין מחרים מנכסיו שהוא לכהנים', 'For proscribed property to go to the Kohanim', 'A');
insert into mitzvos values (146, 'מצות שחיטה', 'Ritual Slaughtering', 'A');
insert into mitzvos values (147, 'מצות כסוי הדם', 'To cover the blood of a slaughtered animal', 'A');
insert into mitzvos values (148, 'מצות שלוח הקן', 'To send away the mother bird', 'A');
insert into mitzvos values (149, 'מצות בדיקת סימני בהמה וחיה', 'To check the kosher signs of domesticated and wild animals', 'A');
insert into mitzvos values (150, 'מצות בדיקת סימני העוף', 'To check the kosher signs of birds', 'A');
insert into mitzvos values (151, 'מצות בדיקת סימני חגבים', 'To check the kosher signs of grasshoppers', 'A');
insert into mitzvos values (152, 'מצות בדיקת סימני דגים', 'To check the kosher signs of fish', 'A');
insert into mitzvos values (153, 'מצות קדוש החודש ולחשב שנים וחדשים', 'To sanctify the new month and to calculate the months and years', 'A');
insert into mitzvos values (154, 'מצות שביתה בשבת', 'To rest on Shabbos', 'A');
insert into mitzvos values (155, 'מצות קדוש שבת בדברים', 'To sanctify Shabbos with words', 'A');
insert into mitzvos values (156, 'מצות השבתת חמץ', 'To remove all leaven', 'A');
insert into mitzvos values (157, 'מצות ספור יציאת מצרים', 'To recite the Exodus from Egypt', 'A');
insert into mitzvos values (158, 'מצות אכילת מצה', 'To eat Matzah', 'A');
insert into mitzvos values (159, 'מצות שביתה ביום ראשון של פסח', 'To rest on the first day of Pesach', 'A');
insert into mitzvos values (160, 'מצות שביתה בשביעי של פסח', 'To rest on the seventh day of Pesach', 'A');
insert into mitzvos values (161, 'מצות ספירת העומר', 'To count the Omer', 'A');
insert into mitzvos values (162, 'מצות שביתה ממלאכה ביום עצרת', 'To rest on Shavuos', 'A');
insert into mitzvos values (163, 'מצות שביתה ביום ראש השנה', 'To rest on Rosh Hashana', 'A');
insert into mitzvos values (164, 'מצות תענית ביום עשירי בתשרי', 'To fast on the tenth of Tishrei', 'A');
insert into mitzvos values (165, 'מצות שביתה ממלאכה ביום הכפורים', 'To rest on Yom Kippur', 'A');
insert into mitzvos values (166, 'מצות שביתה ממלאכה ביום ראשון של חג הסוכות', 'To rest on the first day of Sukkos', 'A');
insert into mitzvos values (167, 'מצות שביתה ממלאכה ביום שמיני של סוכות', 'To rest on the eighth day of Sukkos', 'A');
insert into mitzvos values (168, 'מצות ישיבת סוכה', 'To dwell in a Sukkah', 'A');
insert into mitzvos values (169, 'מצות נטילת לולב', 'To take the four species', 'A');
insert into mitzvos values (170, 'מצות שופר בראש השנה', 'To blow the Shofar', 'A');
insert into mitzvos values (171, 'מצות נתינת מחצית השקל בשנה', 'To give the yearly half-shekel', 'A');
insert into mitzvos values (172, 'מצות לשמוע מכל נביא ונביא שיהיה בכל דור ודור אם לא יוסיף ולא יגרע במצות התורה', 'To listen to any prophet who doesn''t alter the Torah', 'A');
insert into mitzvos values (173, 'מצות מינוי מלך עלינו', 'To appoint a King', 'A');
insert into mitzvos values (174, 'מצות לשמוע מכל בית דין הגדול שיעמדו להן לישראל בכל זמן', 'To listen to every proper Jewish court', 'A');
insert into mitzvos values (175, 'מצות הטייה אחרי רבים', 'To follow the majority ruling', 'A');
insert into mitzvos values (176, 'מצות מינוי שפטים ושוטרים בכל קהל וקהל מישראל', 'To appoint judges and officers in every community', 'A');
insert into mitzvos values (177, 'מצות שופט שישפוט בצדק', 'For a judge to rule justly', 'A');
insert into mitzvos values (178, 'מצות עדות', 'Being a witness', 'A');
insert into mitzvos values (179, 'מצות חקירת העדים היטב', 'To interview the witnesses', 'A');
insert into mitzvos values (180, 'מצות לעשות לעדים זוממים כמו שזמו לעשות', 'To do to plotting witnesses as they planned', 'A');
insert into mitzvos values (181, 'מצות עריפת העגלה בנחל', 'To behead the calf in the valley', 'A');
insert into mitzvos values (182, 'מצות להכין שש ערי מקלט', 'To prepare six cities of refuge', 'A');
insert into mitzvos values (183, 'מצות ישראל לתת ערים ללוים לשבת בהן והן קולטות', 'To give cities to the Leviim that are also for refuge', 'A');
insert into mitzvos values (184, 'מצות מעקה', 'To build a protective fence on ones''s roof', 'A');
insert into mitzvos values (185, 'מצות לאבד עבודה זרה ומשמשיה', 'To blot out idols and their accessories', 'A');
insert into mitzvos values (186, 'מצות שריפת עיר הנדחת וכל אשר בה', 'To burn down a wayward city and all that it is in it', 'A');
insert into mitzvos values (187, 'מצות הריגת שבעה עממין', 'To destroy the seven Caananite nations', 'A');
insert into mitzvos values (188, 'מצות להכרית זרעו של עמלק', 'To cut off the seed of Amalek', 'A');
insert into mitzvos values (189, 'מצות לזכור מה שעשה עמלק לישראל בצאתם ממצרים', 'To recall what Amalek did to us when we left Egypt', 'A');
insert into mitzvos values (190, 'מצות לעשות במלחמת הרשות כמשפט הכתוב', 'To carry out voluntary wars according to the law', 'A');
insert into mitzvos values (191, 'מצות למשוח כהן למלחמה', 'To annoint a Kohen for war', 'A');
insert into mitzvos values (192, 'מצות להתקין יד במחנה', 'To designate a washroom outside the camp during war', 'A');
insert into mitzvos values (193, 'מצות להתקין יתד במחנה', 'To bring a spade for washroom use during war', 'A');
insert into mitzvos values (194, 'מצות השבת גזל', 'To return stolen items', 'A');
insert into mitzvos values (195, 'מצות צדקה', 'To give charity', 'A');
insert into mitzvos values (196, 'מצות הענק עבד עברי', 'To give gifts upon the freeing of ones''s Jewish slave', 'A');
insert into mitzvos values (197, 'מצות הלואה לעני', 'To lend to the poor', 'A');
insert into mitzvos values (198, 'מצות הלואה לנכרי ברבית אם יצטרך ללוות מה שאינו כן בישראל', 'To lend to a non Jew with interest if he needs a loan, unlike to a Jew', 'A');
insert into mitzvos values (199, 'מצות השבת משכון לבעליו בעת שהוא צריך לו', 'To return collateral to the owner when they need it', 'A');
insert into mitzvos values (200, 'מצות נתינת שכר שכיר ביומו', 'To pay a worker the day it''s due', 'A');
insert into mitzvos values (201, 'מצות עלינו להניח השכיר לאכול בזמן שכירותו מדברים ידועים', 'To let a worker consume from the produce he is working on', 'A');
insert into mitzvos values (202, 'מצות פרוק משא', 'To unload someone''s load', 'A');
insert into mitzvos values (203, 'מצות הקמת משא לישראל', 'To help load someone''s load', 'A');
insert into mitzvos values (204, 'מצות השבת אבדה', 'To return a lost object', 'A');
insert into mitzvos values (205, 'מצות תוכחה לישראל שאינו נוהג כשורה', 'To rebuke someone acting improperly', 'A');
insert into mitzvos values (206, 'מצות אהבת ישראל', 'To love a fellow Jew', 'A');
insert into mitzvos values (207, 'מצות אהבת הגרים', 'To love a convert', 'A');
insert into mitzvos values (208, 'מצות צדוק המאזנים והמשקלים והמדות', 'To have fair and honest weights and measures', 'A');
insert into mitzvos values (209, 'מצות כבוד חכמים', 'To honor sages', 'A');
insert into mitzvos values (210, 'מצות כיבוד אב ואם', 'To honor one''s father and mother', 'A');
insert into mitzvos values (211, 'מצות יראת אב ואם', 'To fear one''s father and mother', 'A');
insert into mitzvos values (212, 'מצות פריה ורבייה', 'To be fruitful and multiply', 'A');
insert into mitzvos values (213, 'מצות קידושין באשה', 'To bethrothe a wife', 'A');
insert into mitzvos values (214, 'מצות שישמח חתן עם אשתו שנה ראשונה', 'To be happy with one''s wife in the first year of marriage', 'A');
insert into mitzvos values (215, 'מצות מילה', 'To circumsize one''s son', 'A');
insert into mitzvos values (216, 'מצות ייבום', 'Levirate marriage', 'A');
insert into mitzvos values (217, 'מצות חליצה', 'The Chalitzah ceremony', 'A');
insert into mitzvos values (218, 'מצות האונס שישא אנוסתו לאשה', 'For a rapist to marry the one he raped', 'A');
insert into mitzvos values (219, 'מצות שתשב אשת מוציא שם רע תחתיו לעולם', 'For someone who slanders his wife to stay married to her forever', 'A');
insert into mitzvos values (220, 'מצות בית דין לדון בדין מפתה', 'For Beis Din to judge cases of a seducer', 'A');
insert into mitzvos values (221, 'מצות דין יפת תואר', 'The law of the beautiful captive woman', 'A');
insert into mitzvos values (222, 'מצות על הרוצה לגרש את אשתו שיגרשנו בשטר', 'For someone who wishes to divorce to give a get', 'A');
insert into mitzvos values (223, 'מצות סוטה שיביאה הבעל אל הכהן ויעשה לה כמשפט הכתוב', 'For a Sotah''s husband to bring her to the Temple for the ritual', 'A');
insert into mitzvos values (224, 'מצות מלקות לרשעים', 'Lashes for sinners', 'A');
insert into mitzvos values (225, 'מצות על בית דין להשליך מכה נפש בשגגה מעירו לערי מקלט ועל הרוצח בעצמו ללכת שם', 'For an accidental killer to be sent to the Cities of Refuge', 'A');
insert into mitzvos values (226, 'מצות בית דין להרוג בסייף המחוייב', 'For Beis Din to kill those liable to decapitation', 'A');
insert into mitzvos values (227, 'מצות בית דין להרוג בחנק המחוייב', 'For Beis Din to kill those liable to strangulation', 'A');
insert into mitzvos values (228, 'מצות שישרפו מי שיתחייב שריפה', 'For Beis Din to kill those liable to death by fire', 'A');
insert into mitzvos values (229, 'מצות על בית דין לסקול באבנים מי שיתחייב סקילה', 'For Beis Din to kill those liable to death by stoning', 'A');
insert into mitzvos values (230, 'מצות דין תלייה למי שיתחייב לתלות', 'To hang those who are deserving', 'A');
insert into mitzvos values (231, 'מצות קבורה לנהרג על פי בית דין וכן לכל מת', 'To bury those who were put to death and anyone who died', 'A');
insert into mitzvos values (232, 'מצות דין עבד עברי', 'The law of a Hebrew slave', 'A');
insert into mitzvos values (233, 'מצות יעוד של אמה העבריה', 'To marry one''s Hebrew maidservant', 'A');
insert into mitzvos values (234, 'מצות פדיון אמה העבריה', 'To redeem a Hebrew maidservant', 'A');
insert into mitzvos values (235, 'מצות עבודה בעבד כנעני לעולם', 'To rule over a Caananite slave forever', 'A');
insert into mitzvos values (236, 'מצות דיני חובל בחבירו שנקרא דיני קנסות', 'Financial compensation for those who were injured', 'A');
insert into mitzvos values (237, 'מצות בית דין לדון בנזקי בהמה', 'For Beis Din to judge damages done by violent animals', 'A');
insert into mitzvos values (238, 'מצות בית דין לדון בנזקי הבור', 'For Beis Din to judge damages done by pits', 'A');
insert into mitzvos values (239, 'מצות בית דין לדון גנב בתשלומין או במיתה', 'For Beis Din to judge thefts if they are civil or capital cases', 'A');
insert into mitzvos values (240, 'מצות בית דין לדון בנזקי הבער', 'For Beis Din to judge damages done by roaming animals', 'A');
insert into mitzvos values (241, 'מצות בית דין לדון בנזקי האש', 'For Beis Din to judge damages done by fire', 'A');
insert into mitzvos values (242, 'מצות בית דין לדון בדין שומר חנם', 'For Beis Din to judge cases regarding a voluntary guardian', 'A');
insert into mitzvos values (243, 'מצות בית דין לדון בדין נושא שכר ושוכר', 'For Beis Din to judge cases regarding a hired guardian or renter', 'A');
insert into mitzvos values (244, 'מצות בית דין לדון בדין השואל', 'For Beis Din to judge cases regarding a borrower', 'A');
insert into mitzvos values (245, 'מצות עשיית דין בין לוקח ומוכר', 'For Beis Din to judge cases between buyers and purchasers', 'A');
insert into mitzvos values (246, 'מצות בית דין לדון בדין טוען וכופר', 'For Beis Din to judge claims and denials', 'A');
insert into mitzvos values (247, 'מצות להציל הנרדף', 'To save someone being pursued', 'A');
insert into mitzvos values (248, 'מצות דיני נחלות', 'The laws of inheritance', 'A');

insert into mitzvos values (249, 'שלא נאמין אלוה בלתי השם לבדו', 'Not to believe in any foreign deities', 'L');
insert into mitzvos values (250, 'שלא לעשות פסל', 'Not to make any statues', 'L');
insert into mitzvos values (251, 'שלא לעשות עבודה זרה לא לעצמו ולא לזולתו', 'Not to construct idols for oneself or for others', 'L');
insert into mitzvos values (252, 'שלא לעשות צורות לנוי', 'Not to make forms for beauty', 'L');
insert into mitzvos values (253, 'שלא להשתחוות לעבודה זרה', 'Not to bow to idols', 'L');
insert into mitzvos values (254, 'שלא לעבוד עבודה זרה במה שדרכה להעבד', 'Not to worship idols in their normal mode of service', 'L');
insert into mitzvos values (255, 'שלא נתן מזרעינו למולך', 'Not to give one''s child to Molech', 'L');
insert into mitzvos values (256, 'שלא לעשות אוב', 'Not to consult an Ov', 'L');
insert into mitzvos values (257, 'שלא לעשות מעשה ידעוני', 'Not to perform the Yidoni ritual', 'L');
insert into mitzvos values (258, 'שלא לפנות אחר עבודה זרה לא במחשבה ולא בדיבור ולא בהטבה', 'Not to turn towards idol worship', 'L');
insert into mitzvos values (259, 'שלא להקים מצבה', 'Not to construct a bowing stone', 'L');
insert into mitzvos values (260, 'שלא נשתחוה על אבן משכית אפילו לשם', 'Not to prostrate on a stone even to Hashem', 'L');
insert into mitzvos values (261, 'שלא לטעת אילן במקדש', 'Not to plant a tree in the Temple', 'L');
insert into mitzvos values (262, 'שלא לישבע בעבודה זרה', 'Not to swear by an idol', 'L');
insert into mitzvos values (263, 'שלא להדיח בני ישראל אחר עבודה זרה', 'Not to intice the Jews towards idol worship', 'L');
insert into mitzvos values (264, 'שלא להסית אחד מישראל אחר עבודה זרה', 'Not to intice another towards idol worship', 'L');
insert into mitzvos values (265, 'שלא לאהוב המסית', 'To not love an inticer', 'L');
insert into mitzvos values (266, 'שלא לעזוב השנאה מן המסית', 'Not to abandon hatred towards an inticer', 'L');
insert into mitzvos values (267, 'שלא להציל המסית', 'Not to save an inticer', 'L');
insert into mitzvos values (268, 'שלא ילמד המוסת זכות על מסית', 'For someone inticed not to absolve the inticer', 'L');
insert into mitzvos values (269, 'שלא ישתוק המוסת מללמד חובה על המסית', 'For someone inticed not to refrain from prosecuting against the inticer', 'L');
insert into mitzvos values (270, 'שלא ליהנות מצפוי עבודה זרה', 'Not to benefit from the metal plating of idols', 'L');
insert into mitzvos values (271, 'שלא לבנות עיר הנדחת לכמוה שהיתה', 'Not to rebuild a wayward city the way it was', 'L');
insert into mitzvos values (272, 'שלא ליהנות בממון עיר הנדחת', 'Not to benefit from the spoils of a wayward city', 'L');
insert into mitzvos values (273, 'שלא להדביק שום דבר מעבודה זרה עם ממונינו וברשותינו ליהנות בו', 'Not to cling or benefit from the money of idols', 'L');
insert into mitzvos values (274, 'שלא להתנבאות בשם עבודה זרה', 'Not to prophecize in the name of idols', 'L');
insert into mitzvos values (275, 'שלא להתנבאת בשקר', 'Not to prophecize falsely', 'L');
insert into mitzvos values (276, 'שלא לשמע ממתנבא בשם עבודה זרה', 'Not to listen to someone who prophecizes in the name of an idol', 'L');
insert into mitzvos values (277, 'שלא נמנע מהריגת נביא שקר ולא נגור ממנו', 'Not to refrain from killing a false prophet', 'L');
insert into mitzvos values (278, 'שלא ללכת בחוקות הגוים', 'Not to follow the statutes of the non Jews', 'L');
insert into mitzvos values (279, 'שלא לקסום', 'Not to perform charms', 'L');
insert into mitzvos values (280, 'שלא לעונן', 'Not to divine the future', 'L');
insert into mitzvos values (281, 'שלא לנחש', 'Not to recite incantations', 'L');
insert into mitzvos values (282, 'שלא לכשף', 'Not to perform magic', 'L');
insert into mitzvos values (283, 'שלא לחבור חבר', 'Not to gather animals for witchcraft', 'L');
insert into mitzvos values (284, 'שלא לשאול באוב', 'Not to seek the Ov', 'L');
insert into mitzvos values (285, 'שלא לשאול בידעוני', 'Not to seek the Yidoni', 'L');
insert into mitzvos values (286, 'שלא לדרוש אל המתים', 'Not to communicate with the dead', 'L');
insert into mitzvos values (287, 'שלא תעדה אשה עדי איש', 'A woman shouldn''t wear men''s clothing', 'L');
insert into mitzvos values (288, 'שלא יעדה האיש עדי אשה', 'A man shouldn''t wear women''s clothing', 'L');
insert into mitzvos values (289, 'שלא נכתוב בבשרינו כתובת קעקע', 'Not to receive a tatoo', 'L');
insert into mitzvos values (290, 'שלא ללבוש שעטנז', 'Not to wear garments of a mixture of wool and linen', 'L');
insert into mitzvos values (291, 'שלא להקיף פאתי הראש', 'Not to round the corners of one''s head', 'L');
insert into mitzvos values (292, 'שלא להשחית פאת זקן', 'Not to destroy the corners of one''s beard', 'L');
insert into mitzvos values (293, 'שלא להתגודד כמו עובדי עבודה זרה', 'Not to lacerate oneself in the worship of idols', 'L');
insert into mitzvos values (294, 'שלא לשכון בארץ מצרים לעולם', 'To never settle in Egypt', 'L');
insert into mitzvos values (295, 'שלא לתור אחר מחשבת הלב וראיית הענים', 'Not to follow the heart or the eyes', 'L');
insert into mitzvos values (296, 'שלא לכרות ברית לשבעה עממים', 'Not to form a covenant with the Seven Caananite Nations', 'L');
insert into mitzvos values (297, 'שלא להחיות אחד מכל שבעה עממין', 'Not to allow anyone from the Seven Caananite Nations to live', 'L');
insert into mitzvos values (298, 'שלא לחון על עובדי עבודה זרה', 'Not to dwell with idol worshippers', 'L');
insert into mitzvos values (299, 'שלא להושיב עובד עבודה זרה בארצנו', 'Not to allow idol worshippers in our land', 'L');
insert into mitzvos values (300, 'שלא להתחתן בעובדי עבודה זרה', 'Not to intermarry with idol worshippers', 'L');
insert into mitzvos values (301, 'שלא ישא עמוני ומואבי בת ישראל', 'An Ammonite or Moabite cannot marry a Jewish woman', 'L');
insert into mitzvos values (302, 'שלא להרחיק זרע עשו מהתחתן עם זרע ישראל אחר שיתגיירו אלא עד ג'' דורות', 'Not to prevent an Edomite convert from marrying into the nation as of the third generation', 'L');
insert into mitzvos values (303, 'שלא להרחיק מצרי כמו כן אלא עד דור שלישי ולא שלישי בכלל', 'Not to prevent an Egyptian convert from marrying into the nation as of the third generation', 'L');
insert into mitzvos values (304, 'שלא לקרוא שלום לעמון ומואב', 'Not to seek peace with Ammon and Moav', 'L');
insert into mitzvos values (305, 'שלא להשחית אילני מאכל במצור וכן כל השחתה בכלל הלאו', 'Not to destroy trees during a war, or anything needlessly', 'L');
insert into mitzvos values (306, 'שלא לערוץ מפני אחד מכל שבעה עממין', 'Do not be afraid of the enemy during battle', 'L');
insert into mitzvos values (307, 'שלא נשכח מעשה עמלק שעשה עם אבותינו בצאתם ממצרים', 'Not to forget what Amalek did to our ancestors', 'L');
insert into mitzvos values (308, 'שלא לברך השם', 'Not to "bless" Hashem', 'L');
insert into mitzvos values (309, 'שלא נשבע לשקר', 'Not to swear falsely', 'L');
insert into mitzvos values (310, 'שלא לישבע לשוא', 'Not to swear in vain', 'L');
insert into mitzvos values (311, 'שלא לעשות דבר שיתחלל בו שם שמים בין בני אדם', 'Not to desecrate the name of Hashem', 'L');
insert into mitzvos values (312, 'שלא לנסות נביא אמת יותר מדאי', 'Not to overly test a true prophet', 'L');
insert into mitzvos values (313, 'שלא למחות ספרי הקודש והשמות של הקדוש ברוך הוא הכתובים שם וכל בתי עבודת הקודש', 'Not to erase holy names or sacred texts or destroy sanctuaries', 'L');
insert into mitzvos values (314, 'שלא ילין הצלוב על העץ וכן המת בביתו אלא לכבודו', 'Not to leave a dead person hanging or unburied', 'L');
insert into mitzvos values (315, 'שלא לבטל שמירת המקדש', 'Not to annull the guarding of the Temple', 'L');
insert into mitzvos values (316, 'שלא יכנסו הכהנים בכל עת במקדש וכל שכן זרים', 'Not to enter the Temple at one''s whim', 'L');
insert into mitzvos values (317, 'שלא יכנס בעל מום בהיכל', 'A blemished Kohen should not enter the Temple Heichal', 'L');
insert into mitzvos values (318, 'שלא יעבד הכהן בעל מום', 'A blemished Kohen should not perform the Temple service', 'L');
insert into mitzvos values (319, 'שלא יעבוד כהן בעל מום עובר', 'A Kohen with a temporary blemish should not perform the Temple service', 'L');
insert into mitzvos values (320, 'שלא יתעסקו הכהנים בעבודת הלוים ולא הלוים בעבודת הכהנים', 'A Kohen shouldn''t perform the service of the Leviim, not vice-versa', 'L');
insert into mitzvos values (321, 'שלא להכנס שתויי יין במקדש וכן שלא יורה שתוי', 'Not to serve in the Temple drunk, nor provide rulings', 'L');
insert into mitzvos values (322, 'שלא יעבד זר במקדש', 'A non-Kohen should not perform the Temple service', 'L');
insert into mitzvos values (323, 'שלא יעבד כהן טמא', 'An impure Kohen should not perform the Temple service', 'L');
insert into mitzvos values (324, 'שלא ישמש כהן טבול יום עד שיעריב שמשו', 'A previously impure Kohen who went to the mikveh shouldn''t perform the Temple service until nightfall', 'L');
insert into mitzvos values (325, 'שלא יכנס טמא בכל המקדש', 'Someone impure shouldn''t enter the Temple', 'L');
insert into mitzvos values (326, 'שלא יכנס טמא למחנה לוייה', 'Someone impure shouldn''t enter the Levite camp', 'L');
insert into mitzvos values (327, 'שלא לבנות אבני מזבח גזית', 'Not to make the Altar of hewn stone', 'L');
insert into mitzvos values (328, 'שלא לפסוע על המזבח', 'Not to take steps onto the Altar', 'L');
insert into mitzvos values (329, 'שלא להקטיר ולהקריב על מזבח הזהב', 'Not to burn offerings on the Golden Altar', 'L');
insert into mitzvos values (330, 'שלא לכבות אש מעל המזבח', 'Not to extinguish the fire on the Altar', 'L');
insert into mitzvos values (331, 'שלא לעשות במתכונת שמן המשחה', 'Not to create a replica of the anoining oil', 'L');
insert into mitzvos values (332, 'שלא יסוך זר בשמן המשחה', 'Not to anoint with the anointing oil', 'L');
insert into mitzvos values (333, 'שלא לעשות במתכונת הקטרת', 'Not to replicate the incense', 'L');
insert into mitzvos values (334, 'שלא להוציא בדי הארון ממנו', 'Not to remove the stalves of the Aron', 'L');
insert into mitzvos values (335, 'שלא יזח החשן מעל האיפוד', 'Not to remove the Choshen from the Eiphod', 'L');
insert into mitzvos values (336, 'שלא לקרוע המעיל של כהנים', 'Not to tear the Meil of the Kohanim', 'L');
insert into mitzvos values (337, 'שלא להעלות קדשים בחוץ', 'Not to bring offerings outside the Temple', 'L');
insert into mitzvos values (338, 'שלא לשחוט קדשים חוץ לעזרה', 'Not to slaughter offerings outside the Temple courtyard', 'L');
insert into mitzvos values (339, 'שלא נקדיש בעלי מומין להקריבם למזבח', 'Not to sanctify blemished animals for the Altar', 'L');
insert into mitzvos values (340, 'שלא נשחט בעלי מומין לשם קרבן', 'Not to slaughter a blemished animal for an offering', 'L');
insert into mitzvos values (341, 'שלא נזרוק דם בעל מום על המזבח', 'Not to throw the blood of a blemished animal on the altar', 'L');
insert into mitzvos values (342, 'שלא נקטיר אימורי בעלי מומין', 'Not to burn the limbs of a blemished animal', 'L');
insert into mitzvos values (343, 'שלא להקריב קרבן בעל מום עובר', 'Not to sacrifice an animal with a temporary blemish', 'L');
insert into mitzvos values (344, 'שלא להקריב קרבן בעל מום מיד הגוים', 'Not to offer a blemished sacrifice from a non-Jew', 'L');
insert into mitzvos values (345, 'שלא ליתן מום בקדשים', 'Not to place a blemish on a sanctified animal', 'L');
insert into mitzvos values (346, 'שלא להקריב שאור או דבש', 'Not to offer leaven or honey', 'L');
insert into mitzvos values (347, 'שלא להקריב קרבן בלא מלח', 'Not to bring an offering without salt', 'L');
insert into mitzvos values (348, 'שלא להקריב אתנן זונה ומחיר כלב', 'Not to offer a harlot''s wage or the exchange for a dog', 'L');
insert into mitzvos values (349, 'שלא לשחוט בהמה ובנה ביום אחד', 'Not to slaughter an animal and its child on the same day', 'L');
insert into mitzvos values (350, 'שלא ליתן שמן זית במנחת חוטא', 'Not to put olive oil in a Minchas Choteh', 'L');
insert into mitzvos values (351, 'שלא ליתן לבונה במנחת חוטא', 'Not to put frankincense in a Minchas Choteh', 'L');
insert into mitzvos values (352, 'שלא ליתן שמן בקרבן סוטה', 'Not to put oil in the offering of a Sotah', 'L');
insert into mitzvos values (353, 'שלא להשים לבונה בקרבן סוטה', 'Not to put frankincense in the offering of a Sotah', 'L');
insert into mitzvos values (354, 'שלא נמיר הקדשים', 'Not to exchange an offering with a non-offering', 'L');
insert into mitzvos values (355, 'שלא לשנות הקדשים מקרבן לקרבן', 'Not to exchange offerings', 'L');
insert into mitzvos values (356, 'שלא לפדות בכור בהמה טהורה', 'Not to redeem a pure firstborn animal', 'L');
insert into mitzvos values (357, 'שלא למכור מעשר בהמה אלא יאכל בירושלם', 'Not to sell Maaser Behemah, rather eat it in Yerushalayim', 'L');
insert into mitzvos values (358, 'שלא ימכר קרקע שהחרים אותה בעליו אלא תנתן לכהנים', 'Not to sell consecrated land which should be given to Kohanim', 'L');
insert into mitzvos values (359, 'שלא יגאל שדה החרם', 'Not to redeem consecrated land', 'L');
insert into mitzvos values (360, 'שלא להבדיל הראש בחטאת העוף', 'Not to separate the head of a bird Chatas offering', 'L');
insert into mitzvos values (361, 'שלא לעבוד בקדשים', 'Not to work consecrated animals', 'L');
insert into mitzvos values (362, 'שלא לגזוז את הקדשים', 'Not to shear consecrated animals', 'L');
insert into mitzvos values (363, 'שלא נשחט שה הפסח בארבעה עשר בניסן בעוד שהחמץ ברשותינו', 'Not to slaughter the Pesach offering while owning chametz', 'L');
insert into mitzvos values (364, 'שלא נניח אימורי הפסח לפסול בלינה', 'Not to leave the parts of the Pesach offering overnight', 'L');
insert into mitzvos values (365, 'שלא להותיר מבשר הפסח', 'Not to leave over meat from the Pesach offering', 'L');
insert into mitzvos values (366, 'שלא להותיר מבשר קרבן החגיגה שנקריב ביום י"ד בניסן עד יום השלישי', 'Not to leave over meat from the Chagigah offering', 'L');
insert into mitzvos values (367, 'שלא להותיר כלום מבשר פסח שני למחרתו', 'Not to leave over any meat from the Pesach Sheni offering', 'L');
insert into mitzvos values (368, 'שלא להותיר מבשר קרבן התודה', 'Not to leave over meat from the Todah offering', 'L');
insert into mitzvos values (369, 'שלא לשבור עצם מן הפסח', 'Not to break a bone of the Pesach offering', 'L');
insert into mitzvos values (370, 'שלא לשבור עצם מעצמות פסח שני', 'Not to break a bone of the Pesach Sheni offering', 'L');
insert into mitzvos values (371, 'שלא להוציא מבשר הפסח חוצה', 'Not to take meat from the Pesach offering outside the house', 'L');
insert into mitzvos values (372, 'שלא לעשות שיירי מנחות חמץ', 'Not to allow leftover Mincha offerings to become chametz', 'L');
insert into mitzvos values (373, 'שלא לאכול הפסח נא ומבושל', 'Not to eat the Pesach offering raw or boiled', 'L');
insert into mitzvos values (374, 'שלא נאכיל מן הפסח לגר ולתושב', 'Not to feed the Pesach offering to a Gentile or Resident Alien', 'L');
insert into mitzvos values (375, 'שלא יאכל ערל מן הפסח', 'For someone uncircumsized not to eat from the Pesach offering', 'L');
insert into mitzvos values (376, 'שלא נאכיל מן הפסח לישראל משומד', 'Not to feed the Pesach offering to an apostate', 'L');
insert into mitzvos values (377, 'שלא יאכל טמא מן הקדשים', "For someone impure not to eat offerings", 'L');
insert into mitzvos values (378, 'שלא לאכול בשר קדשים שנטמא', 'Not to eat offerings which became impure', 'L');
insert into mitzvos values (379, 'שלא לאכול נותר', 'Not to eat leftover offering meat', 'L');
insert into mitzvos values (380, 'שלא לאכול פיגול', 'Not to eat from an offering which became Piggul', 'L');
insert into mitzvos values (381, 'שלא יאכל שום זר תרומה', 'For a non-Kohen not to eat Terumah', 'L');
insert into mitzvos values (382, 'שלא יאכל תושב כהן ושכיר תרומה', 'For a Kohen''s Resident Alien or hired help not to eat Terumah', 'L');
insert into mitzvos values (383, 'שלא יאכל ערל תרומה', 'For someone uncircumsized not to eat Terumah', 'L');
insert into mitzvos values (384, 'שלא יאכל כהן טמא תרומה', 'For an impure Kohen not to eat Terumah', 'L');
insert into mitzvos values (385, 'שלא תאכל חללה מן הקודש', 'A Challalah shouldn''t eat holy food', 'L');
insert into mitzvos values (386, 'שלא תאכל מנחת כהן', 'Not to eat a Mincha of a Kohen', 'L');
insert into mitzvos values (387, 'שלא לאכל מבשר חטאות הנעשות בפנים', 'Not to eat the meat of an offering brought within the Kodesh', 'L');
insert into mitzvos values (388, 'שלא לאכול פסולי המוקדשין', 'Not to eat disqualified offerings', 'L');
insert into mitzvos values (389, 'שלא לאכול מעשר שני של דגן חוץ לירושלם', 'Not to eat Maaser Sheni of grain outside Jerusalem', 'L');
insert into mitzvos values (390, 'שלא לאכול מעשר שני של תירוש חוץ לירושלם', 'Not to eat Maaser Sheni of wine outside Jerusalem', 'L');
insert into mitzvos values (391, 'שלא לאכול מעשר שני של יצהר חוץ לירושלם', 'Not to eat Maaser Sheni of oil outside Jerusalem', 'L');
insert into mitzvos values (392, 'שלא לאכול בכור תמים חוץ לירשלם', 'Not to eat a blemish free firstborn animal outside Jerusalem', 'L');
insert into mitzvos values (393, 'שלא לאכול בשר חטאת ואשם חוץ לקלעים ואפילו הכהנים', 'Not to eat a Chatas or Asham outside the Azarah', 'L');
insert into mitzvos values (394, 'שלא לאכול בשר העולה', 'Not to eat the meat of an Olah', 'L');
insert into mitzvos values (395, 'שלא לאכול בשר קדשים קלים קודם זריקת דמים', 'Not to eat Kodshim Kalim before their blood was thrown', 'L');
insert into mitzvos values (396, 'שלא יאכל זר בשר קודשי קודשים', 'For a non Kohen not to eat the most sanctified offerings', 'L');
insert into mitzvos values (397, 'שלא יאכלו כהנים ביכורים קודם הנחתם בעזרה', 'Not to eat Bikkurim before they are placed in the Azarah', 'L');
insert into mitzvos values (398, 'שלא לאכול מעשר שני בטומאה', 'Not to eat Maaser Sheni while impure', 'L');
insert into mitzvos values (399, 'שלא לאכול מעשר שני באנינות', 'Not to eat Maaser Sheni as an Onen', 'L');
insert into mitzvos values (400, 'שלא להוציא דמי מעשר שני בשאר דברים שאינם מאכילה ושתייה', 'Not to purchase with Maaser Sheni money anything besides food or drink', 'L');
insert into mitzvos values (401, 'שלא לאכל טבל', 'Not to consume untithed produce', 'L');
insert into mitzvos values (402, 'שלא להקדים חוקי התבואות', 'Not to separate tithes in the incorrect order', 'L');
insert into mitzvos values (403, 'שלא לאחר הנדרים והנדבות', 'Not to delay voluntary and vow offerings', 'L');
insert into mitzvos values (404, 'שלא לעלות לרגל בלא קרבן שיהיה עמנו שנרקריבו שם', 'Not to make the pilgrimmage to the Temple without an offering', 'L');
insert into mitzvos values (405, 'שלא נחל דברינו בנדרים', 'Not to profane our words with regards to vows', 'L');
insert into mitzvos values (406, 'שלא ישא כהן אשה זונה', 'For a Kohen not to marry a Zonah', 'L');
insert into mitzvos values (407, 'שלא ישא כהן אשה חללה', 'For a Kohen not to marry a Challalah', 'L');
insert into mitzvos values (408, 'שלא ישא כהן אשה גרושה', 'For a Kohen not to marry a divorcee', 'L');
insert into mitzvos values (409, 'שלא ישא כהן גדול אלמנה', 'For the Kohen Gadol not to marry a widow', 'L');
insert into mitzvos values (410, 'שלא יבעול כהן גדול אלמנה', 'For the Kohen Gadol not to be intimate with a widow', 'L');
insert into mitzvos values (411, 'שלא יכנסו הכהנים למקדש מגודלי שער', 'For Kohanim not to enter the Temple with long hair', 'L');
insert into mitzvos values (412, 'שלא יכנסו הכהנים למקדש קרועי בגדים', 'For Kohanim not to enter the Temple with dissheveled clothing', 'L');
insert into mitzvos values (413, 'שלא יצאו הכהנים מן המקדש בשעת עבודה', 'For Kohanim not to leave the Temple in the middle of the Temple Service', 'L');
insert into mitzvos values (414, 'שלא יטמא כהן הדיוט במת זולתי בקרובים המבוארים בכתוב', 'For a Kohen not to become impure for the dead besides for their relatives', 'L');
insert into mitzvos values (415, 'שלא יטמא כהן גדול בשום טומאה במת', 'For the Kohen Gadol not to become impure for any dead', 'L');
insert into mitzvos values (416, 'שלא יכנס כהן גדול באהל המת', 'For the Kohen Gadol not to enter a tent which contains a corpse', 'L');
insert into mitzvos values (417, 'שלא יהיה לשבט לוי נחלה בארץ', 'For Leviim not to have any portion in the land of Israel', 'L');
insert into mitzvos values (418, 'שלא יטול שבט לוי חלק בביזה בשעת כבוש הארץ', 'For Leviim not to take any of the spoils of conquest', 'L');
insert into mitzvos values (419, 'שלא לעשות קרחה על מת', 'Not to tear out hair for the deceased', 'L');
insert into mitzvos values (420, 'שלא לאכול בהמה וחיה טמאה', 'Not to eat non-kosher animals', 'L');
insert into mitzvos values (421, 'שלא לאכול דג טמא', 'Not to eat non-kosher fish', 'L');
insert into mitzvos values (422, 'שלא לאכול עוף טמא', 'Not to eat non-kosher birds', 'L');
insert into mitzvos values (423, 'שלא לאכול חגב טמא וכן כל שרץ העוף', 'Not to eat non-kosher grasshoppers or any flying bug', 'L');
insert into mitzvos values (424, 'שלא לאכול שרץ הארץ', 'Not to eat land bugs', 'L');
insert into mitzvos values (425, 'שלא לאכול מן השרצים המתהוים מן העפוש', 'Not to eat bugs that come from sweat', 'L');
insert into mitzvos values (426, 'שלא לאכול מיני שרצים דקים הנולדים בזרעים ובפירות', 'Not to eat worms that come from seeds or fruits', 'L');
insert into mitzvos values (427, 'שלא לאכול משרץ המים', 'Not to eat sea bugs', 'L');
insert into mitzvos values (428, 'שלא לאכול מבשר בהמה וחיה ועוף שמתו מאליהם', 'Not to eat animals which died without slaughter', 'L');
insert into mitzvos values (429, 'שלא לאכול טריפה', 'Not to eat an animal that was torn to death', 'L');
insert into mitzvos values (430, 'שלא לאכול אבר מן החי', 'Not to eat the flesh from a living animal', 'L');
insert into mitzvos values (431, 'שלא לאכול גיד הנשה', 'Not to eat the sciatic nerve', 'L');
insert into mitzvos values (432, 'שלא נאכל דם בהמה חיה ועוף', 'Not to eat the blood of an animal or bird', 'L');
insert into mitzvos values (433, 'שלא נאכל חלב', 'Not to eat forbidden fats', 'L');
insert into mitzvos values (434, 'שלא לבשל בשר בחלב', 'Not to cook milk and meat together', 'L');
insert into mitzvos values (435, 'שלא לאכול בשר בחלב', 'Not to eat milk and meat which was cooked together', 'L');
insert into mitzvos values (436, 'שלא לאכול שור הנסקל', 'Not to eat a bull which was sentenced to death', 'L');
insert into mitzvos values (437, 'שלא לאכול מתבואה חדשה קודם כלות יום י"ו בניסן', 'Not to eat new grain until the Omer is brought', 'L');
insert into mitzvos values (438, 'שלא לאכול קלי מתבואה עד ביום ההוא', 'Not to eat roasted grain until the Omer is brought', 'L');
insert into mitzvos values (439, 'שלא לאכול כרמל מתבואה עד הזמן הנזכר', 'Not to eat fresh grain until the Omer is brought', 'L');
insert into mitzvos values (440, 'שלא לאכול ערלה', 'Not to eat the fruit of a tree in its first three years', 'L');
insert into mitzvos values (441, 'שלא לאכול כלאי הכרם בארץ ישראל', 'Not to eat mixed species from a vineyard in the land of Israel', 'L');
insert into mitzvos values (442, 'שלא לשתות יין נסך', 'Not to drink an idol''s wine libations', 'L');	-- The Chinuch calls this 'שלא לאכול לשתות תקרובת עבודה זרה'
insert into mitzvos values (443, 'שלא לאכול ולשתות כדרך זולל וסובא', 'Not to eat and drink like a rebellious son', 'L');
insert into mitzvos values (444, 'שלא לאכול ולשתות ביום הכפורים', 'Not to eat or drink on Yom Kippur', 'L');
insert into mitzvos values (445, 'שלא לאכול חמץ בפסח', 'Not to eat chametz on Pesach', 'L');
insert into mitzvos values (446, 'שלא לאכול מכל דבר שיש בו חמץ', 'Not to eat anything that has chametz in it', 'L');
insert into mitzvos values (447, 'שלא לאכול חמץ אחר חצות', 'Not to eat chametz after noon on the 14th of Nissan', 'L');
insert into mitzvos values (448, 'שלא יראה לנו חמץ בפסח', 'Chametz should not be seen by us on Pesach', 'L');
insert into mitzvos values (449, 'שלא ימצא חמץ ברשותינו בפסח', 'Chametz should not be found in our property on Pesach', 'L');
insert into mitzvos values (450, 'שלא ישתה הנזיר יין או כל מיני שכר', 'A Nazir shouldn''t drink wine or intoxicating grape beverages', 'L');
insert into mitzvos values (451, 'שלא יאכל הנזיר ענבים לחים', 'A Nazir shouldn''t eat moist grapes', 'L');
insert into mitzvos values (452, 'שלא יאכל הנזיר צמוקים', 'A Nazir shouldn''t eat dried grapes', 'L');
insert into mitzvos values (453, 'שלא יאכל הנזיר קליפת הענבים', 'A Nazir shouldn''t eat the skins of grapes', 'L');
insert into mitzvos values (454, 'שלא יאכל הנזיר זרע הענבים', 'A Nazir shouldn''t eat the seeds of grapes', 'L');
insert into mitzvos values (455, 'שלא יטמא הנזיר במת ובשאר טמאות', 'A Nazir shouldn''t become spiritually impure to the dead or otherwise', 'L');
insert into mitzvos values (456, 'שלא יכנס הנזיר לאהל המת', 'A Nazir shouldn''t enter a tent which contains a corpse', 'L');
insert into mitzvos values (457, 'שלא יגלח הנזיר שערו כל ימי נזרו', 'A Nazir shouldn''t cut his hair', 'L');
insert into mitzvos values (458, 'שלא לכלות הפיאה בשדה', 'Not to finish the corner of a field', 'L');
insert into mitzvos values (459, 'שלא לקחת שבלים הנופלים בשעת הקציר', 'Not to pick up sheaves which fall during the harvest', 'L');
insert into mitzvos values (460, 'שלא לכלות פאת הכרם', 'Not to finish the corner of a vineyard', 'L');
insert into mitzvos values (461, 'שלא ללקוט פרט הכרם', 'Not to collect grape seeds which fall while harvesting a vineyard', 'L');
insert into mitzvos values (462, 'שלא ליקח עומר השכחה מתבואה או מאילנות', 'Not to collect forgotten sheaves or fruits from a tree', 'L');
insert into mitzvos values (463, 'שלא לזרוע כלאי זרעים ולא נרכיב אילן בשום מקום בארץ', 'Not to plant mixtures of produce or to graft together trees in the land of Israel', 'L');
insert into mitzvos values (464, 'שלא לזרוע כלאים בכרם בארץ ישראל דאוריתא', 'Not to plant mixtures in a vineyard in the land of Israel', 'L');
insert into mitzvos values (465, 'שלא להרביע בהמה עם מין שאינו מינו', 'Not to crossbreed animals together', 'L');
insert into mitzvos values (466, 'שלא לעשות מלאכה בשני מיני בהמה', 'Not to work two different species of animals together', 'L');
insert into mitzvos values (467, 'שלא לחסום בהמה בשעת מלאכה', 'Not to muzzle an animal while it''s working the field', 'L');
insert into mitzvos values (468, 'שלא נעבוד האדמה בשנה השביעית', 'Not to work the land during the seventh year', 'L');
insert into mitzvos values (469, 'שלא נעשה עבודה גם באילנות', 'Not to work on trees during the seventh year', 'L');
insert into mitzvos values (470, 'שלא נקצור ספיחים בשנה השביעית', 'Not to harvest growth during the seventh year', 'L');
insert into mitzvos values (471, 'שלא נאסוף פירות האילן בשביעית כדרך שאוספין אותן בכל שנה', 'Not to gather fruits during the seventh year like every other year', 'L');
insert into mitzvos values (472, 'שלא נעבוד הארץ בשנת היובל', 'Not to work the land during the Jubilee year', 'L');
insert into mitzvos values (473, 'שלא נקצור ספיחי תבואות של שנת היובל', 'Not to harvest growth during the Jubilee year', 'L');
insert into mitzvos values (474, 'שלא לאסוף פירות האילנות בשנת היובל כדרך שאוספין אותן בשאר שנים', 'Not to gather fruits during the Jubilee year like every other year', 'L');
insert into mitzvos values (475, 'שלא נמכור שדה בארץ ישראל לצמיתות', 'Not to sell land in the land of Israel forever', 'L');
insert into mitzvos values (476, 'שלא לשנות מגרשי ערי הלוים ושדותיהם', 'Not to change the status of the fields and areas surrounding a Levite city', 'L');
insert into mitzvos values (477, 'שלא לעזוב את הלוים מלתת להם מתנותיהם ומלשמחם ברגלים', 'Not to withold from the Leviim their rightful gifts or avoid rejoicing with them', 'L');
insert into mitzvos values (478, 'שלא לתבוע ההלוואה שעבר עליה שביעית', 'Not to demand a debt after the seventh year passed', 'L');
insert into mitzvos values (479, 'שלא נמנע מלהלוות לעני מפני השמטה', 'Not to avoid lending due to the approaching seventh year', 'L');
insert into mitzvos values (480, 'שלא למנוע מלהחיות העני ומליתן לו מה שהוא צריך', 'Not to refrain from sustaining a poor person or giving him what he needs', 'L');
insert into mitzvos values (481, 'שלא לשלח עבד עברי ריקם כשיצא חפשי', 'Not to free a Hebrew slave empty handed', 'L');
insert into mitzvos values (482, 'שלא נתבע חוב מעני שאין לו במה לפרוע', 'Not to demand a debt from a poor person who can''t yet pay it', 'L');
insert into mitzvos values (483, 'שלא להלוות ברבית לישראל', 'Not to lend with interest to a Jew', 'L');
insert into mitzvos values (484, 'שלא ללות ברבית מישראל', 'Not to borrow with interest from a Jew', 'L');
insert into mitzvos values (485, 'שלא נשית יד בין לוה למלוה ברבית', 'Not to cosign or bear witness to a loan with interest between Jews', 'L');
insert into mitzvos values (486, 'שלא נאחר שכר שכיר', 'Not to delay an employee''s wages', 'L');
insert into mitzvos values (487, 'שלא למשכן בעל חוב בזרוע', 'Not to forcefully take collateral', 'L');
insert into mitzvos values (488, 'שלא למנוע עבוט מבעליו בעת שצריך לו', 'Not to withold the collateral from it''s owner when they need it', 'L');
insert into mitzvos values (489, 'שלא למשכן אלמנה', 'Not to take a collateral from a widow', 'L');
insert into mitzvos values (490, 'שלא לחבול כלים שעושין בהן אוכל נפש', 'Not to take food preparation vessels as collateral', 'L');
insert into mitzvos values (491, 'שלא לגנוב נפש מישראל', 'Not to kidnap', 'L');
insert into mitzvos values (492, 'שלא לגנוב שום ממון', 'Not to steal money in stealth', 'L');
insert into mitzvos values (493, 'שלא לגזול', 'Not to openly steal money', 'L');
insert into mitzvos values (494, 'שלא להשיג גבול', 'Not to infringe on another''s borders', 'L');
insert into mitzvos values (495, 'שלא לעשוק', 'Not to withold wages from an employee', 'L');
insert into mitzvos values (496, 'שלא נכחש על ממון שיש לאחר בידינו', 'Not to deny possessing the money of an other', 'L');
insert into mitzvos values (497, 'שלא לישבע על כפירת ממון', 'Not to swear falsely about not owing money to an other', 'L');
insert into mitzvos values (498, 'שלא להונות במקח וממכר', 'Not to overcharge', 'L');
insert into mitzvos values (499, 'שלא להונות אחד מישראל בדברים', 'Not to upset an other with words', 'L');
insert into mitzvos values (500, 'שלא להונות הגר בדברים', 'Not to upset a convert with words', 'L');
insert into mitzvos values (501, 'שלא להונות הגר בממון', 'Not to overcharge a convert', 'L');
insert into mitzvos values (502, 'שלא להחזיר עבד שברח מאדוניו מחוצה לארץ לארץ ישראל', 'Not to return a slave to his owner once he escaped to the land of Israel', 'L');
insert into mitzvos values (503, 'שלא להונות עבד זה הבורח מאדניו מחוצה לארץ לארץ ישראל', 'Not to upset with words a slave who escaped from his owner to the land of Israel', 'L');
insert into mitzvos values (504, 'שלא לענות יתום ואלמנה', 'Not to oppress a widow or an orphan', 'L');
insert into mitzvos values (505, 'שלא נעבוד בעבד עברי עבודת בזיון כמו עבודת כנעני', 'Not to work a Hebrew slave with demeaning labor', 'L');
insert into mitzvos values (506, 'שלא נמכור עבד עברי על אבן המקח', 'Not to sell a Hebrew slave on the selling stone', 'L');
insert into mitzvos values (507, 'שלא לעבוד בעבד עברי בעבודת פרך', 'Not to work a Hebrew slave with oppressive work', 'L');
insert into mitzvos values (508, 'שלא להניח לגוי לעבוד בעבד עברי הנמכר לו', 'Not to leave a Hebrew slave enslaved to a Gentile', 'L');
insert into mitzvos values (509, 'שלא ימכור אמה עבריה הקונה אותה מיד האב', 'Not to resell a Jewish maidservant', 'L');
insert into mitzvos values (510, 'שלא לגרוע שאר כסות ועונה', 'Not to decrease her food, clothes, and conjucal intimacy', 'L');
insert into mitzvos values (511, 'שלא למכור אשת יפת תואר', 'Not to sell a Eishes Yefas Toar', 'L');
insert into mitzvos values (512, 'שלא להעביד באשת יפת תואר אחר שבא עליה כמו בשפחה', 'Not to work a Eishes Yefas Toar like a slave after being intimate with her', 'L');
insert into mitzvos values (513, 'שלא לחמוד', 'Not to covet', 'L');
insert into mitzvos values (514, 'שלא להתאוות מה שביד אחינו בני ישראל', 'Not to desire that which belongs to another', 'L');
insert into mitzvos values (515, 'שלא לאכול השכיר בשעת מלאכה', 'For a worker not to eat from the produce that he is presently working on', 'L');
insert into mitzvos values (516, 'שלא יקח השכיר בידו יותר על אכילתו', 'For a worker not to take more produce from the field he is working than he needs', 'L');
insert into mitzvos values (517, 'שלא להתעלם מן האבדה', 'Not to hide oneself from a lost item', 'L');
insert into mitzvos values (518, 'שלא להניח בהמת חבירו רובצת תחת משאה', 'Not to leave an other''s animal collapsing from it''s load', 'L');
insert into mitzvos values (519, 'שלא להונות במדות וכל המדות בכלל', 'Not to scam others with inaccurate measures', 'L');
insert into mitzvos values (520, 'שלא נשהה מאזנים ומשקלים חסרים עמנו ואף על פי שלא נשא ונתן בהן', 'Not to leave inaccurate measures on our property', 'L');
insert into mitzvos values (521, 'שלא לעוול המשפט', 'Not to pervert justice', 'L');
insert into mitzvos values (522, 'שלא ליקח שוחד', 'Not to accept a bribe', 'L');
insert into mitzvos values (523, 'שלא לכבד גדול בדין', 'Not to honor a prominent person in court', 'L');
insert into mitzvos values (524, 'שלא יירא הדיין בדין מאדם רע', 'For a judge not to fear a bad person', 'L');
insert into mitzvos values (525, 'שלא לרחם על עני בדין', 'Not to be merciful towards a poor person in court', 'L');
insert into mitzvos values (526, 'שלא להטות משפט חוטא מפני רשעו', 'Not to improperly acquit a wicked person', 'L');
insert into mitzvos values (527, 'שלא לרחם על המזיק בדיני קנסות', 'Not to be merciful on one who injures or kills another', 'L');
insert into mitzvos values (528, 'שלא להטות משפט גר או יתום', 'Not to improperly acquit a convert or an orphan', 'L');
insert into mitzvos values (529, 'שלא לשמוע טענת בעל דין שלא בפני בעל דינו', 'Not to hear the arguments of one party without the other party being present', 'L');
insert into mitzvos values (530, 'שלא לנטות אחרי רבים בדיני נפשות בשביל אחד', 'Not to execute someone based off of a majority of one', 'L');
insert into mitzvos values (531, 'שלא ילמד חובה מי שלמד זכות תחילה בדיני נפשות', 'Not to judge negatively someone who was initially judged favoribly in a capital crime', 'L');
insert into mitzvos values (532, 'שלא למנות דיין אדם שאינו חכם בדיני תורה אף על פי שהוא חכם בחכמות אחרות', 'Not to appoint a judge who isn''t knowledgeable in Torah', 'L');
insert into mitzvos values (533, 'שלא להעיד בשקר', 'Not to testify falsely', 'L');
insert into mitzvos values (534, 'שלא יעיד בעל עבירה', 'For a sinner not to testify', 'L');
insert into mitzvos values (535, 'שלא יעיד קרוב', 'For a relative not to testify', 'L');
insert into mitzvos values (536, 'שלא לחתוך הדין על פי עד אחד', 'Not to rule based off of one witness', 'L');
insert into mitzvos values (537, 'שלא להרוג נקי', 'Not to kill an innocent person', 'L');
insert into mitzvos values (538, 'שלא לחתוך הדין באומד הדעת', 'Not to decide someone''s fate just with estimation', 'L');
insert into mitzvos values (539, 'שלא יורה העד בדין שהעיד בו בדיני נפשות', 'For a witness to a capital crime not to rule', 'L');
insert into mitzvos values (540, 'שלא להרוג מחוייב קודם שיעמוד בדין', 'Not to execute someone before they stood trial', 'L');
insert into mitzvos values (541, 'שלא לחוס על הרודף', 'Not to have mercy on a pursuer', 'L');
insert into mitzvos values (542, 'שלא לענוש האנוס', 'Not to punish someone coerced', 'L');
insert into mitzvos values (543, 'שלא ליקח כופר להציל ממות הרוצח', 'Not to accept payment to exempt someone from execution', 'L');
insert into mitzvos values (544, 'שלא ליקח כופר ממחוייב גלות לפוטרו מן הגלות', 'Not to accept payment to exempt someone from exile', 'L');
insert into mitzvos values (545, 'שלא לעמוד על דם רעים', 'Not to idly stand by the blood of another', 'L');
insert into mitzvos values (546, 'שלא להניח מכשול', 'Not to leave hazards on our property', 'L');
insert into mitzvos values (547, 'שלא להכשיל תם בדרך', 'Not to give bad advice', 'L');
insert into mitzvos values (548, 'שלא להוסיף במלקות המחוייב מלקות ובכללה שלא נכה ישראל', 'Not to give extra lashes, which includes injuring any Jew', 'L');
insert into mitzvos values (549, 'שלא לרגל', 'Not to gossip', 'L');
insert into mitzvos values (550, 'שלא לשנוא אחים', 'Not to hate an other', 'L');
insert into mitzvos values (551, 'שלא להלבין פני אדם מישראל', 'Not to embarrass an other', 'L');
insert into mitzvos values (552, 'שלא לנקום', 'Not to take revenge', 'L');
insert into mitzvos values (553, 'שלא לנטור', 'Not to bear a grudge', 'L');
insert into mitzvos values (554, 'שלא ליקח האם מעל הבנים', 'Not to take a mother bird with her children', 'L');
insert into mitzvos values (555, 'שלא לגלח שער הנתק', 'Not to shave the hair of a nesek affliction', 'L');
insert into mitzvos values (556, 'שלא לתלוש סימני צרעת', 'Not to remove afflicitions of tzaraas', 'L');
insert into mitzvos values (557, 'שלא לעבוד ולזרוע בנחל איתן', 'Not to work the land which had the beheaded calf ceremony performed on it', 'L');
insert into mitzvos values (558, 'שלא להחיות מכשף', 'Not to let a sorcerer live', 'L');
insert into mitzvos values (559, 'שלא להוציא חתן מביתו כל שנה ראשונה', 'Not to take out a newly married man from his home the whole first year', 'L');
insert into mitzvos values (560, 'שלא למרות על פי בית דין הגדול שיעמדו לישראל', 'Not to rebel against the ruling of the High Court', 'L');
insert into mitzvos values (561, 'שלא להוסיף על מצוות התורה', 'Not to increase on the commandments of the Torah', 'L');
insert into mitzvos values (562, 'שלא לגרוע ממצוות התורה', 'Not to decrease from the commandments of the Torah', 'L');
insert into mitzvos values (563, 'שלא לקלל הדיין', 'Not to curse a judge', 'L');
insert into mitzvos values (564, 'שלא לקלל הנשיא', 'Not to curse the King', 'L');
insert into mitzvos values (565, 'שלא לקלל אחד מישראל בין איש בין אשה', 'Not to curse any Jew', 'L');
insert into mitzvos values (566, 'שלא לקלל אב ואם', 'Not to curse one''s father or mother', 'L');
insert into mitzvos values (567, 'שלא להכות אב ואם', 'Not to injure one''s father or mother', 'L');
insert into mitzvos values (568, 'שלא לעשות מלאכה בשבת', 'Not to perform creative work on Shabbos', 'L');
insert into mitzvos values (569, 'שלא נצא בשבת חוץ לתחום', 'Not to go outside the Shabbos boundary', 'L');
insert into mitzvos values (570, 'שלא יעשו בית דין משפט מות בשבת', 'For judges not to execute a punishment on Shabbos', 'L');
insert into mitzvos values (571, 'שלא לעשות מלאכה ביום א'' של פסח', 'Not to perform creative work on the first day of Pesach', 'L');
insert into mitzvos values (572, 'שלא לעשות מלאכה ביום ז'' של פסח', 'Not to perform creative work on the seventh day of Pesach', 'L');
insert into mitzvos values (573, 'שלא לעשות מלאכה ביום חג השבועות', 'Not to perform creative work on Shavuos', 'L');
insert into mitzvos values (574, 'שלא לעשות מלאכה ביום א'' של תשרי', 'Not to perform creative work on Rosh Hashanah', 'L');
insert into mitzvos values (575, 'שלא לעשות מלאכה ביום ראשון של חג הסוכות', 'Not to perform creative work on the first day of Sukkos', 'L');
insert into mitzvos values (576, 'שלא לעשות מלאכה ביום שמיני של חג', 'Not to perform creative work on the eighth day of Sukkos', 'L');
insert into mitzvos values (577, 'שלא לעשות מלאכה בעשרה בתשרי', 'Not to perform creative work on Yom Kippur', 'L');
insert into mitzvos values (578, 'שלא לגלות ערות אם', 'Not to reveal the nakedness of one''s mother', 'L');
insert into mitzvos values (579, 'שלא לגלות ערות אשת אב ואף על פי שאינה אמו', 'Not to reveal the nakedness of one''s father''s wife', 'L');
insert into mitzvos values (580, 'שלא לגלות ערות אחות בכל צד שהיא אחות', 'Not to reveal the nakedness of even one''s half-sister', 'L');
insert into mitzvos values (581, 'שלא לגלות ערות אחות מן האב והיא בת אשת אביו', 'Not to reveal the nakedness of one''s full sister', 'L');
insert into mitzvos values (582, 'שלא לגלות ערות בת הבן', 'Not to reveal the nakedness of one''s son''s daughter', 'L');
insert into mitzvos values (583, 'שלא לגלות ערות בת הבת', 'Not to reveal the nakedness of one''s daughter''s daughter', 'L');
insert into mitzvos values (584, 'שלא לגלות ערות הבת', 'Not to reveal the nakedness of one''s daughter', 'L');
insert into mitzvos values (585, 'שלא לגלות ערות אשה ובתה', 'Not to reveal the nakedness of a woman and her daughter', 'L');
insert into mitzvos values (586, 'שלא לגלות ערות אשה ובת בנה', 'Not to reveal the nakedness of a woman and her son''s daughter', 'L');
insert into mitzvos values (587, 'שלא לגלות ערות אשה ובת בתה', 'Not to reveal the nakedness of a woman and her daughter''s daughter', 'L');
insert into mitzvos values (588, 'שלא לגלות ערות אחות אב', 'Not to reveal the nakedness of one''s father''s sister', 'L');
insert into mitzvos values (589, 'שלא לגלות ערות אחות אם', 'Not to reveal the nakedness of one''s mother''s sister', 'L');
insert into mitzvos values (590, 'שלא לגלות ערות אשת אחי האב', 'Not to reveal the nakedness of one''s father''s brother''s wife', 'L');
insert into mitzvos values (591, 'שלא לגלות ערות אשת הבן', 'Not to reveal the nakedness of one''s son''s wife', 'L');
insert into mitzvos values (592, 'שלא לגלות ערות אשת האח', 'Not to reveal the nakedness of one''s brother''s wife', 'L');
insert into mitzvos values (593, 'שלא לגלות ערות אחות אשתו בחיי אשתו', 'Not to reveal the nakedness of one''s wife''s sister in her lifetime', 'L');
insert into mitzvos values (594, 'שלא לבוא על אשה נדה', 'Not to be intimate with a Niddah', 'L');
insert into mitzvos values (595, 'שלא לגלות ערות אשת איש', 'Not to reveal the nakedness of a married woman', 'L');
insert into mitzvos values (596, 'שלא לשכב עם הבהמות', 'Not to perform beastiality', 'L');
insert into mitzvos values (597, 'שלא תשכבנה הנשים עם הבהמות', 'A woman shouldn''t perform beastiality', 'L');
insert into mitzvos values (598, 'שלא לבוא על הזכרים', 'For a man not be intimate with a man', 'L');
insert into mitzvos values (599, 'שלא לגלות ערות אב', 'Not to reveal the nakedness of one''s father', 'L');
insert into mitzvos values (600, 'שלא לגלות ערות אחי האב', 'Not to reveal the nakedness of one''s father''s brother', 'L');
insert into mitzvos values (601, 'שלא לקרב לעריות בדברים המביאין לידי גילוי ערוה', 'Not to approach someone with whom intimacy is forbidden with acts that lead to it', 'L');
insert into mitzvos values (602, 'שלא ישא ממזר בת ישראל', 'For a Mamzer not to marry a Jewess', 'L');
insert into mitzvos values (603, 'שלא תהיה קדשה מבנות ישראל', 'Not to be with a Kedeisha', 'L');
insert into mitzvos values (604, 'שלא יחזיר המגרש גרושתו אחר שנשאת', 'Not to remarry one''s divorcee if she married an other in the interim', 'L');
insert into mitzvos values (605, 'שלא תנשא היבמה לאחר חוץ מן היבם', 'For a woman awaiting Levirate marriage not to marry an other', 'L');
insert into mitzvos values (606, 'שלא יגרש האונס את אנוסתו', 'For a rapist never to divorce his victim if they married', 'L');
insert into mitzvos values (607, 'שלא יגרש מוציא שם רע את אשתו', 'For a man who slandered his wife never to divorce her', 'L');
insert into mitzvos values (608, 'שלא יקח סריס בת ישראל', 'For someone lacking their male organ not to marry a Jewish woman', 'L');
insert into mitzvos values (609, 'שלא לסרס אחד מכל המינין', 'Not to neuter any species', 'L');
insert into mitzvos values (610, 'שלא למנות מלך על ישראל כי אם מבני ישראל', 'Not to appoint a non-Jew as a King', 'L');
insert into mitzvos values (611, 'שלא ירבה המלך סוסים', 'For the King not to have too many horses', 'L');
insert into mitzvos values (612, 'שלא ירבה לו המלך נשים', 'For the King not to have too many wives', 'L');
insert into mitzvos values (613, 'שלא ירבה לו המלך כסף וזהב לבד מה שצריך לו', 'For the King not to have too much riches', 'L');

-- Chinuch's unique mitzvah
insert into mitzvos values (614, 'שלא להקריב קרבן פסח בבמת יחיד', 'Not to offer the Korbon Pesach on an individual Bamah', 'L');

-- Ramban's unique mitzvos
insert into mitzvos values (615, 'מצות אכילת מעשר שני ובכורות בירושלים', 'To Eat Maaser Sheni and Bechoros in Yerushalayim', 'A');
insert into mitzvos values (616, 'מצות אכילת תרומה כשהיא טהורה ולא בטומאתה', 'To eat Terumah when it is pure and not while it is impure', 'A');
insert into mitzvos values (617, 'מצות קרית שמע בערב', 'Reciting the Shema in the evening', 'A');
insert into mitzvos values (618, 'מצות הקטרת באין הארבים', 'Burning the afternoon incense', 'A');
insert into mitzvos values (619, 'מצות קרבן התמיד בין הערבים', 'The daily afternoon Tamid offering', 'A');
insert into mitzvos values (620, 'מצות עבודת הכהנים בקרבנות', 'The Temple Service of the Kohanim with the offerings', 'A');
insert into mitzvos values (621, 'מצות אכילת פירות שביעית', 'To only eat Shemittah fruit and not sell them', 'A');
insert into mitzvos values (622, 'מצות ישיבת הארץ', 'To settle the land of Israel', 'A');
insert into mitzvos values (623, 'מצות לקיים שבועה של רשות', 'To fulfill a vow to do something voluntary', 'A');
insert into mitzvos values (624, 'מצות להניח אחת מן הרוחות בלי מצור בשעת מלחמה', 'To leave one side of a city during a siege unprotected', 'A');
insert into mitzvos values (625, 'מצות לאכול מן האילנות שבגבולה כל ימי המצור ולא לכרות אותם', 'To enjoy the fruits of the trees surrounding a city under siege and not to destroy them', 'A');	-- Derech Mitzvosecha § 1 explains the Ramban doesn't actually count this as a mitzvah. However, Zohar HaRakiah thinks Ramban does, and counts it himself, so we'll add it to the list.
insert into mitzvos values (626, 'מצות זכירה בפה מעשה מרים', 'To recall with words the story of Miriam', 'A');
insert into mitzvos values (627, 'מצות להיות תמים עם השם', 'To be with pure trust trust in Hashem', 'A');
insert into mitzvos values (628, 'מצות לפרוש תרומה מן היפה', 'To separate Terumah from the best portion', 'A');
insert into mitzvos values (629, 'מצות להקריב רק בקר כשבים או עזים', 'To bring as an offering only cattle, sheep, or goats', 'A');
insert into mitzvos values (630, 'מצות להקריב כל קרבנות בין שני התמידין', 'To offer all offerings between the two Tamid offerings', 'A');
insert into mitzvos values (631, 'מצות אכילת הפסח בלילה', 'To eat the Pesach offering at night', 'A');
insert into mitzvos values (632, 'מצות גואל הדם להרוג הרוצח במזיד', 'For the Goel HaDam to kill an intentional killer', 'A');
insert into mitzvos values (633, 'מצות להרחיק מלהנות בבגד או בית שנראה בו נגע', 'To avoid benefiting from a garment or house which has an affliction', 'A');
insert into mitzvos values (634, 'מצות בירכת התורה', 'To make a blessing on learning Torah', 'A');
insert into mitzvos values (635, 'מצות להחיות גר תושב', 'To support and sustain a Ger Toshav', 'A');
insert into mitzvos values (636, 'מצות להחזיר רבית', 'To return interest', 'A');
insert into mitzvos values (637, 'מצות להרחיק מלהנות משער נזיר', 'To avoid benefiting from the hair of a Nazir', 'A');
insert into mitzvos values (638, 'מצות נתינת תרומה לכהן', 'To give Terumah to the Kohen', 'A');
insert into mitzvos values (639, 'מצות נתינת מעשר ראשון ללוי', 'To give Maaser Sheni to the Levi', 'A');
insert into mitzvos values (640, 'מצות נתינת מעשר עני', 'To give Maaser Ani', 'A');
insert into mitzvos values (641, 'מצות נתינת חלה לכהן', 'To give Chalah to the Kohen', 'A');
insert into mitzvos values (642, 'מצות לעבר השנה', 'To calculate and establish leap years', 'A');
insert into mitzvos values (643, 'מצות עשיית הארון והכפרת', 'To make the Aron and its cover', 'A');
insert into mitzvos values (644, 'מצות ב"ד להרוג מי שמחוייב מיתה', 'For Beis Din to kill those who are liable to death', 'A');
insert into mitzvos values (645, 'מצות לחכם להורות בלי להיות שכורים', 'For a Sage to rule without being intoxicated',  'A');
insert into mitzvos values (646, 'לשחרר עבד כנעני אם הפיל עינו או שינו', 'For a master to free his Caananite slave if he removed his eye or tooth', 'A');
insert into mitzvos values (647, 'לתת לבכור פי שנים', 'To give a first born a double inheritance',  'A');

insert into mitzvos values (648, 'שלא לשכוח השם', 'Not to forget Hashem', 'L');
insert into mitzvos values (649, 'שלא לשכוח מעמד הר סיני', 'Not to forget the giving of the Torah at Sinai', 'L');
insert into mitzvos values (650, 'שלא לשנות הסדר של כלי המקדש', 'Not to change the order of the Temple vessels', 'L');
insert into mitzvos values (651, 'שלא ישא מואבי בת ישראל', 'A Moabite cannot marry a Jewish woman', 'L');
insert into mitzvos values (652, 'שלא לשחוט קרבנות על מנת לאכלם או לעשות עבודתם חוץ למקומם או לזמנם', 'Not to slaughter offerings with intention to eat them or perform their service outside of their location or time', 'L');
insert into mitzvos values (653, 'שלא לאכול קרבנות ששחטן על מנת לאכלן או להקריבן חוץ למקומן', 'Not to eat offerings which were slaughtered with intention to eat them or perform their service outside of their location', 'L');
insert into mitzvos values (654, 'שלא לאכול הצפור ששחטו אותה לטהרת המצורע', 'Not to eat of the bird slaughtered for the Metzora''s purification', 'L');
insert into mitzvos values (655, 'שלא להקריב דבש', 'Not to offer honey', 'L');
insert into mitzvos values (656, 'שלא להקריב מחיר כלב', 'Not to offer the exchange for a dog', 'L');
insert into mitzvos values (657, 'שלא לאכול הפסח מבושל', 'Not to eat the Pesach offering boiled', 'L');
insert into mitzvos values (658, 'שלא ירימו הלויים תרומת מעשר מן הרע שבו אלא היפה', 'For the Leviim not to separate Terumas Maaser from the bad, rather from the good', 'L');
insert into mitzvos values (659, 'שלא נקבל שקלים מן הגוים ולא נצרף אותם עמנו בקרבנות הציבור', 'Not to accept money from non-Jews or combine them with ours for communal offerings', 'L');
insert into mitzvos values (660, 'שלא לקבל עדות מיוחדת בדיני נפשות', 'Not to accept non-unified testimony for capital cases', 'L');
insert into mitzvos values (661, 'שלא יבוא האיש הירא ורך הלבב במלחמה', 'For a fearful person not to join in a war', 'L');
insert into mitzvos values (662, 'שלא לעשות דבר שיסלק השכינה בזמן מלחמה', 'Not to do things which remove the Divine Presence during wartime', 'L');
insert into mitzvos values (663, 'שלא להעביר הבכורה מן הבן הגדול', 'Not to withold the double inheritance from a firstborn', 'L');
insert into mitzvos values (664, 'שלא לחמול על נפש הרוצח במזיד', 'Not to have mercy on an intentional killer', 'L');
insert into mitzvos values (665, 'שלא יבא החולץ על יבמתו', 'For someone who performed chalitzah not to lie with her afterwards', 'L');
insert into mitzvos values (666, 'שלא יבוא איש על אשתו שזנתה תחתיו', 'Not to lie with one''s wife who committed adultery', 'L');
insert into mitzvos values (667, 'שלא יחר בעינינו בשלחנו העבדים חפשים בשנה השביעית', 'Not to be upset about seeing our slaves free in their seventh year', 'L');
insert into mitzvos values (668, 'שלא לענות אלמנה', 'Not to oppress a widow', 'L');
insert into mitzvos values (669, 'שלא להרוג צדיק בדין', 'Not to execute someone who was acquitted', 'L');
insert into mitzvos values (670, 'שלא יחר בעינינו בתתנו צדקה לעניים', 'Not to be upset about giving tzedaka to the poor', 'L');
insert into mitzvos values (671, 'שלא לגנוב כלי שרת מכלי המקדש', 'Not to steal any Temple vessel', 'L');
insert into mitzvos values (672, 'שלא ישא לוי ארון הקדש בכתף מבן חמשים שנה', 'For a Levi not to carry the Aron Kodesh on his shoulders from the age of fifty', 'L');
insert into mitzvos values (673, 'שלא תחטיא ב"ד הארץ להניח מחזיר גרושתו', 'For Beis Din not to ignore someone who remarried his divorcee', 'L');
insert into mitzvos values (674, 'שלא יזנה איש הארץ בזנות', 'For a man not to profane the land with illicit relations', 'L');
insert into mitzvos values (675, 'שלא יחלל כהן גדול המקדש בצאתו מהעבודה מפני אבל', 'For a Kohen Gadol not to defile the Temple by leaving his service due to mourning', 'L');
insert into mitzvos values (676, 'שלא תטמא ב"ד את הארץ בלינת המת', 'For Beis Din not to profane the land by leaving a corpse hanging', 'L');
insert into mitzvos values (677, 'שלא לחלוק על הכהונה', 'Not to dispute the Kehuna', 'L');
insert into mitzvos values (678, 'שלא להנות מעגלה ערופה ופטר חמור', 'Not to benefit from the beheaded calf or firstborn of a donkey', 'L');
-- Four more unique mitzvos of the Ramban which were forgotten are below (1020-1023)

-- Semag's unique mitzvos
insert into mitzvos values (679, 'מצות צדקות הדין על כל מאורע ויחשוב כי הכל לטובתו', 'To consider everything that happens to you to be for the good', 'A');
insert into mitzvos values (680, 'מצות חישוב תקופות מזלות ומולדות ולעבר השנים', 'To calculate the constellations, new moons and leap years', 'A');
insert into mitzvos values (681, 'מצות הרחקה מן השקר', 'To distance oneself from falsehood', 'A');

insert into mitzvos values (682, 'שלא לנסות את השם', 'Not to test Hashem', 'L');	-- Not considered by Derech Mitzvosecha II as a unique mitzvah
insert into mitzvos values (683, 'שלא לפרוש מן התורה', 'Not to remove oneself from the Torah', 'L');
insert into mitzvos values (684, 'שלא לעבוד עבודה זרה דרך כבוד אפילו אין דרך עבודתה בכך', 'Not to serve idols in an honorary way, even if its not its normal form of service', 'L');
insert into mitzvos values (685, 'שלא להקים פסל', 'Not to set up a statue', 'L');
insert into mitzvos values (686, 'שלא יתגאו בני ישראל', 'For a Jew not to become haughty', 'L');
insert into mitzvos values (687, 'שלא ישא איש ישראל שפחה ולא תנשא בת ישראל לעבד', 'For a Jewish man not to marry a maidservant, nor a Jewish woman a slave', 'L');
insert into mitzvos values (688, 'שלא ישא מי שנכרת הגיד שלו בת ישראל', 'For someone lacking their corona not to marry a Jewish woman', 'L');
insert into mitzvos values (689, 'שלא להחזיק במחלוקת', 'Not to encourage contention', 'L');
insert into mitzvos values (690, 'שלא לחבול רכב', 'Not to take an upper millstone as collateral', 'L');
insert into mitzvos values (691, 'שלא לקלל את עצמו', 'Not to curse oneself', 'L');
insert into mitzvos values (692, 'שלא יכנס כהן הדיוט באהל המת', 'For a regular Kohen not to enter a tent that contains a corpse', 'L');
insert into mitzvos values (693, 'שלא לאכול קדשים באנינות', 'Not to eat holy food while mourning', 'L');
insert into mitzvos values (694, 'שלא לאכול ערל תרומה', 'For someone uncircumsized not to eat Terumah', 'L');

-- Bahag's unique mitzvos
insert into mitzvos values (695, 'שלא לבא על נערה המאורסה', 'Not to lie with a betrothed maiden', 'L');
insert into mitzvos values (696, 'שלא לבא על חמותו', 'Not to lie with one''s mother-in-law', 'L');
insert into mitzvos values (697, 'שלא לבא על אם חמותו', 'Not to lie with one''s mother-in-law''s mother', 'L');
insert into mitzvos values (698, 'שלא לבא על אם חמיו', 'Not to lie with one''s father-in-law''s mother', 'L');
insert into mitzvos values (699, 'שלא תזנה בת כהן עם ערוה', 'For the daughter of a Kohen not to engage in illicit relations', 'L');
insert into mitzvos values (700, 'שלא יעבוד רוב העיר עבודה זרה', 'For most of a city not to worship idols', 'L');
insert into mitzvos values (701, 'שלא למרות כנגד הבית דין', 'Not to be rebellious against the Jewish Court', 'L');
insert into mitzvos values (702, 'שלא תבאור אשת איש עם איש זר', 'For a married woman not to commit adultery', 'L');
insert into mitzvos values (703, 'שלא לזמם על בת כהן שהיא זנתה', 'Not to scheme against the daughter of a Kohen by testifying that she commited adultery', 'L');
insert into mitzvos values (704, 'שלא לבא על בת כהן שהיא אשת איש', 'Not tot commit adultery with the daughter of a Kohen', 'L');
insert into mitzvos values (705, 'שלא ישמש מחוסר כפורים במקדש', 'Not to serve in the Temple without the requisite atonement for impurity', 'L');
insert into mitzvos values (706, 'שלא ישמש בלי ריחוץ ידים ורגלים', 'Not to serve in the Temple without ritual hand and feet washing', 'L');
insert into mitzvos values (707, 'שלא ילין לבקר זבח חג הפסח', 'Not to leave the Pesach Chagigah offering overnight', 'L');
insert into mitzvos values (708, 'שלא יראה לך שאר בימי פסח', 'Not to have leaven in one''s posession on Pesach', 'L');
insert into mitzvos values (709, 'שלא לשלם אוכל בריבית', 'Don''t pay interest with food', 'L');
insert into mitzvos values (710, 'שלא ישמע שם עבודה זרה על פינו', 'Not to have the names of idols heard by our mouths', 'L');
insert into mitzvos values (711, 'שלא לעשות כמעשה מצרים', 'Not to act like the Egyptians act', 'L');
insert into mitzvos values (712, 'שלא יבדיל עולה בכפניו', 'Not to split open an Olah offering by its wings', 'L');
insert into mitzvos values (713, 'שלא ליכנס כהן למקדש בראשו פרוע', 'For a Kohen not to enter the Temple with long hair', 'L');
insert into mitzvos values (714, 'שלא ליכנס כהן למקדש בבגדים פרומים', 'For a Kohen not to enter the Temple with torn clothing', 'L');
insert into mitzvos values (715, 'שלא יטמא בעל בעמיו להחלו', 'For a Kohen not to defile himself for his profaned wife', 'L');
insert into mitzvos values (716, 'שלא יקרחו קרחה בראשם למת', 'Not to tear hair out of one''s head in mourning', 'L');
insert into mitzvos values (717, 'שלא לגלח פאת הזקן', 'Not to shave the corner''s of one''s beard', 'L');
insert into mitzvos values (718, 'שלא ישרטו שרטת למת', 'Not to cut oneself in mourning', 'L');
insert into mitzvos values (719, 'שלא ישמש כהן טבול יום', 'For a Kohen not to serve in the Temple after going to the mikveh before the sun sets', 'L');
insert into mitzvos values (720, 'שלא יפרע כהן שערו', 'For the Kohen Gadol not to have long hair', 'L');
insert into mitzvos values (721, 'שלא יפרום כהן גדול בגדיו', 'For the Kohen Gadol not to have torn clothing', 'L');
insert into mitzvos values (722, 'שלא יגש כהן בעל מום למזבח', 'For a blemished Kohen not to approach the altar', 'L');
insert into mitzvos values (723, 'שלא יאכל טמא תרומה טמאה', 'For someone impure not to eat impure Terumah', 'L');
insert into mitzvos values (724, 'שלא לסוך או לשתות תרומה', 'Not to annoint or drink untithed produce', 'L');
insert into mitzvos values (725, 'שלא לאכול חגב שאין לה סימני כשרות', 'Not to eat a grasshopper that doesn''t have the signs of kashrus', 'L');
insert into mitzvos values (726, 'שלא יעלה בגד שעטנז עליך', 'Not to put a garment of wool and linen upon you', 'L');
insert into mitzvos values (727, 'שלא תאכלו על הדם', 'Not to eat upon the blood', 'L');
insert into mitzvos values (728, 'שלא להקדיש בעל מום', ' Not to sanctify an animal with a blemish', 'L');
insert into mitzvos values (729, 'שלא להקדיש בעל מום שבפנים או אינו בגלוי', 'Not to sanctify an animal with an internal or hidden blemish', 'L');
insert into mitzvos values (730, 'שלא ישתה נזיר משרת ענבים', 'For a Nazir not to drink something soaked in grapes', 'L');
insert into mitzvos values (731, 'שלא להחניף', 'Not to flatter', 'L');
insert into mitzvos values (732, 'שלא יסום עין היחיד עלה שבע אומות', 'For an individual not to pity the Seven Nations', 'L');
insert into mitzvos values (733, 'שלא יאמר בצדקתי הביאני ה'' לרשת את-הארץ', 'Don''t say because of my righteousness Hashem bestowed this land', 'L');
insert into mitzvos values (734, 'שלא להשקות ערפכם עוד', 'To no longer stiffen your neck', 'L');
insert into mitzvos values (735, 'שלא להקריב חובות על במת יחיד', 'Not to bring obligation offerings on a personal altar', 'L');
insert into mitzvos values (736, 'שלא לאכול מעשר, בכורות חוץ לירושלים, חטאת ואשם חוץ לקלעים, בשר עולה, קדשי קלים קודם זריקה, ובכורים קודם הנחה ', 'Not to eat Maaser or Bechoros outside Yerushalayim, Chataos or Ashamos outside the Temple confines, the meat of an Olah, Kodshei Kalim before throwing the blood, or Bikkurim before placing them', 'L');
insert into mitzvos values (737, 'שלא יעזב הלוי', 'Not to abandon the Levites', 'L');
insert into mitzvos values (738, 'שלא יעשו אגודות אגודות', 'Not to divide into different groups', 'L');
insert into mitzvos values (739, 'שלא תקפץ את ידך מליתן צדקה', 'Don''t clasp your hand from giving charity', 'L');
insert into mitzvos values (740, 'שלא יאמר דיין איש פלוני קרובי', 'For a judge not to say that this litigant is his friend', 'L');
insert into mitzvos values (741, 'שלא יאמר דיין איש פלוני עני', 'For a judge not to say that this litigant is poor', 'L');
insert into mitzvos values (742, 'שלא יזידון עוד', 'Not to continue to wantonly sin', 'L');
insert into mitzvos values (743, 'שלא ישיב המלך העם למצרים', 'For the King not to return the people to Egypt', 'L');
insert into mitzvos values (744, 'שלא תוסיפון לשוב למצרים', 'Not to return to Egypt again', 'L');
insert into mitzvos values (745, 'שלא לכרות אילני מאכל', 'Not to cut down fruit-bearing trees', 'L');
insert into mitzvos values (746, 'שלא יזרע נחל איתן', 'Not to sew on the land where the beheaded calf occured', 'L');
insert into mitzvos values (747, 'שלא תראה שורו נדחים', 'Not to see someone''s ox straying [and ignore it]', 'L');
insert into mitzvos values (748, 'שלא יבוא על אנוסת אביו', 'Not to be with a women who was raped by one''s father', 'L');
insert into mitzvos values (749, 'שלא יבוא עמוני ומואבי בקהל עד עולם', 'For an Ammonite and Moabite to never enter the congregation', 'L');
insert into mitzvos values (750, 'שלא ישא איש ישראל שפחה', 'For a Jewish man not to marry a maidservant', 'L');
insert into mitzvos values (751, 'שלא יעבר חתן לכל דבר כל שנה ראשונה', 'For a newly married man not to do any army work for the first year', 'L');
insert into mitzvos values (752, 'שלא לעשק שכיר', 'Not to withold wages from an employee', 'L');
insert into mitzvos values (753, 'שלא לאחר שכיר לילה עד הלילה שאחריו', 'Not to delay paying a night worker until the next night', 'L');
insert into mitzvos values (754, 'שלא ליטול כל תפארת זיתיך', 'Not to take all the splendor from your olives' ,'L');
insert into mitzvos values (755, 'שלא יהיה בביתך איפה גדולה או קטנה', 'Not to have an inaccurate dry measure in your house', 'L');
insert into mitzvos values (756, 'שלא להניף על המזבח ברזל', 'Not to use metal in constructing the altar', 'L');
insert into mitzvos values (757, 'שלא תסור מכל הדברים שציווה הקב"ה', 'Not to sway from all that Hashem commanded', 'L');
-- Another unique mitzvah forgot to add for the Bahag is below 932

insert into mitzvos values (758, 'מצות נתינת עורות קדשים לכהנים', 'To give the hides of offerings to Kohanim', 'A');
insert into mitzvos values (759, 'מצות נתינת המורם תרומה מתודה לכהנים', 'To give the separated limbs of the Todah offering to the Kohanim', 'A');
insert into mitzvos values (760, 'מצות נתינת חזה ושוק לכהנים', 'To give the breast and thigh of offerings to the Kohanim', 'A');
insert into mitzvos values (761, 'מצות לעבד השם', 'To serve Hashem', 'A');
insert into mitzvos values (762, 'מצות הלבשת ערומים', 'To clothe the naked', 'A');
insert into mitzvos values (763, 'מצות קבורת מתים', 'To bury the deceased', 'A');
insert into mitzvos values (764, 'מצות ניחום אבילים', 'To comfort those in mourning', 'A');
insert into mitzvos values (765, 'מצות ביקור חולים', 'To visit the sick', 'A');
insert into mitzvos values (766, 'מצות אהבת שלום אמת וצדק', 'To love peace, truth, and justice', 'A');
-- To learn Torah is below, 851
insert into mitzvos values (767, 'מצות ללמד תורה', 'To teach Torah', 'A');
insert into mitzvos values (768, 'מצות שמירת התורה', 'To guard the Torah', 'A');
insert into mitzvos values (769, 'מצות עשיית התורה', 'To fulfill the Torah', 'A');
insert into mitzvos values (770, 'מצות שמירת שבת', 'To guard the Shabbos', 'A');
insert into mitzvos values (771, 'מצות שמחת שבת', 'To rejoice on Shabbos', 'A');
insert into mitzvos values (772, 'מצות עונג שבת', 'To delight in Shabbos', 'A');
insert into mitzvos values (773, 'מצות החית האח', 'To sustain a comrade', 'A');
insert into mitzvos values (774, 'מצות שכחה בכרם', 'To leave over forgotten grapes', 'A');
insert into mitzvos values (775, 'מצות פאה בכרם', 'To leave over a corner of a vineyard', 'A');
insert into mitzvos values (776, 'מצות שכחה באילן', 'To leave over forgotten fruit in a tree', 'A');	-- To leave over a corner of the fruit in a tree is #897
insert into mitzvos values (777, 'מצות מתנה במתנת ידך', 'The gift based on your generosity', 'A');
insert into mitzvos values (778, 'מצות נתינת צדקה הרבה פעמים', 'To constantly give charity', 'A');
insert into mitzvos values (779, 'מצות נתינת צדקה בסתר', 'To give charity discreetly', 'A');
insert into mitzvos values (780, 'מצות נתינת צדקה בתחילה לשום הלאווה ולבסוף במתנה', 'To give charity initially as a loan and subsequently as a gift', 'A');
insert into mitzvos values (781, 'מצות ללמד בנים בתורה ומצוות', 'To teach one''s son Torah and Mitzvos', 'A');
insert into mitzvos values (782, 'מצות שיהיו דברי תורה מחודדין בפיך', 'To have words of Torah be readily avaiable', 'A');
insert into mitzvos values (783, 'מצות שימת דברי השם על לבבכם ועל נפשכם', 'To place Hashem''s words on your heart and soul', 'A');
insert into mitzvos values (784, 'מצות שמירת פסח שבעת ימים', 'To guard Pesach seven days', 'A');
--insert into mitzvos values (785, 'מצות קידוש בשבת', 'Kiddush on Shabbos', 'A');	-- Added by mistake. This mitzvah is already above #155
insert into mitzvos values (786, 'מצות קידוש בראשון של פסח', 'Kiddush on the First of Pesach', 'A');
insert into mitzvos values (787, 'מצות קידוש בשביעי של פסח', 'Kiddush on the Seventh of Pesach', 'A');
insert into mitzvos values (788, 'מצות קידוש בשבועות', 'Kiddush on Shavuos', 'A');
insert into mitzvos values (789, 'מצות קידוש בראש השנה', 'Kiddush on Rosh Hashanah', 'A');
insert into mitzvos values (790, 'מצות קידוש ביום הכפורים', 'Kiddush on Yom Kippur', 'A');
insert into mitzvos values (791, 'מצות קידוש ביום ראשון של סוכות', 'Kiddush on the First of Sukkos', 'A');
insert into mitzvos values (792, 'מצות קידוש ביום שמיני של סוכות', 'Kiddush on the Eighth of Sukkos', 'A');
insert into mitzvos values (793, 'מצות הלל בליל פסח', 'Hallel on Pesach night', 'A');
insert into mitzvos values (794, 'מצות הלל ביום ראשון של פסח', 'Hallel on the First day of Pesach', 'A');
insert into mitzvos values (795, 'מצות הלל ביום שבועות', 'Hallel on Shavuos', 'A');
insert into mitzvos values (796, 'מצות הלל ביום ראשון של סוכות', 'Hallel on the First of Sukkos', 'A');
insert into mitzvos values (797, 'מצות הלל ביום שני של סוכות', 'Hallel on the Second of Sukkos', 'A');
insert into mitzvos values (798, 'מצות הלל ביום שלישי של סוכות', 'Hallel on the Third of Sukkos', 'A');
insert into mitzvos values (799, 'מצות הלל ביום רביעי של סוכות', 'Hallel on the Fourth of Sukkos', 'A');
insert into mitzvos values (800, 'מצות הלל ביום חמישי של סוכות', 'Hallel on the Fifth of Sukkos', 'A');
insert into mitzvos values (801, 'מצות הלל ביום שישי של סוכות', 'Hallel on the Sixth of Sukkos', 'A');
insert into mitzvos values (802, 'מצות הלל ביום שביעי של סוכות', 'Hallel on the Seventh of Sukkos', 'A');
insert into mitzvos values (803, 'מצות הלל ביום שמיני עצרת', 'Hallel on Shemini Atzeres', 'A');
insert into mitzvos values (804, 'מצות הלל ביום ראשון של חנוכה', 'Hallel on the First of Chanukah', 'A');
insert into mitzvos values (805, 'מצות הלל ביום שני של חנוכה', 'Hallel on the Second of Chanukah', 'A');
insert into mitzvos values (806, 'מצות הלל ביום שלישי של חנוכה', 'Hallel on the Third of Chanukah', 'A');
insert into mitzvos values (807, 'מצות הלל ביום רביעי של חנוכה', 'Hallel on the Fourth of Chanukah', 'A');
insert into mitzvos values (808, 'מצות הלל ביום חמישי של חנוכה', 'Hallel on the Fifth of Chanukah', 'A');
insert into mitzvos values (809, 'מצות הלל ביום שישי של חנוכה', 'Hallel on the Sixth of Chanukah', 'A');
insert into mitzvos values (810, 'מצות הלל ביום שביעי של חנוכה', 'Hallel on the Seventh of Chanukah', 'A');
insert into mitzvos values (811, 'מצות הלל ביום שמיני של חנוכה', 'Hallel on the Eighth of Chanukah', 'A');
insert into mitzvos values (812, 'מצות לגדע אשרות אלילים', 'To cut down trees of idol worship', 'A');
insert into mitzvos values (813, 'מצות לאכול קדשים בירושלים', 'To eat kodshim in Jerusalem', 'A');
insert into mitzvos values (814, 'מצות לשבות עבדך ואמתך ובהמתך כמוך', 'To have your servants and animals rest on Shabbos', 'A');
insert into mitzvos values (815, 'מצות לשמוח לוי גר ואלמנה בשלש רגלים', 'To make the Levites, Orphans, and Widows joyous on Yom Tov', 'A');
insert into mitzvos values (816, 'מצות שילום חומש אם פודה נטע רבעי או מעשר שני', 'To pay an extra fifth if redeeming fruit from the fourth year or Maaser Sheni', 'A');
insert into mitzvos values (817, 'מצות שילום חומש אם פודה הקדש', 'To pay an extra fifth if redeeming sanctified property', 'A');
insert into mitzvos values (818, 'מצות שילום חומש אם נהנה מהקדש', 'To pay an extra fifth if one benefitted from sanctified property', 'A');
insert into mitzvos values (819, 'מצות שילום חומש אם גזל מחברו ונשבע לשקר', 'To pay an extra fifth if one stole from another and swore falsely', 'A');
insert into mitzvos values (820, 'מצות נר שבת', 'Shabbos candles', 'A');
insert into mitzvos values (821, 'מצות נר חנוכה', 'Chanukah candles', 'A');
insert into mitzvos values (822, 'מצות ליתן נבלה לגר תושב', 'To give an animal carcass to a resident alien', 'A');
insert into mitzvos values (823, 'מצות לאהוב משפט', 'To love justice', 'A');
insert into mitzvos values (824, 'מצות לרדוף צדק', 'To pursue justice', 'A');
insert into mitzvos values (825, 'מצות לגמול חסד', 'To bestow loving kindness', 'A');
insert into mitzvos values (826, 'מצות לשמוח כלה', 'To gladden a bride', 'A');
insert into mitzvos values (827, 'מצות יראת חכמים', 'To fear Sages', 'A');
insert into mitzvos values (828, 'מצות שילום מדות', 'To complete measures', 'A');
insert into mitzvos values (829, 'מצות ביעור שביעית', 'To remove unavaiable produce during the seventh year', 'A');
insert into mitzvos values (830, 'מצות להיות קודש מלאכול שרצים ורמשים', 'To sanctify ourselves from eating bugs and critters', 'A');
insert into mitzvos values (831, 'מצות להיות שפל רוח', 'To be of a meek spirit', 'A');
insert into mitzvos values (832, 'מצות להדר פני זקן', 'To honor the presence of an elder', 'A');
insert into mitzvos values (833, 'מצות להביא קרבנות שמחיוב בהם משום חטא', 'To bring offerings which are obligatory after certain sins', 'A');
insert into mitzvos values (834, 'מצות כהן גדול להביא פר אם שיגג בהוראה', 'For the Kohen Gadol to bring a bull offering if he erred in a ruling', 'A');
insert into mitzvos values (835, 'מצות כהן גדול להביא פר ביום הכפורים', 'For the Kohen Gadol to bring a bull offering on Yom Kippur', 'A');
insert into mitzvos values (836, 'מצות להביא עשירית האיפה לחינוך', 'To bring a tenth of an eiphah for inauguration', 'A');
insert into mitzvos values (837, 'מצות עבודת יום הכפורים', 'The Yom Kippur Temple service', 'A');
insert into mitzvos values (838, 'מצות יציקת שמן במנחות', 'Pouring the oil for meal offerings', 'A');
insert into mitzvos values (839, 'מצות בלילת שמן במנחות', 'Mixing the oil for meal offerings', 'A');
insert into mitzvos values (840, 'מצות פתית פתי המנחות', 'To break the loaves of the meal offerings into pieces', 'A');
--insert into mitzvos values (841, 'מצות מליחת הקרבנות', 'To salt offerings', 'A');	-- Added by mistake. This mitzvah is already above #62
insert into mitzvos values (842, 'מצות תנופת הקרבנות', 'To wave offerings', 'A');
insert into mitzvos values (843, 'מצות הגשת הקרבנות', 'To bring offerings to the altar', 'A');
insert into mitzvos values (844, 'מצות קמיתת המחחות', 'To gather a portion of the meal offering', 'A');
insert into mitzvos values (845, 'מצות הקטרת הקרבנות', 'To burn offerings on the altar', 'A');
insert into mitzvos values (846, 'מצות שחיטת הקרבנות', 'To slaughter offerings', 'A');
insert into mitzvos values (847, 'מצות מליקת הקרבנות', 'To slaughter bird offerings from behind the neck', 'A');
insert into mitzvos values (848, 'מצות קבלות הקרבנות', 'To capture the blood of offerings', 'A');
insert into mitzvos values (849, 'מצות הזאת הקרבנות', 'To sprinkle the blood of offerings', 'A');
insert into mitzvos values (850, 'מצות מקרא מגילה', 'To read Megillas Esther on Purim', 'A');
insert into mitzvos values (851, 'מצות ללמוד תורה', 'To learn Torah', 'A');

-- Parshiyos
insert into mitzvos values (852, 'פרשת סנהדרין וכלול נפשות ממונות ועבדים', 'Sanhedrin, which includes capital cases, monetary, and slaves', 'A');
insert into mitzvos values (853, 'פרשת דיני נזיקין', 'Damages', 'L');
insert into mitzvos values (854, 'פרשת בניין המקדש ועשיית בגדים וחינוכם', 'Building the Temple, making the garments, and inaugurating them', 'A');
insert into mitzvos values (855, 'פרשת השמן המשחה וקטורת', 'The annointing oil and incense', 'A');
insert into mitzvos values (856, 'פרשת תחנונים', 'Supplication', 'A');
insert into mitzvos values (857, 'פרשת עולות מנחות ושלמים', 'Olos, Menachos, and Shelamim', 'A');
insert into mitzvos values (858, 'פרשת מעילה', 'Misappropriation of Temple property', 'L');
insert into mitzvos values (859, 'פרשת טומאת וטהרת נבילות שרצים אדם כלים אוכילן ומשקין', 'Impurity and Purification of carcasses, critters, man, vessels, food and drink', 'L');
insert into mitzvos values (860, 'פרשת יולדת', 'Impurity of birth', 'L');
insert into mitzvos values (861, 'פרשת נגעים', 'Tzaraas', 'L');
insert into mitzvos values (862, 'פרשת טומאת זיבות נידות ושכבת זרע', 'Impurity of emissions', 'L');
insert into mitzvos values (863, 'פרשת שפחה חרופה', 'Shifchah Charufah', 'L');
insert into mitzvos values (864, 'פרשת ערלה', 'Fruit of a tree in its first three years', 'L');
insert into mitzvos values (865, 'פרשת מומי בהמה', 'Blemishes of animals for offerings', 'L');
insert into mitzvos values (866, 'פרשת נדברים ונדבות', 'Voluntary and Obligatory offerings', 'A');
insert into mitzvos values (867, 'פרשת חבלות', 'Injuring another', 'L');
insert into mitzvos values (868, 'פרשת ערכין', 'Donating set-values to the Temple', 'A');
insert into mitzvos values (869, 'פרשת מקדיש וחרמים', 'Sanctifying and designating property to the Temple', 'A');
insert into mitzvos values (870, 'פרשת מחנות ודגלים', 'Three camps and tribal arrangements', 'A');
insert into mitzvos values (871, 'פרשת סוטה', 'Sotah', 'A');
insert into mitzvos values (872, 'פרשת נזיר', 'Nazir', 'A');
insert into mitzvos values (873, 'פרשת ברכת כהנים', 'Priestly Blessing', 'A');
insert into mitzvos values (874, 'פרשת חנוכת מזבח', 'Inauguration of the Altar', 'A');
insert into mitzvos values (875, 'פרשת נסכים', 'Libations', 'A');
insert into mitzvos values (876, 'פרשת מתנות כהונה', 'Priestly gifts', 'A');
insert into mitzvos values (877, 'פרשת עשרים מוספים', 'Twenty Mussaf offerings', 'A');
insert into mitzvos values (878, 'פרשת נדרים ושבועות', 'Vows and Oaths', 'A');	
insert into mitzvos values (879, 'פרשת תרומת המכס', 'Separating taxes', 'A');
insert into mitzvos values (880, 'פרשת הלוקח כלי תשמיש מן הגוים', 'Taking a utensil from a non-Jew', 'A');
insert into mitzvos values (881, 'פרשת נביא שקר', 'A false prophet', 'L');
insert into mitzvos values (882, 'פרשת עיר הנדחת', 'A idol worshipping city', 'L');
insert into mitzvos values (883, 'פרשת עדים זוממין', 'Conniving witnesses', 'L');
insert into mitzvos values (884, 'פרשת עגלה ערופה', 'The beheaded calf', 'A');
insert into mitzvos values (885, 'פרשת משפט הבכורה', 'Inheritance of the firstborn', 'A');
insert into mitzvos values (886, 'פרשת בן סורר ומורה', 'The wayward and rebellious son', 'L');
insert into mitzvos values (887, 'פרשת מוציא שם רע', 'The slanderous husband', 'L');
insert into mitzvos values (888, 'פרשת אונס ומפתה', 'Rapists and Seducers', 'L');
insert into mitzvos values (889, 'פרשת יבמין', 'Levirate marriages', 'A');
insert into mitzvos values (890, 'פרשת שולחת יד במבושיו', 'Pursuer', 'L');
insert into mitzvos values (891, 'פרשת בכורים', 'First fruits', 'A');
insert into mitzvos values (892, 'פרשת אבנים גדולות', 'Writing the Torah on large stones', 'A');
insert into mitzvos values (893, 'פרשת ברכות וקללות', 'Blessings and Curses', 'A');
insert into mitzvos values (894, 'פרשת הקהל', 'Hakhel', 'A');

-- Rashbag's unique mitzvos
insert into mitzvos values (895, 'מצות ודרבת בם בשבתך בביתך', 'To speak words of Torah while sitting in your house', 'A');
insert into mitzvos values (896, 'מצות מאה ברכות בכל יום', 'To make one hundred blessings every day', 'A');
insert into mitzvos values (897, 'מצות פאת האילן', 'To leave over the corner of the fruit in a tree', 'A');
insert into mitzvos values (898, 'מצות שריפת פיגול', 'To burn Piggul', 'A');
insert into mitzvos values (899, 'מצות טהרת נגעי בגדים', 'The purification of blemished clothing', 'A');
insert into mitzvos values (900, 'מצות טהרת נגעי בתים', 'The purification of blemished houses', 'A');
insert into mitzvos values (901, 'מצות בגדי שרד', 'Garments of the Kohanim', 'A');
insert into mitzvos values (902, 'מצות שמן זית זך', 'Pure olive oil for the Menorah', 'A');
insert into mitzvos values (903, 'מצות מלאכת קטורת', 'Production of the incense', 'A');
insert into mitzvos values (904, 'מצות דיני ממונות', 'Civil laws', 'A');
insert into mitzvos values (905, 'מצות דיני נפשות', 'Capital laws', 'A');
insert into mitzvos values (906, 'מצות נזיקין', 'Laws of Damages', 'A');
insert into mitzvos values (907, 'מצות מניחת מידה אחת בבית', 'To own a single measure', 'A');
insert into mitzvos values (908, 'מצות עבד עברי מוכר עצמו ומכרוהו ב"ד ונמכר לגוי', 'A Hebrew slave who sells himself, is sold by the court, or sold to a non-Jew', 'A');
insert into mitzvos values (909, 'מצות צאת עבד עברי ביובל', 'The release of a Hebrew slave in the Jubilee year', 'A');
insert into mitzvos values (910, 'מצות צאת עבד עברי מיתת האדון', 'The release of a Hebrew slave with the death of his owner', 'A');
insert into mitzvos values (911, 'מצות צאת אמה עבריה ביובל', 'The release of a Hebrew maidservant in the Jubilee year', 'A');
insert into mitzvos values (912, 'מצות צאת אמה עבריה אחר שש שנים', 'The release of a Hebrew maidservant after six years', 'A');
insert into mitzvos values (913, 'מצות שפחה חרופה', 'Shifchah Charufah', 'A');
insert into mitzvos values (914, 'מצות טהרה במי מקווה ולא שאובים', 'To immerse in Mikveh water and not drawn water', 'A');
insert into mitzvos values (915, 'מצות טהרת מחוסר כיפורים בקרבן', 'The purification of the four that need atonement with an offering', 'A');
insert into mitzvos values (916, 'מצות טומאת האדם', 'Impurity of Humans', 'A');
insert into mitzvos values (917, 'מצות טומאת כלים', 'Impurity of vessels', 'A');
insert into mitzvos values (918, 'מצות טומאת משקין', 'Impurity of liquids', 'A');
insert into mitzvos values (919, 'מצות טומאת זה וזבה', 'Impurity of a Zav or Zavah', 'A');
insert into mitzvos values (920, 'מצות בועל נדה', 'Impurity of one who is intimate with a Niddah', 'A');
insert into mitzvos values (921, 'מצות נסוך המים', 'Water Libations', 'A');
insert into mitzvos values (922, 'מצות טבילת יולדת', 'The immersion of a woman who gave birth', 'A');
insert into mitzvos values (923, 'מצות הנפת חזה השלמים', 'To wave the breast meat of a Shelamim offering', 'A');
insert into mitzvos values (924, 'מצות הריגת מסית', 'To execute a seducer to idol worship', 'A');
insert into mitzvos values (925, 'מצות הריגת נביא שקר', 'To execute a false prophet', 'A');
insert into mitzvos values (926, 'מצות הענשת מוציא שם רע מאה כסף', 'To punish a slanderer to pay his wife one-hundred shekels', 'A');
insert into mitzvos values (927, 'מצות הזאת מצורע', 'To sprinkle a Metzora with blood to purify him', 'A');
insert into mitzvos values (928, 'מצות הריגת מדיח', 'To execute a seducer of the masses to idol worship', 'A');
insert into mitzvos values (929, 'מצות תשלום חמשה דברים', 'Paying the five payments for injuring another', 'A');

insert into mitzvos values (930, 'שלא יריח בשמים שעל אשת איש', 'Not to smell the perfume of a married woman', 'L');
insert into mitzvos values (931, 'שלא ימצא בנו מעביר בנינו באש קסם קסמים מעונן ומנחש ומכשף וחבר חבר ושאל אוב ודרש אל התים', 'Not to be found amongst us those who pass their children through fire, perform charms, divine the future, recite incantations, seek the Ov or Yidoni, or communicate with the dead', 'L');
insert into mitzvos values (932, 'שלא לשאת פני דל', 'Not to favor a poor person un judgment', 'L');	-- Really belongs with Bahag's unique mitzvos
insert into mitzvos values (933, 'שלא להנות מתקרובת עבודה זרה', 'Not to benefit from something offered to an idol', 'L');
insert into mitzvos values (934, 'שלא יעשה מדרגות למזבח', 'Not to build steps to go up the Altar', 'L');
insert into mitzvos values (935, 'שלא ילין אימורי שאר הקרבנות בלילה', 'Not to leave over the parts of offerings overnight', 'L');

-- Zohar HaRakiyah's unique mitzvos
insert into mitzvos values (970, 'מצות תוספת שביתה', 'To accept Shabbos and Yom Tov early', 'A');
insert into mitzvos values (971, 'מצות ראיית הציצית', 'To stare at the Tzitzis', 'A');
insert into mitzvos values (972, 'מצות זכירת יציאת מצרים', 'To recall the Exodus from Egypt', 'A');
insert into mitzvos values (973, 'מצות לתרום מין על מינו', 'To separate tithes for their own species and not for a different species', 'A');
insert into mitzvos values (974, 'מצות לפרוש מחמץ', 'To avoid eating chametz on Pesach', 'A');
insert into mitzvos values (975, 'מצות בעילה רק עם בתולה לכהן גדול', 'For a Kohen Gadol to have relations only with a virgin', 'A');
insert into mitzvos values (976, 'מצות נשיאת מצרי ואדומי רק מדור השלישי', 'To marry an Egyptian or Edomite only upon the third generation', 'A');
insert into mitzvos values (977, 'מצות נשיאות כפים לכהנים ולא לזרים', 'Priestly blessing for Kohanim and not non-Kohanim', 'A');
insert into mitzvos values (978, 'מצות שיווי לזרע אהרן', 'For a Kohen to resemble a descendant of Aharon', 'A');
insert into mitzvos values (979, 'מצות קדושים יהיו', 'For the Kohanim to be Holy', 'A');
insert into mitzvos values (980, 'מצות בעלי מום לבדק הבית ולא תמימים', 'Sanctifying blemished animals for the Temple treasury and not unblemished animals', 'A');
insert into mitzvos values (981, 'מצות הלנה ברצפה כל הלילה', 'Fats and limbs of offerings can be put on the altar all night but not after', 'A');
insert into mitzvos values (982, 'מצות לשפוט בצדק במה שאמרה תורה', 'For a judge to rule justly according to what the Torah proscribes', 'A');
insert into mitzvos values (983, 'מצות קדוש בלע חטאת', 'For anything that absorbs Chatas flavor should have the same status as it', 'A');
insert into mitzvos values (984, 'מצות אכילת תרומה', 'For a Kohen to eat Terumah', 'A');
insert into mitzvos values (985, 'מצות פריעת בעל חוב', 'To pay off a debt', 'A');
insert into mitzvos values (986, 'מצות קידוש גוף הנזיר', 'For a Nazir to sanctify his body', 'A');
insert into mitzvos values (987, 'מצות עשה שבנדה', 'The Positive Mitzvah for a Niddah', 'A');
insert into mitzvos values (988, 'מצות ייבום בימבה ולא גם על צרתה', 'To have Yibum with one''s Yevama and not her co-wife as well', 'A');
insert into mitzvos values (989, 'מצות הנחת שדה ברשות לוקח שני שנים', 'To leave a land in the posession of the purchaser two years', 'A');
-- Mitzvah #625 above is written by the Ramban but Derech Mitzvosecha understands the Ramban doesn't actually count it. The Zohar HaRakiah does, so we added it above.
insert into mitzvos values (990, 'מצות שחיטת קדשים בעזרה ולא חולין', 'To slaughter sanctified animals in the Temple and not unsanctified ones', 'A');

insert into mitzvos values (991, 'שלא להתפיס תמימים לבד הבית', 'Not to give unblemished animals sanctity of the Temple treasury', 'L');
insert into mitzvos values (992, 'שלא לאכול בדרך זולל שמביא לידי מיתה', 'Not to eat like a glutton in a way that will lead to the death penalty', 'L');
insert into mitzvos values (993, 'שלא לאכול דם איברים', 'Not to eat the blood found in an animal''s limbs', 'L');
insert into mitzvos values (994, 'שלא להרבות עשיר למחצית השקל', 'For a wealthy person not to donate more than a half shekel', 'L');

-- Four unique mitzvos of the Ramban that were forgotten
-- TODO fix zoharHaRakiah and Ramban numbers to not have gaps
insert into mitzvos values (1020, 'שלא לעשות קרבן מבעל מום', 'Not to offer in any way a blemished offering', 'L');
insert into mitzvos values (1021, 'שלא לעשות מלחמה עם מואב', 'Not to wage war against Moav', 'L');
insert into mitzvos values (1022, 'שלא לעשות מלחמה עם עמון', 'Not to wage war against Ammon', 'L');
insert into mitzvos values (1023, 'שלא לעשות מלחמה עם עשיו', 'Not to wage war against Eisav', 'L');

/**
200 Aseh on Yechidim
	97 Mitzvos HaGuf
	45 Tumah
 	58 Kehunah

277 Lo Saaseh on Yechidim
	142 Mitzvos HaGuf
	135 Remaining

71 Misah (LeBeis Din)
	23 Kares
	18 Skilah
	10 Sreifa
	10 Misah Bidei Shamayim
	6 Chenek
	2 Kenaim
	2 Sayif

65 Parshiyos (Aseh/Lo Saaseh LeTzibbur)
*/
create table rasag (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table eliyahuHaZaken (	-- Mahaduras Hiddur Zaken
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table ataHinchalta (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table riAlbargeloni (	-- Nesiv Mitzvosecha
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table semak (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table maamarHaSeichel (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table reeim (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source varchar NOT NULL,
	type varchar NOT NULL,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

create table seferCharedim (
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