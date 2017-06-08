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

insert into mitzvos values (1, 'האמנה במציאות השם יתברך', null, 'A');	
insert into mitzvos values (2, 'אחדות השם', null, 'A');
insert into mitzvos values (3, 'אהבת השם', null, 'A');
insert into mitzvos values (4, 'יראת השם', null, 'A');
insert into mitzvos values (5, 'תפילה', null, 'A');
insert into mitzvos values (6, 'החברה והדביקה עם חכמי התורה', null, 'A');
insert into mitzvos values (7, 'על כל הצריך לישבע שישבע בשם השם', null, 'A');
insert into mitzvos values (8, 'להדמות בדרכי השם יתברך הטובים והישרים', null, 'A');
insert into mitzvos values (9, 'קידוש השם', null, 'A');
insert into mitzvos values (10, 'קרית שמע שחרית וערבית', null, 'A');
insert into mitzvos values (11, 'תלמוד תורה', null, 'A');
insert into mitzvos values (12, 'תפילין של ראש', null, 'A');
insert into mitzvos values (13, 'תפילין של יד', null, 'A');
insert into mitzvos values (14, 'ציצית', null, 'A');
insert into mitzvos values (15, 'מזוזה', null, 'A');
insert into mitzvos values (16, 'הקהל במוצאי שביעית', null, 'A');
insert into mitzvos values (17, 'לכתוב כל אחד מישראל ספר תורה לעצמו', null, 'A');
insert into mitzvos values (18, 'על המלך לכתוב ספר תורה אחד יתר על שאר בני ישראל', null, 'A');
insert into mitzvos values (19, 'ברכת המזון', null, 'A');
insert into mitzvos values (20, 'בניין בית הבחירה', null, 'A');
insert into mitzvos values (21, 'היראה מן המקדש', null, 'A');
insert into mitzvos values (22, 'שמירת המקדש', null, 'A');
insert into mitzvos values (23, 'עבודת הלוי במקדש', null, 'A');
insert into mitzvos values (24, 'קדוש ידים ורגלים בשעת עבודה', null, 'A');
insert into mitzvos values (25, 'עריכת נירות המקדש', null, 'A');
insert into mitzvos values (26, 'ברכת כהנים בכל יום', null, 'A');
insert into mitzvos values (27, 'סידור לחם הפנים ולבונה', null, 'A');
insert into mitzvos values (28, 'הקטרת קטרת', null, 'A');
insert into mitzvos values (29, 'הדלקת אש על המזבח בכל יום', null, 'A');
insert into mitzvos values (30, 'הרמת הדשן', null, 'A');
insert into mitzvos values (31, 'שלוח טמאים חוץ למחנה שכינה', null, 'A');
insert into mitzvos values (32, 'קדוש זרע אהרן', null, 'A');
insert into mitzvos values (33, 'לבישת בגדי הכהנים', null, 'A');
insert into mitzvos values (34, 'משא הארון בכתף', null, 'A');
insert into mitzvos values (35, 'משיחת כהנים גדולים ומלכים בשמן המשחה', null, 'A');
insert into mitzvos values (36, 'להיות הכהנים עובדים במקדש משמרות משמרות ובמועדים עובדים כאחד', null, 'A');
insert into mitzvos values (37, 'עניין טומאת הכהנים לקרוביהם ובכללה שיתאבלו כל אחד מישראל על ששה מקרוביו הידועים', null, 'A');
insert into mitzvos values (38, 'כהן גדול לישא נערה בתולה', null, 'A');
insert into mitzvos values (39, 'תמידין בכל יום', null, 'A');
insert into mitzvos values (40, 'קרבן מנחה של כהן גדול בכל יום', null, 'A');
insert into mitzvos values (41, 'קרבן מוסף של שבת', null, 'A');
insert into mitzvos values (42, 'קרבן מוסף בכל ראש חדש', null, 'A');
insert into mitzvos values (43, 'קרבן מוסף כל שבעת ימי הפסח', null, 'A');
insert into mitzvos values (44, 'קרבן העומר של שעורים ביום שני של פסח', null, 'A');
insert into mitzvos values (45, 'קרבן מוסף ביום חג השבועות', null, 'A');
insert into mitzvos values (46, 'קרבן מנחה חדשה מן החטים ביום עצרת', null, 'A');
insert into mitzvos values (47, 'קרבן מוסף ביום ראש השנה', null, 'A');
insert into mitzvos values (48, 'קרבן מוסף ביום עשירי בתשרי שהוא נקרא יום הכפורים', null, 'A');
insert into mitzvos values (49, 'עבודת יום הכפורים', null, 'A');
insert into mitzvos values (50, 'קרבן מוסף בכל יום משבעת ימי חג הסוכות', null, 'A');
insert into mitzvos values (51, 'קרבן מוסף ביום שמיני של סוכות שהוא נקרא שמיני עצרת', null, 'A');
insert into mitzvos values (52, 'חגיגה ברגלים', null, 'A');
insert into mitzvos values (53, 'להראות ברגלים בבית המקדש', null, 'A');
insert into mitzvos values (54, 'לשמוח ברגלים', null, 'A');
insert into mitzvos values (55, 'שחיטת הפסח', null, 'A');
insert into mitzvos values (56, 'אכילת בשר הפסח', null, 'A');
insert into mitzvos values (57, 'פסח שני בי"ד באייר', null, 'A');
insert into mitzvos values (58, 'פסח שני שיאכל על מצות ומרורים', null, 'A');
insert into mitzvos values (59, 'תקיעת חצוצרות במקדש ובמלחמה', null, 'A');
insert into mitzvos values (60, 'הקרבת הקרבן שיהיה משמונה ימים ולמעלה', null, 'A');

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