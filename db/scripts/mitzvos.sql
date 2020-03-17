.echo OFF

drop table if exists mitzvos;
drop table if exists rasag;
drop table if exists zoharRakiah;
drop table if exists seferCharedim;
drop table if exists semak;
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
insert into mitzvos values (16, 'מצות הקהל במוצאי שביעית', 'Hakhel after Shemittah', 'A');
insert into mitzvos values (17, 'מצות לכתוב כל אחד מישראל ספר תורה לעצמו', 'For each Jew to write a sefer Torah for themself', 'A');
insert into mitzvos values (18, 'מצות על המלך לכתוב ספר תורה אחד יתר על שאר בני ישראל', 'For a King to write one more sefer Torah than the rest of the Jews', 'A');
insert into mitzvos values (19, 'מצות ברכת המזון', 'Grace after Meals', 'A');
insert into mitzvos values (20, 'מצות בניין בית הבחירה', 'Building the Temple', 'A');
insert into mitzvos values (21, 'מצות היראה מן המקדש', 'Fearing the Temple', 'A');
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
insert into mitzvos values (51, 'מצות קרבן מוסף ביום שמיני של סוכות שהוא נקרא שמיני עצרת', 'The Mussaf offering for the eigth day of Sukkos, known as Shemini Atzeres', 'A');
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
insert into mitzvos values (77, 'מצות קרבן מצורע כשיתרפא מצרעתו', 'The offering of a metzora when he recovers', 'A');
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
insert into mitzvos values (99, 'מצות עניין טומאת נדה שטמאה ומטמאה', 'The concept of tumah of a niddah', 'A');
insert into mitzvos values (100, 'מצות עניין טומאת יולדת', 'The concept of tumah of a woman who gave birth', 'A');
insert into mitzvos values (101, 'מצות עניין טומאת מצורע', 'The concept of tumah of a metzora', 'A');
insert into mitzvos values (102, 'מצות עניין נגעי בגדים', 'The concept of tumah of tzaraas on a garment', 'A');
insert into mitzvos values (103, 'מצות עניין טומאת בית שיהיה בו נגע', 'The concept of tumah of tzaraas on a building', 'A');
insert into mitzvos values (104, 'מצות עניין טומאת זב להיות טמא ומטמא', 'The concept of tumah of a zav', 'A');
insert into mitzvos values (105, 'מצות עניין טומאת שכבת זרע שהוא טמא ומטמא', 'The concept of tumah of someone who had a seminal emission', 'A');
insert into mitzvos values (106, 'מצות עניין טומאת זבה שטמאה ומטמאה', 'The concept of tumah of a zavah', 'A');
insert into mitzvos values (107, 'מצות טומאה של מת', 'The concept of tumah of a corpse', 'A');
insert into mitzvos values (108, 'מצות מי נדה שמטמאין אדם טהור ומטהרין אדם טמא מטומאת מת בלבד', 'The concept of the water of a red heffer which purify and contaminate', 'A');
insert into mitzvos values (109, 'מצות טבילה לטמאים', 'Immersion in a mikveh for the impure', 'A');
insert into mitzvos values (110, 'מצות הטהרה מן הצרעת שתהיה במינים ידועים', 'The purification of a metzora using known species', 'A');
insert into mitzvos values (111, 'מצות תגלחת מצורע ביום השביעי', 'The shaving of a metzora''s hair on the seventh day of his purification', 'A');
insert into mitzvos values (112, 'מצות הנהגת המצורע וכל מטמאי אדם בקריעה ופרימה', 'The behavior of a metzora and others who are impure with tattered clothes and dissheveled hair', 'A');
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
insert into mitzvos values (140, 'מצות ספירת שבע שבתות שנים', 'To count the seven shemittah years', 'A');
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
insert into mitzvos values (251, 'שלא לעשות עבודה זרה לא לעצמו ולא לזולתו', null, 'L');
insert into mitzvos values (252, 'שלא לעשות צורות לנוי', null, 'L');
insert into mitzvos values (253, 'שלא להשתחוות לעבודה זרה', 'Not to bow to idols', 'L');
insert into mitzvos values (254, 'שלא לעבוד עבודה זרה במה שדרכה להעבד', 'Not to worship idols in their normal mode of service', 'L');
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
insert into mitzvos values (265, 'שלא לאהוב המסית', null, 'L');
insert into mitzvos values (266, 'שלא לעזוב השנאה מן המסית', null, 'L');
insert into mitzvos values (267, 'שלא להציל המסית', null, 'L');
insert into mitzvos values (268, 'שלא ילמד המוסת זכות על מסית', null, 'L');
insert into mitzvos values (269, 'שלא ישתוק המוסת מללמד חובה על המסית', null, 'L');
insert into mitzvos values (270, 'שלא ליהנות מצפוי עבודה זרה', null, 'L');
insert into mitzvos values (271, 'שלא לבנות עיר הנדחת לכמוה שהיתה', null, 'L');
insert into mitzvos values (272, 'שלא ליהנות בממון עיר הנדחת', null, 'L');
insert into mitzvos values (273, 'שלא להדביק שום דבר מעבודה זרה עם ממונינו וברשותינו ליהנות בו', null, 'L');
insert into mitzvos values (274, 'שלא להתנבאות בשם עבודה זרה', null, 'L');
insert into mitzvos values (275, 'שלא להתנבאת בשקר', null, 'L');
insert into mitzvos values (276, 'שלא לשמע ממתנבא בשם עבודה זרה', 'Not to listen to someone who prophecizes in the name of an idol', 'L');
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
insert into mitzvos values (301, 'שלא ישא עמוני ומואבי בת ישראל', 'An Ammonite or Moabite cannot marry a Jewish woman', 'L');
insert into mitzvos values (302, 'שלא להרחיק זרע עשו מהתחתן עם זרע ישראל אחר שיתגיירו אלא עד ג'' דורות', null, 'L');
insert into mitzvos values (303, 'שלא להרחיק מצרי כמו כן אלא עד דור שלישי ולא שלישי בכלל', null, 'L');
insert into mitzvos values (304, 'שלא לקרוא שלום לעמון ומואב', null, 'L');
insert into mitzvos values (305, 'שלא להשחית אילני מאכל במצור וכן כל השחתה בכלל הלאו', null, 'L');
insert into mitzvos values (306, 'שלא לערוץ מפני אחד מכל שבעה עממין', 'Do not be afraid of the enemy during battle', 'L');
insert into mitzvos values (307, 'שלא נשכח מעשה עמלק שעשה עם אבותינו בצאתם ממצרים', null, 'L');
insert into mitzvos values (308, 'לאו דברכת השם', null, 'L');
insert into mitzvos values (309, 'שלא נשבע לשקר', null, 'L');
insert into mitzvos values (310, 'שלא לישבע לשוא', null, 'L');
insert into mitzvos values (311, 'שלא לעשות דבר שיתחלל בו שם שמים בין בני אדם', null, 'L');
insert into mitzvos values (312, 'שלא לנסות נביא אמת יותר מדאי', null, 'L');
insert into mitzvos values (313, 'שלא למחות ספרי הקודש והשמות של הקדוש ברוך הוא הכתובים שם וכל בתי עבודת הקודש', null, 'L');
insert into mitzvos values (314, 'שלא ילין הצלוב על העץ וכן המת בביתו אלא לכבודו', 'Not to leave a dead person hanging or unburied', 'L');
insert into mitzvos values (315, 'שלא לבטל שמירת המקדש', null, 'L');
insert into mitzvos values (316, 'שלא יכנסו הכהנים בכל עת במקדש וכל שכן זרים', null, 'L');
insert into mitzvos values (317, 'שלא יכנס בעל מום בהיכל', 'A blemished Kohen shall not enter the Temple Heichal', 'L');
insert into mitzvos values (318, 'שלא יעבד הכהן בעל מום', null, 'L');
insert into mitzvos values (319, 'שלא יעבוד כהן בעל מום עובר', 'A Kohen with a temporary blemish should not perform the Temple service', 'L');
insert into mitzvos values (320, 'שלא יתעסקו הכהנים בעבודת הלוים ולא הלוים בעבודת הכהנים', null, 'L');
insert into mitzvos values (321, 'שלא להכנס שתויי יין במקדש וכן שלא יורה שתוי', null, 'L');
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
insert into mitzvos values (343, 'שלא להקריב קרבן בעל מום עובר', 'Not to sacrifice an animal with a temporary blemish', 'L');
insert into mitzvos values (344, 'שלא להקריב קרבן בעל מום מיד הגוים', null, 'L');
insert into mitzvos values (345, 'שלא נתן מום בקדשים', null, 'L');
insert into mitzvos values (346, 'שלא להקריב שאור או דבש', 'Not to offer leaven or honey', 'L');
insert into mitzvos values (347, 'שלא להקריב קרבן בלא מלח', null, 'L');
insert into mitzvos values (348, 'שלא להקריב אתנן זונה ומחיר כלב', 'Not to offer a harlot''s wage or the exchange for a dog', 'L');
insert into mitzvos values (349, 'שלא לשחוט בהמה ובנה ביום אחד', null, 'L');
insert into mitzvos values (350, 'שלא ליתן שמן זית במנחת חוטא', null, 'L');
insert into mitzvos values (351, 'שלא ליתן לבונה במנחת חוטא', null, 'L');
insert into mitzvos values (352, 'שלא ליתן שמן בקרבן סוטה', null, 'L');
insert into mitzvos values (353, 'שלא להשים לבונה בקרבן סוטה', null, 'L');
insert into mitzvos values (354, 'שלא נמיר הקדשים', null, 'L');
insert into mitzvos values (355, 'שלא לשנות הקדשים מקרבן לקרבן', null, 'L');
insert into mitzvos values (356, 'שלא לפדות בכור בהמה טהורה', null, 'L');
insert into mitzvos values (357, 'שלא למכור מעשר בהמה אלא יאכל בירושלם', null, 'L');
insert into mitzvos values (358, 'שלא ימכר קרקע שהחרים אותה בעליו אלא תנתן לכהנים', null, 'L');
insert into mitzvos values (359, 'שלא יגאל שדה החרם', null, 'L');
insert into mitzvos values (360, 'שלא להבדיל הראש בחטאת העוף', null, 'L');
insert into mitzvos values (361, 'שלא לעבוד בקדשים', null, 'L');
insert into mitzvos values (362, 'שלא לגזוז את הקדשים', null, 'L');
insert into mitzvos values (363, 'שלא נשחט שה הפסח בארבעה עשר בניסן בעוד שהחמץ ברשותינו', null, 'L');
insert into mitzvos values (364, 'שלא נניח אימורי הפסח לפסול בלינה', null, 'L');
insert into mitzvos values (365, 'שלא להותיר מבשר הפסח', null, 'L');
insert into mitzvos values (366, 'שלא להותיר מבשר קרבן החגיגה שנקריב ביום י"ד בניסן עד יום השלישי', null, 'L');
insert into mitzvos values (367, 'שלא להותיר כלום מבשר פסח שני למחרתו', null, 'L');
insert into mitzvos values (368, 'שלא להותיר מבשר קרבן התודה', null, 'L');
insert into mitzvos values (369, 'שלא לשבור עצם מן הפסח', null, 'L');
insert into mitzvos values (370, 'שלא לשבור עצם מעצמות פסח שני', null, 'L');
insert into mitzvos values (371, 'שלא להוציא מבשר הפסח חוצה', null, 'L');
insert into mitzvos values (372, 'שלא לעשות שיירי מנחות חמץ', null, 'L');
insert into mitzvos values (373, 'שלא לאכול הפסח נא ומבושל', 'Not to eat the Pesach offering raw or boiled', 'L');
insert into mitzvos values (374, 'שלא נאכיל מן הפסח לגר ולתושב', null, 'L');
insert into mitzvos values (375, 'שלא יאכל ערל מן הפסח', null, 'L');
insert into mitzvos values (376, 'שלא נאכיל מן הפסח לישראל משומד', null, 'L');
insert into mitzvos values (377, 'שלא יאכל טמא מן הקדשים', null, 'L');
insert into mitzvos values (378, 'שלא לאכול בשר קדשים שנטמא', null, 'L');
insert into mitzvos values (379, 'שלא לאכול נותר', null, 'L');
insert into mitzvos values (380, 'שלא לאכול פיגול', null, 'L');
insert into mitzvos values (381, 'שלא יאכל שום זר תרומה', null, 'L');
insert into mitzvos values (382, 'שלא יאכל תושב כהן ושכיר תרומה', null, 'L');
insert into mitzvos values (383, 'שלא יאכל ערל תרומה', null, 'L');
insert into mitzvos values (384, 'שלא יאכל כהן טמא תרומה', null, 'L');
insert into mitzvos values (385, 'שלא תאכל חללה מן הקודש', null, 'L');
insert into mitzvos values (386, 'שלא תאכל מנחת כהן', null, 'L');
insert into mitzvos values (387, 'שלא לאכל מבשר חטאות הנעשות בפנים', null, 'L');
insert into mitzvos values (388, 'שלא לאכול פסולי המוקדשין', null, 'L');
insert into mitzvos values (389, 'שלא לאכול מעשר שני של דגן חוץ לירושלם', 'Not to eat Maaser Sheni of grain outside Jerusalem', 'L');
insert into mitzvos values (390, 'שלא לאכול מעשר שני של תירוש חוץ לירושלם', 'Not to eat Maaser Sheni of wine outside Jerusalem', 'L');
insert into mitzvos values (391, 'שלא לאכול מעשר שני של יצהר חוץ לירושלם', null, 'L');
insert into mitzvos values (392, 'שלא לאכול בכור תמים חוץ לירשלם', null, 'L');
insert into mitzvos values (393, 'שלא לאכול בשר חטאת ואשם חוץ לקלעים ואפילו הכהנים', null, 'L');
insert into mitzvos values (394, 'שלא לאכול בשר העולה', null, 'L');
insert into mitzvos values (395, 'שלא לאכול בשר קדשים קלים קודם זריקת דמים', null, 'L');
insert into mitzvos values (396, 'שלא יאכל זר בשר קודשי קודשים', null, 'L');
insert into mitzvos values (397, 'שלא יאכלו כהנים ביכורים קודם הנחתם בעזרה', null, 'L');
insert into mitzvos values (398, 'שלא לאכול מעשר שני בטומאה', 'Not to eat Maaser Sheni while impure', 'L');
insert into mitzvos values (399, 'שלא לאכול מעשר שני באנינות', 'Not to eat Maaser Sheni as an Onen', 'L');
insert into mitzvos values (400, 'שלא להוציא דמי מעשר שני בשאר דברים שאינם מאכילה ושתייה', 'Not to purchase with Maaser Sheni money anything besides food or drink', 'L');
insert into mitzvos values (401, 'שלא לאכל טבל', 'Not to consume untithed produce', 'L');
insert into mitzvos values (402, 'שלא להקדים חוקי התבואות', null, 'L');
insert into mitzvos values (403, 'שלא לאחר הנדרים והנדבות', null, 'L');
insert into mitzvos values (404, 'שלא לעלות לרגל בלא קרבן שיהיה עמנו שנרקריבו שם', null, 'L');
insert into mitzvos values (405, 'שלא נחל דברינו בנדרים', null, 'L');
insert into mitzvos values (406, 'שלא ישא כהן אשה זונה', null, 'L');
insert into mitzvos values (407, 'שלא ישא כהן אשה חללה', null, 'L');
insert into mitzvos values (408, 'שלא ישא כהן אשה גרושה', null, 'L');
insert into mitzvos values (409, 'שלא ישא כהן גדול אלמנה', null, 'L');
insert into mitzvos values (410, 'שלא יבעול כהן גדול אלמנה', null, 'L');
insert into mitzvos values (411, 'שלא יכנסו הכהנים למקדש מגודלי שער', null, 'L');
insert into mitzvos values (412, 'שלא יכנסו הכהנים למקדש קרועי בגדים', null, 'L');
insert into mitzvos values (413, 'שלא יצאו הכהנים מן המקדש בשעת עבודה', null, 'L');
insert into mitzvos values (414, 'שלא יטמא כהן הדיוט במת זולתי בקרובים המבוארים בכתוב', null, 'L');
insert into mitzvos values (415, 'שלא יטמא כהן גדול בשום טומאה במת', null, 'L');
insert into mitzvos values (416, 'שלא יכנס כהן גדול באהל המת', null, 'L');
insert into mitzvos values (417, 'שלא יהיה לשבט לוי נחלה בארץ', null, 'L');
insert into mitzvos values (418, 'שלא יטול שבט לוי חלק בביזה בשעת כבוש הארץ', null, 'L');
insert into mitzvos values (419, 'שלא לעשות קרחה על מת', null, 'L');
insert into mitzvos values (420, 'שלא לאכול בהמה וחיה טמאה', null, 'L');
insert into mitzvos values (421, 'שלא לאכול דג טמא', null, 'L');
insert into mitzvos values (422, 'שלא לאכול עוף טמא', null, 'L');
insert into mitzvos values (423, 'שלא לאכול חגב טמא וכן כל שרץ העוף', null, 'L');
insert into mitzvos values (424, 'שלא לאכול שרץ הארץ', null, 'L');
insert into mitzvos values (425, 'שלא לאכול מן השרצים המתהוים מן העפוש', 'Not to eat bugs that come from sweat', 'L');
insert into mitzvos values (426, 'שלא לאכול מיני שרצים דקים הנולדים בזרעים ובפירות', 'Not to eat worms that come from seeds or fruits', 'L');
insert into mitzvos values (427, 'שלא לאכול משרץ המים', 'Not to eat sea bugs', 'L');
insert into mitzvos values (428, 'שלא לאכול מבשר בהמה וחיה ועוף שמתו מאליהם', null, 'L');
insert into mitzvos values (429, 'שלא לאכול טריפה', null, 'L');
insert into mitzvos values (430, 'שלא לאכול אבר מן החי', null, 'L');
insert into mitzvos values (431, 'שלא לאכול גיד הנשה', null, 'L');
insert into mitzvos values (432, 'שלא נאכל דם בהמה חיה ועוף', null, 'L');
insert into mitzvos values (433, 'שלא נאכל חלב', null, 'L');
insert into mitzvos values (434, 'שלא לבשל בשר בחלב', null, 'L');
insert into mitzvos values (435, 'שלא לאכול בשר בחלב', null, 'L');
insert into mitzvos values (436, 'שלא לאכול שור הנסקל', null, 'L');
insert into mitzvos values (437, 'שלא לאכול מתבואה חדשה קודם כלות יום י"ו בניסן', null, 'L');	------------------- <<<<< Fix this
insert into mitzvos values (438, 'שלא לאכול קלי מתבואה עד ביום ההוא', 'Not to eat roasted grain until the Omer is brought', 'L');	------------------- <<<<< Fix this
insert into mitzvos values (439, 'שלא לאכול כרמל מתבואה עד הזמן הנזכר', 'Not to eat fresh grain until the Omer is brought', 'L');	------------------- <<<<< Fix this
insert into mitzvos values (440, 'שלא לאכול ערלה', null, 'L');
insert into mitzvos values (441, 'שלא לאכול כלאי הכרם בארץ ישראל', null, 'L');
insert into mitzvos values (442, 'שלא לשתות יין נסך', 'Not to drink an idol''s wine libations', 'L');	-- The Chinuch calls this 'שלא לאכול לשתות תקרובת עבודה זרה'
insert into mitzvos values (443, 'שלא לאכול ולשתות כדרך זולל וסובא', null, 'L');
insert into mitzvos values (444, 'שלא לאכול ולשתות ביום הכפורים', null, 'L');
insert into mitzvos values (445, 'שלא לאכול חמץ בפסח', null, 'L');
insert into mitzvos values (446, 'שלא לאכול מכל דבר שיש בו חמץ', 'Not to eat anything that has chametz in it', 'L');
insert into mitzvos values (447, 'שלא לאכול חמץ אחר חצות', 'Not to eat chametz after noon', 'L');
insert into mitzvos values (448, 'שלא יראה לנו חמץ בפסח', null, 'L');
insert into mitzvos values (449, 'שלא ימצא חמץ ברשותינו בפסח', null, 'L');
insert into mitzvos values (450, 'שלא ישתה הנזיר יין או כל מיני שכר', null, 'L');
insert into mitzvos values (451, 'שלא יאכל הנזיר ענבים לחים', null, 'L');
insert into mitzvos values (452, 'שלא יאכל הנזיר צמוקים', null, 'L');
insert into mitzvos values (453, 'שלא יאכל הנזיר קליפת הענבים', null, 'L');
insert into mitzvos values (454, 'שלא יאכל הנזיר זרע הענבים', null, 'L');
insert into mitzvos values (455, 'שלא יטמא הנזיר במת ובשאר טמאות', null, 'L');
insert into mitzvos values (456, 'שלא יכנס הנזיר לאהל המת', null, 'L');
insert into mitzvos values (457, 'שלא יגלח הנזיר שערו כל ימי נזרו', null, 'L');
insert into mitzvos values (458, 'שלא לכלות הפיאה בשדה', null, 'L');
insert into mitzvos values (459, 'שלא לקחת שבלים הנופלים בשעת הקציר', null, 'L');
insert into mitzvos values (460, 'שלא לכלות פאת הכרם', null, 'L');
insert into mitzvos values (461, 'שלא ללקוט פרט הכרם', null, 'L');
insert into mitzvos values (462, 'שלא ליקח עומר השכחה מתבואה או מאילנות', null, 'L');
insert into mitzvos values (463, 'שלא לזרוע כלאי זרעים ולא נרכיב אילן בשום מקום בארץ', null, 'L');
insert into mitzvos values (464, 'שלא לזרוע כלאים בכרם בארץ ישראל דאוריתא', null, 'L');
insert into mitzvos values (465, 'שלא להרביע בהמה עם מין שאינו מינו', null, 'L');
insert into mitzvos values (466, 'שלא לעשות מלאכה בשני מיני בהמה', null, 'L');
insert into mitzvos values (467, 'שלא לחסום בהמה בשעת מלאכה', null, 'L');
insert into mitzvos values (468, 'שלא נעבוד האדמה בשנה השביעית', null, 'L');
insert into mitzvos values (469, 'שלא נעשה עבודה גם באילנות', null, 'L');
insert into mitzvos values (470, 'שלא נקצור ספיחים בשנה השביעית', null, 'L');
insert into mitzvos values (471, 'שלא נאסוף פירות האילן בשביעית כדרך שאוספין אותן בכל שנה', null, 'L');
insert into mitzvos values (472, 'שלא נעבוד הארץ בשנת היובל', null, 'L');
insert into mitzvos values (473, 'שלא נקצור ספיחי תבואות של שנת היובל', null, 'L');
insert into mitzvos values (474, 'שלא לאסוף פירות האילנות בשנת היובל כדרך שאוספין אותן בשאר שנים', null, 'L');
insert into mitzvos values (475, 'שלא נמכור שדה בארץ ישראל לצמיתות', null, 'L');
insert into mitzvos values (476, 'שלא לשנות מגרשי ערי הלוים ושדותיהם', null, 'L');
insert into mitzvos values (477, 'שלא לעזוב את הלוים מלתת להם מתנותיהם ומלשמחם ברגלים', null, 'L');
insert into mitzvos values (478, 'שלא לתבוע ההלוואה שעבר עליה שביעית', null, 'L');
insert into mitzvos values (479, 'שלא נמנע מלהלוות לעני מפני השמטה', null, 'L');
insert into mitzvos values (480, 'שלא למנוע מלהחיות העני ומליתן לו מה שהוא צריך', null, 'L');
insert into mitzvos values (481, 'שלא לשלח עבד עברי ריקם כשיצא חפשי', null, 'L');
insert into mitzvos values (482, 'שלא נתבע חוב מעני שאין לו במה לפרוע', null, 'L');
insert into mitzvos values (483, 'שלא להלוות ברבית לישראל', null, 'L');
insert into mitzvos values (484, 'שלא ללות ברבית מישראל', null, 'L');
insert into mitzvos values (485, 'שלא נשית יד בין לוה למלוה ברבית', null, 'L');
insert into mitzvos values (486, 'שלא נאחר שכר שכיר', null, 'L');
insert into mitzvos values (487, 'שלא למשכן בעל חוב בזרוע', null, 'L');
insert into mitzvos values (488, 'שלא למנוע עבוט מבעליו בעת שצריך לו', null, 'L');
insert into mitzvos values (489, 'שלא למשכן אלמנה', null, 'L');
insert into mitzvos values (490, 'שלא לחבול כלים שעושין בהן אוכל נפש', 'Not to take food preparation vessels as collateral', 'L');
insert into mitzvos values (491, 'שלא לגנוב נפש מישראל', null, 'L');
insert into mitzvos values (492, 'שלא לגנוב שום ממון', null, 'L');
insert into mitzvos values (493, 'שלא לגזול', null, 'L');
insert into mitzvos values (494, 'שלא להשיג גבול', null, 'L');
insert into mitzvos values (495, 'שלא לעשוק', null, 'L');
insert into mitzvos values (496, 'שלא נכחש על ממון שיש לאחר בידינו', null, 'L');
insert into mitzvos values (497, 'שלא לישבע על כפירת ממון', null, 'L');
insert into mitzvos values (498, 'שלא להונות במקח וממכר', null, 'L');
insert into mitzvos values (499, 'שלא להונות אחד מישראל בדברים', null, 'L');
insert into mitzvos values (500, 'שלא להונות הגר בדברים', null, 'L');
insert into mitzvos values (501, 'שלא להונות הגר בממון', null, 'L');
insert into mitzvos values (502, 'שלא להחזיר עבד שברח מאדוניו מחוצה לארץ לארץ ישראל', null, 'L');
insert into mitzvos values (503, 'שלא להונות עבד זה הבורח מאדניו מחוצה לארץ לארץ ישראל', null, 'L');
insert into mitzvos values (504, 'שלא לענות יתום ואלמנה', null, 'L');
insert into mitzvos values (505, 'שלא נעבוד בעבד עברי עבודת בזיון כמו עבודת כנעני', null, 'L');
insert into mitzvos values (506, 'שלא נמכור עבד עברי על אבן המקח', null, 'L');
insert into mitzvos values (507, 'שלא לעבוד בעבד עברי בעבודת פרך', null, 'L');
insert into mitzvos values (508, 'שלא להניח לגוי לעבוד בעבד עברי הנמכר לו', null, 'L');
insert into mitzvos values (509, 'שלא ימכור אמה עבריה הקונה אותה מיד האב', null, 'L');
insert into mitzvos values (510, 'שלא לגרוע שאר כסות ועונה', null, 'L');
insert into mitzvos values (511, 'שלא למכור אשת יפת תואר', null, 'L');
insert into mitzvos values (512, 'שלא להעביד באשת יפת תואר אחר שבא עליה כמו בשפחה', null, 'L');
insert into mitzvos values (513, 'שלא לחמוד', null, 'L');
insert into mitzvos values (514, 'שלא להתאוות מה שביד אחינו בני ישראל', null, 'L');
insert into mitzvos values (515, 'שלא לאכול השכיר בשעת מלאכה', null, 'L');
insert into mitzvos values (516, 'שלא יקח השכיר בידו יותר על אכילתו', null, 'L');
insert into mitzvos values (517, 'שלא להתעלם מן האבדה', null, 'L');
insert into mitzvos values (518, 'שלא להניח בהמת חבירו רובצת תחת משאה', null, 'L');
insert into mitzvos values (519, 'שלא להונות במדות וכל המדות בכלל', null, 'L');
insert into mitzvos values (520, 'שלא נשהה מאזנים ומשקלים חסרים עמנו ואף על פי שלא נשא ונתן בהן', null, 'L');
insert into mitzvos values (521, 'שלא לעוול המשפט', null, 'L');
insert into mitzvos values (522, 'שלא ליקח שוחד', null, 'L');
insert into mitzvos values (523, 'שלא לכבד גדול בדין', null, 'L');
insert into mitzvos values (524, 'שלא יירא הדיין בדין מאדם רע', null, 'L');
insert into mitzvos values (525, 'שלא לרחם על עני בדין', null, 'L');
insert into mitzvos values (526, 'שלא להטות משפט חוטא מפני רשעו', null, 'L');
insert into mitzvos values (527, 'שלא לרחם על המזיק בדיני קנסות', null, 'L');
insert into mitzvos values (528, 'שלא להטות משפט גר או יתום', null, 'L');
insert into mitzvos values (529, 'שלא לשמוע טענת בעל דין שלא בפני בעל דינו', null, 'L');
insert into mitzvos values (530, 'שלא לנטות אחרי רבים בדיני נפשות בשביל אחד', null, 'L');
insert into mitzvos values (531, 'שלא ילמד חובה מי שלמד זכות תחילה בדיני נפשות', null, 'L');
insert into mitzvos values (532, 'שלא למנות דיין אדם שאינו חכם בדיני תורה אף על פי שהוא חכם בחכמות אחרות', null, 'L');
insert into mitzvos values (533, 'שלא להעיד בשקר', null, 'L');
insert into mitzvos values (534, 'שלא יעיד בעל עבירה', null, 'L');
insert into mitzvos values (535, 'שלא יעיד קרוב', null, 'L');
insert into mitzvos values (536, 'שלא לחתוך הדין על פי עד אחד', null, 'L');
insert into mitzvos values (537, 'שלא להרוג נקי', null, 'L');
insert into mitzvos values (538, 'שלא לחתוך הדין באומד הדעת', 'Not to decide someone''s fate just with estimation', 'L');
insert into mitzvos values (539, 'שלא יורה העד בדין שהעיד בו בדיני נפשות', null, 'L');
insert into mitzvos values (540, 'שלא להרוג מחוייב קודם שיעמוד בדין', null, 'L');
insert into mitzvos values (541, 'שלא לחוס על הרודף', null, 'L');
insert into mitzvos values (542, 'שלא לענוש האנוס', 'Not to punish someone coerced', 'L');
insert into mitzvos values (543, 'שלא ליקח כופר להציל ממות הרוצח', null, 'L');
insert into mitzvos values (544, 'שלא ליקח כופר ממחוייב גלות לפוטרו מן הגלות', null, 'L');
insert into mitzvos values (545, 'שלא לעמוד על דם רעים', null, 'L');
insert into mitzvos values (546, 'שלא להניח מכשול', null, 'L');
insert into mitzvos values (547, 'שלא להכשיל תם בדרך', null, 'L');
insert into mitzvos values (548, 'שלא להוסיף במלקות המחוייב מלקות ובכללה שלא נכה ישראל', null, 'L');
insert into mitzvos values (549, 'שלא לרגל', null, 'L');
insert into mitzvos values (550, 'שלא לשנוא אחים', null, 'L');
insert into mitzvos values (551, 'שלא להלבין פני אדם מישראל', null, 'L');
insert into mitzvos values (552, 'שלא לנקום', null, 'L');
insert into mitzvos values (553, 'שלא לנטור', null, 'L');
insert into mitzvos values (554, 'שלא ליקח האם מעל הבנים', null, 'L');
insert into mitzvos values (555, 'שלא לגלח שער הנתק', 'Not to shave the hair of a nesek affliction', 'L');
insert into mitzvos values (556, 'שלא לתלוש סימני צרעת', null, 'L');
insert into mitzvos values (557, 'שלא לעבוד ולזרוע בנחל איתן', null, 'L');
insert into mitzvos values (558, 'שלא להחיות מכשף', null, 'L');
insert into mitzvos values (559, 'שלא להוציא חתן מביתו כל שנה ראשונה', null, 'L');
insert into mitzvos values (560, 'שלא למרות על פי בית דין הגדול שיעמדו לישראל', null, 'L');
insert into mitzvos values (561, 'שלא להוסיף על מצוות התורה', null, 'L');
insert into mitzvos values (562, 'שלא לגרוע ממצוות התורה', null, 'L');
insert into mitzvos values (563, 'שלא לקלל הדיין', null, 'L');
insert into mitzvos values (564, 'שלא לקלל הנשיא', null, 'L');
insert into mitzvos values (565, 'שלא לקלל אחד מישראל בין איש בין אשה', null, 'L');
insert into mitzvos values (566, 'שלא לקלל אב ואם', 'Not to curse one''s father or mother', 'L');
insert into mitzvos values (567, 'שלא להכות אב ואם', 'Not to injure one''s father or mother', 'L');
insert into mitzvos values (568, 'שלא לעשות מלאכה בשבת', null, 'L');
insert into mitzvos values (569, 'שלא נצא בשבת חוץ לתחום', null, 'L');
insert into mitzvos values (570, 'שלא יעשו בית דין משפט מות בשבת', null, 'L');
insert into mitzvos values (571, 'שלא לעשות מלאכה ביום א'' של פסח', null, 'L');
insert into mitzvos values (572, 'שלא לעשות מלאכה ביום ז'' של פסח', null, 'L');
insert into mitzvos values (573, 'שלא לעשות מלאכה ביום חג השבועות', null, 'L');
insert into mitzvos values (574, 'שלא לעשות מלאכה ביום א'' של תשרי', null, 'L');
insert into mitzvos values (575, 'שלא לעשות מלאכה ביום ראשון של חג הסוכות', null, 'L');
insert into mitzvos values (576, 'שלא לעשות מלאכה ביום שמיני של חג', null, 'L');
insert into mitzvos values (577, 'שלא לעשות מלאכה בעשרה בתשרי', null, 'L');
insert into mitzvos values (578, 'שלא לגלות ערות אם', null, 'L');
insert into mitzvos values (579, 'שלא לגלות ערות אשת אב ואף על פי שאינה אמו', null, 'L');
insert into mitzvos values (580, 'שלא לגלות ערות אחות בכל צד שהיא אחות', null, 'L');
insert into mitzvos values (581, 'שלא לגלות ערות אחות מן האב והיא בת אשת אביו', null, 'L');
insert into mitzvos values (582, 'שלא לגלות ערות בת הבן', null, 'L');
insert into mitzvos values (583, 'שלא לגלות ערות בת הבת', null, 'L');
insert into mitzvos values (584, 'שלא לגלות ערות הבת', null, 'L');
insert into mitzvos values (585, 'שלא לגלות ערות אשה ובתה', null, 'L');
insert into mitzvos values (586, 'שלא לגלות ערות אשה ובת בנה', null, 'L');
insert into mitzvos values (587, 'שלא לגלות ערות אשה ובת בתה', null, 'L');
insert into mitzvos values (588, 'שלא לגלות ערות אחות אב', null, 'L');
insert into mitzvos values (589, 'שלא לגלות ערות אחות אם', null, 'L');
insert into mitzvos values (590, 'שלא לגלות ערות אשת אחי האב', null, 'L');
insert into mitzvos values (591, 'שלא לגלות ערות אשת הבן', null, 'L');
insert into mitzvos values (592, 'שלא לגלות ערות אשת האח', null, 'L');
insert into mitzvos values (593, 'שלא לגלות ערות אחות אשתו בחיי אשתו', null, 'L');
insert into mitzvos values (594, 'שלא לבוא על אשה נדה', null, 'L');
insert into mitzvos values (595, 'שלא לגלות ערות אשת איש', null, 'L');
insert into mitzvos values (596, 'שלא לשכב עם הבהמות', null, 'L');
insert into mitzvos values (597, 'שלא תשכבנה הנשים עם הבהמות', null, 'L');
insert into mitzvos values (598, 'שלא לבוא על הזכרים', null, 'L');
insert into mitzvos values (599, 'שלא לגלות ערות אב', null, 'L');
insert into mitzvos values (600, 'שלא לגלות ערות אחי האב', null, 'L');
insert into mitzvos values (601, 'שלא לקרב לעריות בדברים המביאין לידי גילוי ערוה', null, 'L');
insert into mitzvos values (602, 'שלא ישא ממזר בת ישראל', null, 'L');
insert into mitzvos values (603, 'שלא תהיה קדשה מבנות ישראל', null, 'L');
insert into mitzvos values (604, 'שלא יחזיר המגרש גרושתו אחר שנשאת', null, 'L');
insert into mitzvos values (605, 'שלא תנשא היבמה לאחר חוץ מן היבם', null, 'L');
insert into mitzvos values (606, 'שלא יגרש האונס את אנוסתו', null, 'L');
insert into mitzvos values (607, 'שלא יגרש מוציא שם רע את אשתו', null, 'L');
insert into mitzvos values (608, 'שלא יקח סריס בת ישראל', 'For someone lacking their male organ not to marry a Jewish woman', 'L');
insert into mitzvos values (609, 'שלא לסרס אחד מכל המינין', null, 'L');
insert into mitzvos values (610, 'שלא למנות מלך על ישראל כי אם מבני ישראל', null, 'L');
insert into mitzvos values (611, 'שלא ירבה המלך סוסים', null, 'L');
insert into mitzvos values (612, 'שלא ירבה לו המלך נשים', null, 'L');
insert into mitzvos values (613, 'שלא ירבה לו המלך כסף וזהב לבד מה שצריך לו', null, 'L');

