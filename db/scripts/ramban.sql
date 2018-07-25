.echo OFF

drop table if exists ramban;
drop table if exists rambanOnRambam;

-- Ramban's unique mitzvos
create table ramban (
	_id integer NOT NULL primary key,
	mitzvahId integer NOT NULL,
	mitzvahNumber integer NOT NULL,
	shihchaNumber integer,
	source integer,
	originalText varchar,
	foreign key (mitzvahId) references mitzvos(_id) on delete cascade,
	foreign key (source) references verses(_id) on delete cascade
);

insert into ramban (_id, mitzvahId, mitzvahNumber) values (1, 1, 1);	-- Can retrieve source info from rambam
insert into ramban (_id, mitzvahId, mitzvahNumber) values (2, 2, 2);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (3, 3, 3);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (4, 4, 4);
insert into ramban values (5, 615, 5, 1, 666, 'שנצטוינו לאכול מעשר שני ובכורות בירושלים לפני האל יתעלה והוא אמרו ואכלת לפני ה'' אלהיך מעשר דגנך תירושך ויצהרך וזו מצוה מן המצות גדולה מאד שנתן בה טעם למען תלמד ליראה, ואמרו מגיד שמעשר שני מביא את האדם לידי תלמוד תורה וצוה בו עוד ושמחת אתה וביתך. ואני תמה על הרב בזו ואם אולי היה דעתו שאינן אלא למנוע אכילתן חוץ לירושלים והוא הלאו שמנעו הרב קמ"א שלא לאכול מעשר שני חוץ לירושלים והלא הוא ז"ל המונה לאוין מכלל עשה בחשבון מצות עשה, ועוד שזו באמת מצוה קבועה, ובגמרא פסחים (דף נ"ט) אמרו רבי ישמעאל בנו של רבי יוחנן בן ברוקא אומר אף מחוסר כפורים בשאר ימות השנה שטובל ואוכל בקדשים לערב, יאמר שמקריב לאחר תמיד של בין הערבים כדי שיאכל בקדשים, והקשו עליו מכדי האי עשה, נתבאר כי אכילת הקדשים לבעלים ולראוי לאכלן עשה וכמו שהוא עשה לכהנים בחטאות ואשמות כך הוא בבעלים בחלק הראוי להם, וכבר זכרם בעל ההלכות אמר לאכול קדשים ומעשר שני בירושלים והנראה שהן נמנות שתים:');
insert into ramban (_id, mitzvahId, mitzvahNumber) values (6, 6, 6);	-- Comment #7 shows he doesn't agree with the Rambam's source for this...
insert into ramban values (7, 616, 7, 2, 667, 'שנצטוינו לאכול תרומה כשהיא טהורה לא בטומאה והאוכלה בטומאת עצמה עובר בעשה, שנאמר בשעריך תאכלנו הטמא והטהור יחדיו, ואמר בגמרא הערל (דף עג:) והאוכל מהן ממעשר ובכורים בטומאת עצמן לוקה משא"כ בתרומה מילקי הוא דלא לקי בתרומה הא איסורא איכא, מנ"ל אמר קרא בשעריך תאכלנו לזה ולא לאחר ולאו הבא מכלל עשה עשה, וכן בא עוד בפרק שני ממסכת בכורים בגמרא ירושלמי:');
insert into ramban (_id, mitzvahId, mitzvahNumber) values (8, 8, 8);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (9, 9, 9);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (10, 10, 10);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (11, 11, 11);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (12, 12, 12);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (13, 13, 13);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (14, 14, 14);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (15, 15, 15);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (16, 16, 16);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (17, 17, 17);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (18, 18, 18);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (19, 19, 19);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (20, 20, 20);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (21, 21, 21);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (22, 22, 22);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (23, 23, 23);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (24, 24, 24);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (25, 25, 25);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (26, 26, 26);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (27, 27, 27);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (28, 28, 28);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (29, 29, 29);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (30, 30, 30);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (31, 31, 31);
insert into ramban (_id, mitzvahId, mitzvahNumber) values (32, 32, 32);

-- Ramban's comments on the mitzvos of the Rambam
create table rambanOnRambam (
	_id integer NOT NULL primary key,
	originalText varchar,
	foreign key (_id) references rambam(_id) on delete cascade
);

