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

insert into verses values (52, 2, 12, 6, 'והיה לכם למשמרת עד ארבעה עשר יום לחדש הזה ושחטו אתו כל קהל עדת-ישראל בין הערבים', null);
insert into verses values (53, 2, 12, 8, 'ואכלו את-הבשר בלילה הזה צלי-אש ומצות על-מררים יאכלהו', null);
insert into verses values (1, 2, 20, 2, 'אנכי יקוק אלקיך אשר הוצאתיך מארץ מצרים מבית עבדים', null);
insert into verses values (49, 2, 23, 14, 'שלש רגלים תחג לי בשנה', null);
insert into verses values (50, 2, 23, 17, 'שלש פעמים בשנה יראה כ-זכורך אל-פני האדן יקוק', null);
insert into verses values (5, 2, 23, 25, 'ועבדתם את יקוק אלקיכם וברך את-לחמך ואת-מימיך והסרתי מחלה מקרבך', null);
insert into verses values (24, 2, 25, 30, 'ונתת על-השלחן לחם פנים לפני תמיד', null);
insert into verses values (22, 2, 27, 21, 'באהל מועד מחוץ לפרכת אשר על-העדת יערך אתו אהרן ובניו מערב עד-בקר לפני יקוק חקת עולם לדרתם מאת בני ישראל', null);
insert into verses values (30, 2, 28, 2, 'ועשית בגדי-קדש לאהרן אחיך לכבוד ולתפארת', null);
insert into verses values (25, 2, 30, 7, 'והקטיר עליו אהרן קטרת סמים בבקר בבקר בהיטיבו את-הנרת יקטירנה', null);
insert into verses values (21, 2, 30, 19, 'ורחצו אהרן ובניו ממנו את-ידיהם ואת-רגליהם', null);
insert into verses values (32, 2, 30, 31, 'ואל-בני ישארל תדבר לאמר שמן משחת-קדש יהיה זה לי לדרתיכם', null);
insert into verses values (17, 2, 25, 8, 'ועשו לי מקדש ושכנתי בתוכם', null);
insert into verses values (27, 3, 6, 3, 'ולבש הכהן מדו בד ומכנסי-בד ילבש על-בשרו והרים את-הדשן אשר תאכל האש את-העלה על-המזבח ושמו אצל המזבח', null);
insert into verses values (26, 3, 6, 6, 'אש תמיד תוקד על-המזבח לא תכבה', null);
insert into verses values (37, 3, 6, 13, 'זה קרבן אהרן ובניו אשר-יקריבו ליקוק ביום המשח אתו עשירת האפה סלת מנחה תמיד מחציתה בבקר ומחציתה בערב', null);
insert into verses values (46, 3, 16, 3, 'בזאת יבא אהרן אל-הקדש בפר בן-בקר לחטאת ואיל לעלה', null);
insert into verses values (18, 3, 19, 30, 'את-שבתתי תשמרו ומקדשי תיראו וני יקוק', null);
insert into verses values (34, 3, 21, 3, 'ולאחתו הבתולה הקרובה אליו אשר לא-היתה לאיש לה חטמא', null);
insert into verses values (29, 3, 21, 8, 'וקדשתו כי-את-לחם אלקיך הוא מקריב קדש יהיה-לך כי קדוש אני יקוק מקדשכם', null);
insert into verses values (35, 3, 21, 13, 'והוא אשה בבתוליה יקח', null);
insert into verses values (7, 3, 22, 32, 'ולא תחללו את-שם קדשי ונקדשתי בתוך בני ישראל אני יקוק מקדשכם', null);
insert into verses values (40, 3, 23, 8, 'והקרבתם אשה ליקוק שבעת ימים ביום השביעי מקרא-קדש כל-מלאכת עבדה לא תעשו', null);
insert into verses values (41, 3, 23, 10, 'דבר אל-בני ישראל ואמרת אלהם כי-תבאו אל-הראץ אשר אני נתן לכם וקצרתם את-קצירה והבאתם את-עמר ראשית קצירכם אל-הכהן', null);
insert into verses values (43, 3, 23, 17, 'ממושבתיכם תביאו לחם תנופה שתים שני עשרנים סלת תהיינה חמץ תאפינה בכורים ליקוק', null);
insert into verses values (28, 4, 5, 2, 'צו את-בני ישארל וישלחו מן-המחנה כל-צרוע וכל-זב וכל טמא לנפש', null);
insert into verses values (23, 4, 6, 23, 'דבר אל-רהרן ואל-בניו לאמר כה תברכו את-בני ישראל אמור להם', null);
insert into verses values (31, 4, 7, 9, 'ולבני קהת לא נתן כי-עבדת הקדש עלהם בכתף ישאו', null);
insert into verses values (54, 4, 9, 11, 'בחדש השני בארבעה עשר יום בין הערבים יעשו אתו על-מצות ומררים יאכלהו', null);
insert into verses values (55, 4, 10, 10, 'וביום שמלתכם ובמועדיכם ובראשי חדשיכם ותקעתם בחצצרת על עלתיכם ועל זבחי שלמיכם והיו לכם לזכרון לפני אלקיכם אני יקוק אלקיכם', null);
insert into verses values (11, 4, 15, 38, 'דבר אל-בני ישראל ואמרת אלהם ועשו להם ציצת על-כנפי בגדיהם לדרתם ונתנו על-ציצת הכנף פתיל תכלת', null);
insert into verses values (19, 4, 18, 2, 'וגם את-אחיך מטה לוי שבט אביך הקרב אתך וילוו עליך וישמרתוך ואתה ובינך אתך לפני אהל העדת', null);
insert into verses values (20, 4, 18, 23, 'ועבד הלוי הוא את-עבדת אהל מועד והם ישאו עונם חקת עולם לגרתיכם ובתוך בני ישראל לא ינחלו נחלה', null);
insert into verses values (56, 4, 22, 27, 'שור אן-כשב או-עז כי יולד והיה שבעת ימים תחת אמו ומיום השמיני והלאה ירצה לקרבן אשה ליקוק', null);
insert into verses values (36, 4, 28, 3, 'ואמרת להם זה האשה אשר תקריבו ליקוק כבשים בני-שנה תמימם שנים ליום עלה תמיד', null);
insert into verses values (38, 4, 28, 9, 'וביום השבת שני-כבשים בני-שנה תמימם ושני עשרנים סלת מנחה בלולה בשמן ונסכו', null);
insert into verses values (39, 4, 28, 11, 'ובראשי חדשיכם תקריבו עלה ליקוק פרים בני-בקר שנים ואיל אחד כבשים בני-שנה שבעה תמימם', null);
insert into verses values (42, 4, 28, 26, 'וביום הבכורים בהקריבכם מנחה חדשה ליקוק בשבעתיכם מקרא-קדש יהיה לכם כל-מלאכת עבדה לא תעשו', null);
insert into verses values (44, 4, 29, 2, 'ועשיתם עלה לריח ניחח ליקוק פר בן-בקר אחד איל אחד כבשים בני-שנה שבעה תמימם', null);
insert into verses values (45, 4, 29, 8, 'והקרבתם עלה ליקוק ריח ניחח פר בן-בקר אחד איל אחד כבשים בני-שנה שבעה תמימם יהיו לכם', null);
insert into verses values (47, 4, 29, 13, 'והקרבתם עלה אשה ריח ניחח ליקוק פרים בני-בקר שלשה עשר אילם שנים כבשים בני-שנה ארבעה עשר תמימם יהיו', null);
insert into verses values (48, 4, 29, 36, 'והקרבתם עלה אשה ריח ניחח ליקוק פר אחד איל אחד כבשים בני-שנה שבעה תמימם', null);
insert into verses values (2, 5, 6, 4, 'שמע ישראל יקוק אלקינו יקוק אחד', null);
insert into verses values (3, 5, 6, 5, 'ואהבת את יקוק אלקיך בכל-לבבך ובכל-נפשך ובכל-מאדך', null);
insert into verses values (8, 5, 6, 7, 'ושננתם לבניך ודברת בם בשבתך בביתך ובלכתך בדרך ובשכבך ובקומך', null);
insert into verses values (10, 5, 6, 8, 'וקשרתם לאות על-ידך והיו לטטפת בין עיניך', null);
insert into verses values (12, 5, 6, 9, 'וכתבתם על-מזוזת ביתך ובשעריך', null);
insert into verses values (4, 5, 6, 13, 'את-יקוק אלקיך תירא ואתו תעבד ובשמו תשבע', null);
insert into verses values (16, 5, 8, 10, 'ואכלת ושבעת וברכת את-יקוק אלקיך על-הראץ הטבה אשר נתן-לך', null);
insert into verses values (9, 5, 10, 20, 'את-יקוק אלקיך תירא אתו תעבד ובו תדבק ובשמו תשבע', null);
insert into verses values (51, 5, 16, 14, 'ושמחת בחגך אתה ובנך ובתך ועבדך ואמתך והלוי והגר והיתום והאלמנה אשר בשעריך', null);
insert into verses values (15, 5, 17, 18, 'והיה כבשתו על כסא ממלכתו וכתב לו את-משנה התורה הזאת על-ספר מלפני הכהנים הלוים', null);
insert into verses values (33, 5, 18, 6, 'וכי-יבא הלוי מאחד שעריך מכל-ישראל אשר-הוא גר דם ובא בכל-אות נפשו אל-המקום אשר-יבחר יקוק', null);
insert into verses values (6, 5, 28, 9, 'יקימך יקוק לו לעם קדוש כאשר נשבע-לך כי תשמר את-מצות יקוק אלקיך והלכת בדרכיו', null);
insert into verses values (13, 5, 31, 12, 'הקהל את-העם האנשים והנשים והטף וגרך אשר בשעריך למען ישמעו ולמען ילמדו ויראו את-יקוק אלקיכם ושמרו לעשות אל-כל-דברי התורה הזאת', null);
insert into verses values (14, 5, 31, 19, 'ועתה כתבו לכם את-השירה הזאת ולמדה את-בני-ישראל שימה בפיהם למען תהיה-לי השירה הזאת לעד בבני ישראל', null);