-- Chinuch's unique mitzvah
insert into mitzvos values (614, 'שלא להקריב קרבן פסח בבמת יחיד', 'Not to offer the Korbon Pesach on an individual Bamah', 'L');

-- Ramban's unique mitzvos
insert into mitzvos values (615, 'מצות אכילת מעשר שני ובכורות בירושלים', 'To Eat Maaser Sheni and Bechoros in Yerushalayim', 'A');
insert into mitzvos values (616, 'מצות אכילת תרומה כשהיא טהורה ולא בטומאתה', 'To eat Terumah when it is pure and not while it is impure', 'A');
insert into mitzvos values (617, 'מצות קרית שמע בערב', 'Reciting the Shema in the evening', 'A');
insert into mitzvos values (618, 'מצות הקטרת באין הארבים', 'Burning the afternoon incense', 'A');
insert into mitzvos values (619, 'מצות קרבן התמיד בין הערבים', 'The daily afternoon Tamid offering', 'A');
insert into mitzvos values (620, 'מצות עבודת הכהנים בקרבנות', 'The Temple Service of the Kohanim with the offerings', 'A');
insert into mitzvos values (621, 'מצות אכילת פירות שביעית', 'To only eat Shemittah fruit', 'A');
insert into mitzvos values (622, 'מצות ישיבת הארץ', 'To settle the land of Israel', 'A');
insert into mitzvos values (623, 'מצות לקיים שבועה של רשות', 'To fulfill a vow to do something voluntary', 'A');
insert into mitzvos values (624, 'מצות להניח אחת מן הרוחות בלי מצור בשעת מלחמה', 'To leave one side of a city during a siege unprotected', 'A');
--insert into mitzvos values (625, 'מצות לאכול מן האילנות שבגבולה כל ימי המצור ולא לכרות אותם', 'To enjoy the fruits of the trees surrounding a city under siege and not to destroy them', 'A');	-- Derech Mitzvosecha § 1 explains the Ramban doesn't actually coutn this as a mitzvah
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
insert into mitzvos values (654, 'שלא לאכול הצפור ששחטו אותה לטהרת המצורע', 'Not to eat of the bird slaughtered for the metzora''s purification', 'L');
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