insert into rambanOnRambam values (1, 'כתב הרב המצוה הראשונה שנצטוינו באמונת האלהות והוא שנאמין שיש עלה וסבה הוא פועל כל הנמצאות והוא אמרו יתעלה אנכי ה'' אלהיך. ובסוף גמרא מכות אמרו תרי"ג מצות נאמרו לו למשה בסיני מאי קראה תורה צוה לנו משה והקשו תרי"א הוי אנכי ולא יהיה לך מפי הגבורה שמענום, הנה נתבאר לך שאנכי מכלל תרי"ג מצות והיא מצוה באמונה כמו שביארנו: אמר הכותב האמונה הזאת בדבור הזה לא נפלאת היא ולא רחוקה היא וכן בדברי רז"ל מפורש שהוא קבלת מלכותו יתעלה והיא האמונה באלהות, אמרו במכילתא לא יהיה לך אלהים אחרים על פני למה נאמר לפי שהוא אומר אנכי ה'' אלהיך, משל למלך שנכנס למדינה אמרו לו עבדיו גזור להם גזירות אמר להם לאו כשיקבלו מלכותי אגזור עליהם גזירות שאם מלכותי אינן מקבלים גזירותי היאך מקיימים, כך אמר המקום לישראל אנכי ה'' אלהיך לא יהיה לך אלהים אחרים על פני אני הוא שקבלתם עליכם מלכותי במצרים אמרו הן כשם שקבלתם מלכותי קבלו גזירותי לא יהיה לך. ועם כל זה ראיתי לבעל ההלכות שלא ימנה אותה מצוה מכלל תרי"ג והתימה מהרב שמנה בדבור לא יהיה לך ד'' מניעות, לא יהיה לך לא תעשה לא תשתחוה להם ולא תעבדם, אם כן יהיה מפי הגבורה חמש ומפי משה תר"ח לא מנין תור"ה. והנראה מדעתו של בעל ההלכות שאין מנין תרי"ג מצות אלא גזירותיו יתעלה שגזר עלינו לעשות או מנענו שלא נעשה, אבל האמונה במציאותו יתעלה שהודיע אותה אלינו באותות ומופתים ובגילוי השכינה לעינינו הוא העיקר והשורש שממנו נולדו המצות לא ימנה בחשבונן, והוא מאמר החכמים גזור עליהם, עשו קבלת המלכות ענין בפני עצמו והמצות הנגזרות מאתו יתעלה מענין אחר, ועוד כי מה הפרש בין הדיבור הזה ובין מה שאמר יתעלה בצדוק המדות אני ה'' אלהיכם אשר הוצאתי אתכם מארץ מצרים והוא ירצה לומר הואיל וקבלתם מלכותי מיציאת מצרים קבלו גזירותי ואם תהיה בכל מקום מצוה שיאמר דעו והאמינו שאני ה'' שהוצאתי אתכם מארץ מצרים ועשו מצותי עם כל זה לא יבא בחשבון המצות כי הוא העיקר והן התולדות כאשר פירשתי. ולדעת הזו מה שאמרו בתשובת השאלה תורה תרי"א הוי אנכי ולא יהיה לך מפי הגבורה שמענום לומר שיש בדיבור לא יהיה לך שתי מצות ישלימו לתרי"ג. והם המניעה בעשיית הצלמים לא יהיה לך ולא תעשה לך ענין אחד. והמניעה בעבודתם לא תשתחוה להם ולא תעבדם מצוה אחרת. הודיעו כי עד כאן הדברות מפי הגבורה מובנות לכלם באשר הם בלשון מדבר על עצמו, אנכי ה'', על פני, ושאר הדברות בלשון נביא מתרגם ביניהם. אבל הכונה מפני (מצות) הדבור הב'' שהן משלימות המנין, וכן מנה בה"ג במצות ל"ת שבסקילה עובד ע"ז אחד ומנה בלאוין שבמלקות לא יהיה לך אחד שהיא אצלו מניעה בקיום הצלמים ולא הזכיר לאו אחר בעשייתן, ומצאתי ראיה לדבריו שאמרו במכילתא לא יהיה לך אלהים אחרים למה נאמר לפי שנאמר לא תעשה לך פסל אין לי אלא שלא יעשה העשוי כבר מנין שלא יקיים תלמוד לומר לא יהיה לך, וזה דעת בעל הלכות גדולות ויש לו פנים, אבל עוד במצות לא תעשה אבאר המתחוור לי:');
insert into rambanOnRambam values (5, 'כתב הרב מצוה חמישית שנצטוינו בעבודתו שנאמר ועבדתם את ה'' אלהיכם וגו'' ואומר ולעבדו בכל לבבכם. אמר ז"ל ואע"פ שמצוה זו מן המצות הכוללות כלומר שאינן נמנות כמו שבארנו בעיקר הרביעי יש בו גם כן פרט והוא מצוה בתפלה ולשון ספרי ולעבדו זו תפלה ובמשנתו של ר'' אליעזר בנו של רבי יוסי הגלילי אומר מנין לעיקר תפלה מן המצות שנאמר את ה'' אלהיך תירא ואותו תעבוד ואמרו עבדו בתורתו עבדו במקדשו כלומר ללכת שם להתפלל בו כמו שביאר שלמה, כל אלה דברי הרב. ואין נכונה בזה שכבר בארו חכמים בגמרא תפלה דרבנן כמו שאמרו בפ"ג דברכות (דף כ"א) לענין בעל קרי שקורא ק"ש ומברך על המזון לאחריו ואינו מתפלל והעלו הטעם בזה אלא ק"ש וברכת המזון דאורייתא תפלה דרבנן. ובגמרא סוכה (דף ל"ח) אמרו גבי תפלה דתנן ואם התחילו אין מפסיקין, והקשו מלולב דקתני נוטל על שולחנו אלמא מפסיק והשיבו בדרך תימה מאי קושיא הא דאורייתא הא דרבנן, וכבר ראינו לו בהלכות תפלה אמר שחייב אדם מן התורה בתפלה בכל יום אלא שאין מנין התפלות ולא משנה התפלה מן התורה וכך כתב בזה המאמר במצוה עשירית שזמני התפלה אינן מן התורה אבל חובת עצמה היא מן התורה, וגם זה איננו נכון בעיני שבעל קרי מברך על המזון לאחריו מפני שהוא מן התורה ואינו מתפלל עד שיטבול אפי'' עמד כמה ימים בקריו, ועוד שמי שנאנס ולא התפלל בשחרית ובמנחה נסתפק בעצמו ספק התפלל ספק לא התפלל אם כן לפי דבריו של הרב היה צריך לחזור ולהתפלל והם פסקו לעולם בכל ספק בתפלה שאינו חוזר ומתפלל מפני שהיא מדרבנן ואם אינה מצוה בכל יום מתי תהיה החובה הזאת המוטלת עלינו מה"ת שיתפלל יום אחד בשנה או בכל ימיו פעם אחת וכבר אמרו ברב יהודה דמתלתין יומין לתלתין יומין הוה מצלי לפי שהיה עוסק בתורה וסמך על מה שאמרו חברים שהיו עוסקין בתורה מפסיקין לקריאת שמע ואין מפסיקין לתפלה שהיא דרבנן לעולם [כי אין לומר שחיוב מה"ת רק כל שלשים יום] אלא ודאי כל ענין התפלה אינו חובה כלל אבל הוא ממדת חסד הבורא יתברך עלינו ששומע ועונה בכל קראנו אליו, ועיקר הכתוב ולעבדו בכל לבבכם מצות עשה שתהיה כל עבודתנו לאל יתעלה בכל לבבנו כלומר בכוונה רצויה שלימה לשמו ובאין הרהור רע, לא שנעשה המצות בלי כונה או על הספק אולי יש בהם תועלת, כענין ואהבת את ה'' אלהיך בכל לבבך ובכל נפשך ובכל מאדך שהמצוה היא לאהוב את השם בכל לב ולב ושנסתכן באהבתו בנפשנו ובממוננו. ומה שדרשו בספרי ולעבדו זה תלמוד ד"א זו תפלה אסמכתא היא או לומר שמכלל העבודה שנלמוד תורתו ושנתפלל אליו בעת הצרות ותהיינה עינינו ולבנו אליו כעיני עבדים אל יד אדוניהם וזה כענין שכתוב וכי תבאו מלחמה בארצכם על הצר הצורר אתכם והרעותם בחצוצרות ונזכרתם לפני ה'' אלהיכם והיא מצוה על צרה שתבא על הצבור לזעוק לפניו בתפלה ובתרועה והוא הענין שבאר שלמה ע"ה כמו שכתוב בהעצר שמים ולא יהיה מטר וכתיב רעב כי יהיה דבר כי יהיה שדפון ירקון ארבה חסיל כי יהיה כי יצר לו אויבו בארץ שעריו כל נגע כל מחלה כל תפלה כל תחנה אשר תהיה לכל האדם לכל עמך ישראל אשר ידעון איש נגעי לבבו ופרש כפיו אל הבית הזה. וכבר דרשו עוד שם בספרי רבי אליעזר בן יעקב אומר ולעבדו בכל לבבכם ובכל נפשכם מה תלמוד לומר והלא כבר נאמר בכל לבבך להלן ליחיד וכאן לציבור כאן לתלמוד כאן למעשה, אמר שנצטוינו לעבוד השם בכל לבבנו בלמוד תורתו ובעשיית מצותיו, וכן זו שנויה שם אותו תעבודו עבדוהו בתורתו עבדוהו במקדשו פירושו לומר שיעבדו אותו במקדשו בעבודת הקרבנות והשיר וההשתחויות שם מוסיף על עבודת המצות לפי שאמר הכתוב אחרי ה'' אלהיכם תלכו ואותו תיראו ואת מצותיו תשמורו ודרשו שם בספרי את מצותיו תשמורו זו תורת משה ובקולו תשמעו בקול נביאו. הנה עשיית המצות כלן כבר נאמר ולכך דרשו ואותו תעבודו בעבודת המקדש ואמרו בפירוש כלל הפסוק עבדוהו בתורתו עבדוהו במקדשו (לומר) שצוה תחלה עבדוהו בתורתו כלומר בעשיית המצות כולן מרישיה דקרא וצוה עבדוהו במקדשו מן ואותו תעבודו לומר כי בזה כולו תהיה עבודתנו שלימה אליו יתעלה, והנה הם מצות כוללות. אבל מפני שצוה אותנו בפסוק בכל לבבכם בענין חדש להיות כל לבבנו מיוחד אליו יתעלה בעשיית המצות כאשר פירשתי יתכן שתבא המצוה הזאת בחשבון רמ"ח מצות עשה. ומן הטעם הזה אצלו לא ימנו המצות הכוללות מפני שכבר נמנו בפרטן וכמו שלא נמנה הכפל מצוה מן המצות פעמים שלש בפרט אלא אחת כן לא נמנה כפלן בכלל אלא באחת ואולם אם דורש בכפלן והוסיף בו ענין ראוי להענות ימנו. ואם אולי יהיה מדרשם בתפלה עיקר מן התורה נמנה אותו במנינו של הרב ונאמר שהיא מצוה לעת הצרות שנאמין שהוא יתברך ויתעלה שומע תפלה והוא המציל מן הצרות בתפלה וזעקה, והבן זה:');
insert into rambanOnRambam values (7, 'כתב הרב והמצוה שביעית היא שנצטוינו להשבע בשמו והוא אמרו יתעלה ובשמו תשבע, וכבר אמרו בפרק ראשון מתמורה מנין שנשבעין לקיים את המצות שנאמר בשמו תשבע. ואני תמה בדברי הרב שלא אמרו כן בגמרא תמורה אלא על דרך הויכוח והקושיא שהיו חוקרים אם נאסור שבועת אמת בשמו יתברך ויתעלה מפסוק ליראה את השם הנכבד והנורא אמרו ואימר כי כתיב והפלא בנשבע שבועת אמת והשיבו שבועת אמת שריא דכתיב שבועת ה'' תהיה בין שניהם, עוד חקרו אימא להפיס דעתו של בעל הבית אבל מילקא לקי כלומר שתהיה שבועת השומרים מותרת להפיס דעתו של בעל הבית אבל ילקה על שבועת אמת כשנשבע מעצמו שבועת בטוי והשיבו קרא אחרינא ובשמו תשבע, ובמחקר הזה הקשו עוד ההוא לכדרב גידל אמר רב הוא דאמר רב גידל אמר רב מנין שנשבעים לקיים את המצות שנאמר נשבעתי ואקיימה לשמור משפטי צדקך והשיבו ההוא מובו תדבק נפקא ובשמו תשבע למה לי אם אינו ענין לשבועת הדיינין דנפקא ליה משבועת ה'' תנהו ענין לשבועתא דעלמא דשריין ואם אינו ענין לשבועת המצות דנפקא ליה מובו תדבק תנהו ענין לשבועה דחול. והמתבאר מזה שאין השבועה בשמו בעת הצורך חובה ומצות עשה אבל רשות היא בידינו עם תנאים רבים והכתוב הזה אינו מצוה אלא רשות שלא כדברי הרב. וכן ובו תדבק מצוה שנשבע בשמו לקיים מצותיו יתעלה ולהזהיר מן העבירות אמר את ה'' אלהיך תירא בכל ענין היראה והפחד שלא תזכיר שמו לבטלה ואותו תעבוד בעשית המצות ובו תדבק שתדבק נפשך אל מצותיו ואל עבודתו ותזרז אותה אליו בשבועות ונדרים לקיים חפצך ויש לך רשות להשבע בשמו לקיים כל דבר. וכפל עוד מצוה בענין הדביקה אמרו לאהבה את ה'' אלהיכם ללכת בכל דרכיו ולדבקה בו וממנו דרשו בספרי הדבק בחכמים ותלמידיהם ועוד אמרו שם למוד דברי אגדה שמתוך דברי אגדה אתה מכיר מי שאמר והיה העולם ומתדבק בדרכיו, והכלל שירצו בדביקה הזו שיתחבר לחכמים וילמוד החכמות המועילות לאהבה את השם וללכת בדרכיו. ואע"פ שהמדרשים חלוקים בשני הפסוקים האלו לא נמנה ובו תדבק מצות אחת ולדבקה בו מצוה אחרת אבל נמנה מצוה אחת להדבק בו יתעלה בכל מיני הדביקה, וכן ענין השבועה נכפל עוד בפסוק אחר את ה'' אלהיך תירא ואותו תעבוד ובשמו תשבע לא תלכו אחרי אלהים אחרים ואין הכפל ראוי ברשות ולכן נאמר שהוא לאו הבא מכלל עשה ובשמו תשבע לא תלכו אחרי אלהים אחרים להשבע בהם או לעבדם ולירא מהם וכבר נאסר זה בלאו ושם אלהים אחרים לא תזכירו לא ישמע על פיך אבל בא לעבור עליו בלאו ועשה כי האזהרות בע"ז רבות בכתוב. והרב עצמו חוזר ורואה זה אמר ואל הענין הזה כיון הכתוב באמרו ובשמו תשבע כלומר שאתה אליו לבדו תאמין והאמת שראוי להשבע בו כלומר ולא ישתתף שם שמים וד"א לא שנצטוינו בשבועה לעשותה. וראיתי במדרש רבי תנחומא אמר להם הקב"ה לישראל לא תהיו סוברים שהותר לכם להשבע בשמי אפילו באמת אלא אם יהיו בך כל המדות את ה'' אלהיך תירא שתהיה כאותן שנקראו יראי אלהים אברהם איוב ויוסף, ואותו תעבוד ובו תדבק וכי יכול אדם לידבק בשכינה והלא כבר נאמר כי ה'' אלהיך אש אוכלה הוא אל קנא אלא לומר לך כל המשיא בתו לתלמיד שקורא ושונה והעושה לו פרקמטיא והמהנהו מנכסיו שהוא שאמר ובו תדבק אם יש לך מדות אלו אתה רשאי להשבע, ע"כ לשונו באגדה. ויש לנו סיוע בו לדברינו שאינו אלא רשות בשבועה בשמו עם התנאין האלו ושמא לכך כפל הרשות הזה להזהר בתנאיו, ומ"מ לא נביא ובשמו תשבע בחשבון המצות כי לא ימנה הרשות בשבועת אמת בשמו ואם בא בו באיסור בשם אלהים אחרים בלאו הבא מכלל עשה שהוא עשה אין אנו מונין בזה וכיוצא בו אלא הלאו הנאמר בו בפירוש שהזכרנו בעיקר הששי אע"פ שראיתי זה במנינו של בעל הלכות:');