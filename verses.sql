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
insert into verses values (4, 5, 10, 20, 'את-יקוק אלקיך תירא אתו תעבד ובו תדבק ובשמו תשבע', null);
insert into verses values (5, 2, 23, 25, 'ועבדתם את יקוק אלקיכם וברך את-לחמך ואת-מימיך והסרתי מחלה מקרבך', null);
insert into verses values (6, 5, 28, 9, 'יקימך יקוק לו לעם קדוש כאשר נשבע-לך כי תשמר את-מצות יקוק אלקיך והלכת בדרכיו', null);
insert into verses values (7, 3, 22, 32, 'ולא תחללו את-שם קדשי ונקדשתי בתוך בני ישראל אני יקוק מקדשכם', null);
insert into verses values (8, 5, 6, 7, 'ושננתם לבניך ודברת בם בשבתך בביתך ובלכתך בדרך ובשכבך ובקומך', null);