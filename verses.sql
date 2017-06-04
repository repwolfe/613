.echo OFF

drop table if exists books;
drop table if exists verses;

create table books (
	_id integer NOT NULL primary key,
	name varchar NOT NULL,
	enName varchar
);

insert into books values (1, 'בראשית', 'Genesis');
insert into books values (2, 'שמות', 'Exodus');
insert into books values (3, 'ויקרא', 'Leviticus');
insert into books values (4, 'במדבר', 'Numbers');
insert into books values (5, 'דברים', 'Deuteronomy');

create table verses (
	_id integer NOT NULL primary key,
	bookId integer NOT NULL,
	chapter integer NOT NULL,
	verse integer NOT NULL,
	verseText varchar NOT NULL,
	verseTextEn varchar,
	foreign key (bookId) references books(_id) on delete cascade,
	UNIQUE (bookId, chapter, verse)
);

insert into verses values (1, 2, 20, 2, 'אנכי יקוק אלקיך אשר הוצאתיך מארץ מצרים מבית עבדים', null);
insert into verses values (2, 5, 6, 4, 'שמע ישראל יקוק אלקינו יקוק אחד', null);
insert into verses values (3, 5, 6, 5, 'ואהבת את יקוק אלקיך בכל-לבבך ובכל-נפשך ובכל-מאדך', null);
insert into verses values (4, 5, 6, 13, 'את-יקוק אלקיך תירא ואתו תעבד ובשמו תשבע', null);
insert into verses values (5, 2, 23, 25, 'ועבדתם את יקוק אלקיכם וברך את-לחמך ואת-מימיך והסרתי מחלה מקרבך', null);
insert into verses values (6, 5, 28, 9, 'יקימך יקוק לו לעם קדוש כאשר נשבע-לך כי תשמר את-מצות יקוק אלקיך והלכת בדרכיו', null);
insert into verses values (7, 3, 22, 32, 'ולא תחללו את-שם קדשי ונקדשתי בתוך בני ישראל אני יקוק מקדשכם', null);
insert into verses values (8, 5, 6, 7, 'ושננתם לבניך ודברת בם בשבתך בביתך ובלכתך בדרך ובשכבך ובקומך', null);
insert into verses values (9, 5, 10, 20, 'את-יקוק אלקיך תירא אתו תעבד ובו תדבק ובשמו תשבע', null);
insert into verses values (10, 5, 6, 8, 'וקשרתם לאות על-ידך והיו לטטפת בין עיניך', null);
insert into verses values (11, 4, 15, 38, 'דבר אל-בני ישראל ואמרת אלהם ועשו להם ציצת על-כנפי בגדיהם לדרתם ונתנו על-ציצת הכנף פתיל תכלת', null);
insert into verses values (12, 5, 6, 9, 'וכתבתם על-מזוזת ביתך ובשעריך', null);
insert into verses values (13, 5, 31, 12, 'הקהל את-העם האנשים והנשים והטף וגרך אשר בשעריך למען ישמעו ולמען ילמדו ויראו את-יקוק אלקיכם ושמרו לעשות אל-כל-דברי התורה הזאת', null);
insert into verses values (14, 5, 17, 18, 'והיה כבשתו על כסא ממלכתו וכתב לו את-משנה התורה הזאת על-ספר מלפני הכהנים הלוים', null);
insert into verses values (15, 5, 31, 19, 'ועתה כתבו לכם את-השירה הזאת ולמדה את-בני-ישראל שימה בפיהם למען תהיה-לי השירה הזאת לעד בבני ישראל', null);
insert into verses values (16, 5, 8, 10, 'ואכלת ושבעת וברכת את-יקוק אלקיך על-הראץ הטבה אשר נתן-לך', null);
insert into verses values (17, 2, 25, 8, 'ועשו לי מקדש ושכנתי בתוכם', null);