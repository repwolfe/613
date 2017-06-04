.echo OFF

drop table if exists books;
drop table if exists verses;
drop table if exists mitzvos;
drop table if exists rambam;
drop table if exists chinuch;
drop table if exists ramban;
drop table if exists bahag;
drop table if exists rasag;
drop table if exists chofetzChaim;

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

create table rambam (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	source integer NOT NULL,
	type char(1) NOT NULL,	-- D(eos), P(eulah), M(iddos), (dibbu)R
	whoApplies char(1) NOT NULL,	-- A(ll), M(en), W(omen), L(eviim), K(ohanim)
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade,
	foreign key (source) references verses(_id) on delete cascade
);

insert into rambam values (1, 1, 1, 1, 'D', 'A', 'היא הצווי אשר צונו בהאמנת האלהות, והוא שנאמין שיש שם עלה וסבה הוא פועל לכל הנמצאים, והוא אמרו אנכי ה'' אלהיך. ובסוף גמרא מכות (דף כ"ג:) אמרו תרי"ג מצות נאמרו למשה בסיני, מאי קראה תורה צוה לנו משה, ר"ל מנין תור"ה. והקשו על זה ואמרו תורה בגימטריא תרי"א הוי, והיה המענה אנכי ולא יהיה מפי הגבורה שמענום. הנה נתבאר לך שאנכי ה'' מכלל תרי"ג מצות, והוא צווי באמונת האלהות כמו שבארנו.');
insert into rambam values (2, 2, 2, 2, 'D', 'A', 'היא הצווי שצונו בהאמנת היחוד, והוא שנאמין שפועל המציאות וסבתו הראשונה אחד, והוא אמרו יתעלה שמע ישראל ה'' אלהינו ה'' אחד, וברוב המדרשות תמצאם אומרים על מנת ליחד את שמי, על מנת ליחדני, ורבים כאלה, רוצים בזה המאמר אנחנו אמנם הוציאנו מעבדות ועשה עמנו מה שעשה מן החסדים והטובות על תנאי האמנת היחוד כי אנחנו מחוייבים בזה, והרבה מה שיאמרו מצות יחוד, ויקראו גם כן זאת המצוה מלכות שמים כי הם אומרים כדי לקבל עליו מלכות שמים, ר"ל ההודאה ביחוד והאמנתו.');
insert into rambam values (3, 3, 3, 3, 'D', 'A', 'היא שצונו באהבתו יתעלה. וזה שנחשוב ונתבונן במצותיו ומאמריו ופעולותיו עד שנשיגהו ונהנה בהשגתו בתכלית ההנאה, וזאת היא האהבה המחוייבת, ולשון ספרי לפי שנאמר ואהבת את ה'' אלהיך איני יודע כיצד אוהב את המקום תלמוד לומר והיו הדברים האלה אשר אנכי מצוך היום על לבבך שמתוך כך אתה מכיר את מי שאמר והיה העולם. הנה בארנו לך שבהתבוננות תעלה בידך ההשגה ותגיע ההנאה ותבא האהבה בהכרה. וכבר בארנו שזאת המצוה גם כן כוללת שנהיה קוראים לבני האדם כולם לעבודתו יתעלה ולהאמין בו, וזה שאתה כשתאהב איש אחד תספר בשבחיו ותרבה בהם ותקרא בני האדם לאהוב אותו וזה עד"מ כן בשתאהב אותו יתעלה באמת כאשר הגיע לך מהשגת אמתתו אתה קורא בלי ספק הסכלים והפתיים לדעת ידיעת האמת אשר ידעתו. ולשון ספרי ואהבת את ה'' אהבהו על הבריות כאברהם אביך שנאמר ואת הנפש אשר עשו בחרן ור"ל כמו שאברהם מפני שהיה אוהב כמו שהעיד הכתוב אברהם אוהבי וזה בעוצם השגתו קרא בני האדם להאמין בשם מרוב אהבתו כן אתה אהוב אותו עד שתקרא אליו בני האדם.');
insert into rambam values (4, 4, 4, 4, 'D', 'A', 'היא שצונו להאמין יראתו יתעלה ולהפחד ממנו, ולא נהיה ככופרים ההולכים בשרירות לבם ובקרי אבל נירא ביראת ענשו בכל עת וזהו אמרו את ה'' אלהיך תירא, ובגמרא (סנהדרין נ"ו) אמרו על דרך ויכוח באמרו ונוקב שם ה'' מות יומת ואימר פירש דכתיב אשר נקבו בשמות ואזהרתיה מן את ה'' אלהיך תירא, רוצה לומר אולי אמרו ונוקב שם ה'' הוא שיזכיר השם לבד מבלתי שיברך, ואם תאמר אי זה עון בזה נאמר כי הוא עזב היראה כי מיראת השם שלא יזכיר שמו לבטלה, היה המענה על זאת השאלה ודחיית זה המאמר ואמר חדא דבעינא שם בשם וליכא, ורוצה לומר שיברך השם בשם כמו שאמרו יכה יוסי את יוסי, ועוד אזהרת עשה היא וכל אזהרת עשה לא שמה אזהרה, רוצה לומר שזה שאמרת אזהרתיה מאת ה'' אלהיך תירא אינו אזהרה כי הוא צווי והוא מצות עשה ואין מזהירין בעשה. הנה נתבאר לך כי אמרו את ה'' אלהיך תירא זו מצות עשה.');
insert into rambam values (5, 5, 5, 5, 'P', 'A', 'הוא שצונו לעבדו, וכבר נכפל זה הצווי פעמים באמרו ועבדתם את ה'' אלהיכם, ואמר ואותו תעבודו. ואע"פ שזה הצווי הוא גם כן מהצוויים הכוללים כמו שביארנו בשורש ד'', הנה יש בו יחוד אחר שהוא צווי לתפלה. ולשון ספרי ולעבדו זו תפלה. ואמרו גם כן ולעבדו זו תלמוד, ובמשנתו של רבי אליעזר בנו של רבי יוסי הגלילי אמרו מנין לעיקר תפלה מצוה מהכא את ה'' אלהיך תירא ואותו תעבוד, ואמרו עבדוהו בתורתו ועבדוהו במקדשו, רוצה לומר הכוון אליו להתפלל שם כמו שבאר שלמה ע"ה.');
insert into rambam values (6, 6, 6, 4, 'P', 'A', 'היא שצונו להתחבר עם החכמים ולהתיחד עמהם ולהתמיד בישיבתם בכל אופן מאופני העבודה והחברה במאכל ובמשתה והעסק כדי שיגיע לנו להדמות במעשיהם ולהאמין האמתיות מדבריהם. והוא אמרו יתעלה ובו תדבק וכבר נכפל זה הצווי גם כן ולדבקה בו. ובא בספרי ולדבקה בו הדבק בחכמים ותלמידיהם. וכן הביאו ראיה על זה חיוב האדם לישא בת תלמיד חכם ולהאכיל תלמידי חכמים ולתת להם עסק מאמרו ובו תדבק ואמרו וכי אפשר לו לאדם לידבק בשכינה והא כתיב כי ה'' אלהיך אש אוכלה הוא אלא כל המשיא בתו לתלמיד חכם והנושא בת תלמיד חכם והמהנה תלמיד חכם מנכסיו מעלה עליו הכתוב כאלו נדבק בשכינה.');
insert into rambam values (7, 7, 7, 4, 'P','A', 'היא שצונו להשבע בשמו כשנצטרך לקיים דבר מהדברים או להכחישו, כי בזה תהיה הגדולה והכבוד והעילוי. והוא אמרו יתברך ובשמו תשבע, ובבאור אמרו אמרה תורה השבע בשמו ואמרה תורה אל תשבע, רוצה לומר כמו שהשבועה אשר אין צורך אליה מזהיר ממנה והיא מצות לא תעשה כן השבועה בעת הצורך מצוה בה והיא מצות עשה. ולזה לא הותר להשבע בדבר מכל הנבראים כמו המלאכים והכוכבים אלא על צד חסרון המצרף כמו שישבע בשמש והוא ירצה לומר אדון השמש, ועל זה הצד תשבע אומתנו בשם משה רבינו מה נכבד שמו כאלו הנשבע נשבע באדון או במי ששלחו, וכל עת שלא יבוין הנשבע זה ונשבע באחד הנבראים להאמינו שיש לאותו הדבר אמתת עצם עד שישבע בו כבר עבר ושתף דבר אחר עם שם שמים אשר בא הפירוש (סוכה מ"ה:) כל המשתף שם שמים עם דבר אחר נעקר מן העולם. ולזה הענין כיון הכתוב בשמו תשבע, רוצה לומר שאליו בלבד תאמין האמת אשר ראוי לאדם להשבע בו. וכבר אמרו בתחלת תמורה (דף ג'':) מנין שנשבעין לקיים המצות דכתיב ובשמו תשבע.');
insert into rambam values (8, 8, 8, 6, 'M', 'A', 'היא שצונו להדמות בו יתעלה כפי היכולת והוא אמרו והלכת בדרכיו. וכבר נכפל זה הצווי ואמר ללכת בכל דרכיו ובא בפירוש (סוטה י"ד) מה הקב"ה נקרא חנון אף אתה היה חנון מה הקב"ה נקרא רחום אף אתה היה רחום מה הקב"ה נקרא חסיד אף אתה היה חסיד. וכבר נכפל זה הענין בלשון אחר ואמר אחרי ה'' תלכו ובא בפירוש שרצה לומר ההדמות בפעולותיו הטובות והמדות הנכבדות שיתואר בהם האל יתעלה על צד המשל. יתעלה על הכל עילוי רב.');
insert into rambam values (9, 9, 9, 7, 'P', 'A', 'היא שצונו לקדש את שמו והוא אמרו ונקדשתי בתוך בני ישראל. וענין זאת המצוה אשר אנחנו מצווים לפרסם האמונה הזאת האמתית בעולם ושלא נפחד בהיזק שום מזיק ואע"פ שבא עלינו מכריח לבקש ממנו לכפותנו שלא נשמע אליו אבל נמסור עצמנו למיתה ולא נתעהו לחשוב שכפרנו אע"פ שלבותינו מאמינים בו יתעלה. וזאת היא מצות קדוש השם המצווים בה בני ישראל בכללם, רוצה לומר התרת עצמנו למות ביד האנס בעבור אהבתו יתעלה וההאמנה באחדותו כמו שעשו חנניה מישאל ועזריה בזמן נבוכדנצר הרשע כשצוה להשתחות לצלם והשתחוו לו כל ההמון וישראל בכלל ולא היה שם מקדש שם שמים אבל פחדו הכל והיתה בזה חרפה לכל ישראל על אשר אבדה זאת המצוה מכללם. ולא נצטותה זאת המצוה אלא לכמו המעמד המפורסם הגדול ההוא אשר פחד ממנו כל העולם, ולהיות פרסום היחוד בזה יעד השם על ידי ישעיה שלא תשלם חרפת ישראל בזה המעמד ושיראו בהם בחורים בעת ההיא הקשה לא יפחידם המות ויתירו נפשם ויפרסמו האמונה ויקדשו את השם ברבים, כמו שהבטיחנו באמרו לא עתה יבוש יעקב ולא עתה פניו יחורו בי בראותו ילדיו מעשה ידי בקרבו יקדישו שמי וגו''. ולשון ספרא על מנת כך הוצאתי אתכם מארץ מצרים על מנת שתקדשו שמי ברבים. ובגמרא (סנהדרין ע"ד:) אמרו בן נח מצווה על קדושת השם או אינו מצווה, תא שמע שבע מצות נצטוו בני נח ואם אתה אומר כן תמניא הוו, הנה נתבאר לך שהיא מכלל מיני המצות המחוייבות לישראל, ושמו ראיתם על זאת המצוה מאמרו ונקדשתי בתוך בני ישראל. וכבר התבארו משפטי מצוה זו בפרק שביעי מסנהדרין.');
insert into rambam values (10, 10, 10, 8, 'P', 'M', 'היא שצונו לקרוא קריאת שמע ערבית ושחרית והוא אמרו ודברת בם. וכבר נתבארו משפטי מצוה זו במסכת ברכות (דף כ"א) ושם נתבאר דקריאת שמע דאורייתא. וכתוב בתוספתא כשם שנתנה תורה קבע לקריאת שמע כך נתנו חכמים זמן לתפלה, רוצה לומר שזמני התפלה אינם מן התורה אמנם חיוב התפלה עצמה מן התורה כמו שבארנו, וחכמים ז"ל סדרו להם זמנים. וזהו ענין אמרם (ברכות כ"ו:) תפלות כנגד תמידים תקנו, רוצה לומר שתקנו זמניהם כפי זמני הקרבן. ומצוה זו אין הנשים חייבות בה.');

create table chinuch (
	mitzvahNumber integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	shoresh varchar,
	whoApplies varchar,
	whereApplies varchar,
	onesh varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade
);

insert into chinuch values (25, 1, null, null, null, null);
insert into chinuch values (268, 9, null, null, null, null);
insert into chinuch values (416, 2, null, null, null, null);
insert into chinuch values (417, 3, null, null, null, null);
insert into chinuch values (419, 9, null, null, null, null);
insert into chinuch values (430, 4, null, null, null, null);
insert into chinuch values (431, 5, null, null, null, null);
insert into chinuch values (432, 6, null, null, null, null);
insert into chinuch values (433, 7, null, null, null, null);
insert into chinuch values (608, 8, null, null, null, null);


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