-- Semag's unique mitzvos
insert into mitzvos values (679, 'מצות צדקות הדין על כל מאורע ויחשוב כי הכל לטובתו', 'To consider everything that happens to you to be for the good', 'A');
insert into mitzvos values (680, 'מצות חישוב תקופות מזלות ומולדות ולעבר השנים', 'To calculate the constellations, new moons and leap years', 'A');
insert into mitzvos values (681, 'מצות הרחקה מן השקר', 'To distance oneself from falsehood', 'A');

insert into mitzvos values (682, 'שלא לנסות את השם', 'Not to test Hashem', 'L');	-- Not considered by Derech Mitzvosecha II as a unique mitzvah
insert into mitzvos values (683, 'שלא לפרוש מן התורה', 'Not to remove oneself from the Torah', 'L');
insert into mitzvos values (684, 'שלא לעבוד עבודה זרה דרך כבוד אפילו אין דרך עבודתה בכך', 'Not to serve idols in an honorary way, even if its not its normal form of service', 'L');
insert into mitzvos values (685, 'שלא להקים פסל', 'Not to set up a statue', 'L');
insert into mitzvos values (686, 'שלא יתגאו בני ישראל', 'For a Jew not to become haughty', 'L');
insert into mitzvos values (687, 'שלא ישא איש ישראל שפחה ולא תנשא בת ישראל לעבד', 'For a Jewish man not to marry a maidservant, not a Jewish woman a slave', 'L');
insert into mitzvos values (688, 'שלא ישא מי שנכרת הגיד שלו בת ישראל', 'For someone lacking their corona nor to marry a Jewish woman', 'L');
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
insert into mitzvos values (703, 'שלא לזםם על בת כהן שהיא זנתה', 'Not to scheme against the daughter of a Kohen by testifying that she commited adultery', 'L');
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

create table zoharRakiah (
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