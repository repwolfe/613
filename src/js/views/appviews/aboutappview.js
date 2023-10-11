var AboutAppView = Backbone.View.extend({

	curLang: "he",
	pageDetails: "#pageDetails",
	parentContainer: "#container",
	elementId: "about",

	initialize: function() {
		$(this.pageDetails).hide();
		this.setElement($("<div id=\"" + this.elementId + "\"></div>"));
		$(this.parentContainer).append(this.$el);
		
		this.fillText();
	},

	destroy: function() {
		this.$el.remove();
		$(this.pageDetails).show();
	},

	fillText: function() {
		var aboutText = "";
		if (this.curLang === "he") {
			aboutText = `
				<h1>סקירה כללית</h1>
				<p>מסורת יהודית מלמדת (לדוגמא, עי' מכות כ"ג ע"ב) שיש תרי"ג מצוות בתורת משה. בראיה שטחית יימצא יותר מתרי"ג מצות. אז צריך לומר שיש גדר לגדור מה יהיה ברשימה של התרי"ג.
				אמנם, חז"ל לא קבעו איזו מצוות יהיו ברשימה זו. אלא הגאונים והראשונים חלקו זה על זה ברשימה שלהם. כנראה לא נלקטו כל השיטות במקום אחד באופן מסודר. התכלית של אתר זו להציג רוב השיטות באופן יפה.
				ניתן להציג את המצוות, לחקור אותם ולסדר אותם.</p>

				<p>בנוסף ליכולת להציג הרשימה של כל שיטה, ניתן להשאוות בין שתי רשימות, לראות מתי הם מסכימים, ומתי הם חולקים.</p>

				<p>סוף סוף, בגלל החילוקי דעות בתרי"ג מצוות, סך הכול יש הרבה יותר מתרי"ג מצוות יחודיות. ניתן להציג הרשימה הקולקטיבית, וכל מצווה מציגה מי מנאה ברשימה שלו.
				מופיע קישור כדי לנווט במהירות לרשימה של אותו שיטה, לראות איך הוא מנאה.</p>

				<p>המטרה שיהיה הכל בעברית ובאנגילת.</p>

				<p>רוב הטקסט באו מאתר <a href="https://www.sefaria.org/?home" target="_blank"><strong>Sefaria</strong></a> (לפרטים נוספים, ראה להלן במקורות).
				אנו מודים מאוד על מסירותם לטקסטים יהודיים, הופכים אותם לזמינים ברשת באופן מקוון לכולם.</p>

				<h1>לעשות</h1>
				<p>להלן רשימה לא ממצה על מה שעוד יש להשלים:</p>

				<div id=\"todoList\">
				<ul>
				<li>כלול רישום ויזואלי של הדעות הבאות על מצוות תרי"ג:
					<strong>הרב שמעון אבן גבירול</strong>, <strong>זוהר הרקיע</strong>, <strong>סמ\"ק</strong>, <strong>ספר חרדים</strong>, <strong>הרב סעדיה גאון</strong>,
					<strong>ספר יראים</strong>, <strong>ר"י אלברגלוני</strong>, <strong>אתה הנחלת</strong>, <strong>הרב אליהו הזקן</strong>,
					ואולי <strong>ספר המצוות הקצר</strong> מאת ה<strong>חפץ חיים</strong>.</li>
				<li>היכולת למיין את המצוות לפי עשרת הדברות. התוכנית היא ליישם זאת לרשימותיו של <strong>הרב סעדיה גאון</strong>, מכיוון שכבר סיווג אותן כך (למרות ששתי הרשימות אינן זהות זה לזה, וזה יצור קשיים),
					<strong>סמ\"ג</strong> (ש<strong>מאמר השכל</strong> כבר ממיין את הרישום שלו כך), ואולי הרמב\"ן (שממיין כך כמה מהמצוות).
					כדאי גם לחקור את <strong>כתר תורה</strong> מאת <strong>הרב דוד ויטאל</strong>.</li>
				<li>הפוך את האתר לידידותי לנייד.</li>
				<li>תקן כמה באגים ליעילות מכיוון שהאתר לפעמים איטי, וכמה באגים חזותיים אחרים.</li>
				<li>הוסף סרגל חיפוש יעיל.</li>
				</ul>
				</div>

				<h1>עזור לתמוך בנו</h1>
				<p>נותרה עוד הרבה עבודה לעשות, ולצערנו אנחנו לא יכולים לעשות את זה כל כך מהר בלי מימון. אם ברצונך לעזור לתמוך בנו בהגשמת מטרותינו, אנא צור קשר באמצעות דוא"ל:
				<a href=\"mailto:contact@thetaryag.com">contact@thetaryag.com</a>. קיימות גם הזדמנויות חסות. אנו מצפים לשמוע ממך.</p>

				<h1>מקורות</h1>

				<ul>
					<li><strong>כל מצוות</strong>: השתמשנו בשמות למצוות של ה<strong>חינוך</strong>, והשאר בחרנו כראוי.</li>
					<li><strong>פסוקים</strong>: הקלדנו הפסוקים בעברית. באנגלית השתמשנו בתרגום של <strong>Sefaria</strong> הנקרא
						<a href="https://www.sefaria.org/Genesis.1?ven=Metsudah_Chumash,_Metsudah_Publications,_2009&lang=bi&aliyot=0" target="_blank">
						<em>Metsudah Chumash</em></a>.</li>
					<li><strong>רמב"ם</strong>: השתמשנו בטקסט ה<a href="https://www.sefaria.org/Sefer_HaMitzvot?lang=bi" target="_blank">ספר המצות</a> של
						<strong>Sefaria</strong>, וגם ה<a href="https://www.sefaria.org/texts/Halakhah/Mishneh%20Torah" target="_blank">הקדמה לספר מדע</a>.</li>
					<li><strong>רמב"ן</strong>: השתמשנו בטקסט
						<a href="https://www.sefaria.org/Hasagot_HaRamban_on_Sefer_HaMitzvot?lang=bi" target="_blank">השגות הרמב"ן על ספר המצות</a>
						של <strong>Sefaria</strong>. השתמשנו בדרך מצותיך
						<a href="https://hebrewbooks.org/pdfpager.aspx?req=30749&st=&pgnum=222" target="_blank">§ 1</a> להבין הרשימה המדויקת של
						<strong>רמב"ן</strong>, וגם בהסיכום של ה<strong>רמב"ן</strong> בסוף ספר המצות.</li>
					<li><strong>חינוך</strong>: השתמשנו בטקסט <a href="https://www.sefaria.org/Sefer_HaChinukh?lang=bi" target="_blank">ספר החינוך</a> של
						<strong>Sefaria</strong>. סיווגנו המצות לפי מה שכתב המחבר בעצמו. לגבי הסדר הישן, השתמשנו
						ב<a href="https://hebrewbooks.org/pdfpager.aspx?req=40631&st=&pgnum=32&hilite=" target="_blank">מהדורה מוקדמת</a>.</li>
					<li><strong>סמ"ג</strong>: השתמשנו בטקסט <a href="https://www.sefaria.org/Sefer_Mitzvot_Gadol?lang=bi" target="_blank">ספר מצות גדול</a> של
						<strong>Sefaria</strong>. השתמשנו במהדורת מי קמא
						<a href="https://tablet.otzar.org/book/book.php?book=22149&pagenum=17" target="_blank">[1]</a>
						<a href="https://tablet.otzar.org/book/book.php?book=22147&pagenum=4" target="_blank">[2]</a>
						להבין איזה מצוה של ה<strong>רמב"ם</strong> התיחס ה<strong>סמ"ג</strong>.
						גם השתמשנו בדרך מצותיך <a href="https://hebrewbooks.org/pdfpager.aspx?req=30749&st=&pgnum=222" target="_blank">§ 1</a>
						ו<a href="https://hebrewbooks.org/pdfpager.aspx?req=30749&st=&pgnum=233" target="_blank">§ 2</a>.</li>
					<li><strong>בה"ג</strong>: השתמשנו בספר
						<a href="https://tablet.otzar.org/book/book.php?book=147045&pagenum=34" target="_blank">הלכות גדולות</a>
						מהדורת מכון ירושלים בשביל הטקסט וחלוקה של המצות. חלוקה שלהם חילקו
						<a href="https://he.wikipedia.org/wiki/%D7%90%D7%91%D7%A8%D7%94%D7%9D_%D7%A9%D7%9E%D7%A2%D7%95%D7%9F_%D7%98%D7%A8%D7%95%D7%99%D7%91"
						target="_blank">הרב אברהם שמעון טריוב</a>, שאת הטקסט,
						החלוקה והערות שלו ניתן לראות גם <a href="https://hebrewbooks.org/pdfpager.aspx?req=14119&st=&pgnum=6" target="_blank">כאן</a>.</li>
				</ul>

				<h1>קוד מקור</h1>

				<p>הכל ניתן לראות באתר <a href="https://github.com/repwolfe/613" target="_blank"><strong>Github</strong></a>.</p>
			`;
		}
		else {
			aboutText = `
			<h1>Overview</h1>

			<p>Jewish tradition teaches us (for example, see Makkos 23b) that there are 613 commandments in the Torah (the Five Books of Moses), known as
			the Taryag Mitzvos. A cursory glance at the Torah will yield many more than 613 commandments. Therefore, there must be some sort of criteria
			to determine what makes the list of Taryag Mitzvos.	However, the Jewish Sages never specified which commandments written in the Torah made
			the list. The Rishonim (the Medieval Rabbinic scholars) argued about the listing of the commandments, and it seems that all these opinions
			were never collected in an organized way. The purpose of this project is to present most of the opinions in a visually pleasing manner.
			The mitzvos can be viewed, explored, and sorted, according to how each opinion lists them.</p>

			<p>In addition to being able to view each opinion's listing, there's the ability to compare two lists at once, seeing where they agree,
			and where they differ.</p>

			<p>Finally, because of the differing opinions as to what makes the list, there ends up being more than 613 unique mitzvos.
			The entire accumulated list can be viewed, and each <em>mitzvah</em> (command) displays who counts it in their list. A link is provided to quickly
			navigate to that individual's list, to see how they formulate it.</p>

			<p>The goal is to have the entire project eventually be bilingual. Everything is in Hebrew by default, but the language can be changed to English.
			Data that hasn't yet been translated will remain displayed in Hebrew.</p>

			<p>Most of the textual data for this project came from <a href="https://www.sefaria.org/?home" target="_blank"><strong>Sefaria</strong></a>
			(for more details, see below). We are extremely grateful for their dedication to Jewish texts, making them freely available online for all.</p>

			<h1>TODO</h1>
			<p>The following is a non-exhaustive list of what still needs to be completed:</p>

			<div id=\"todoList\">
			<ul>
			<li>Include a visual listing of the following opinions on the Taryag Mitzvos:
				<strong>Rav Shlomo ibn Gabirol</strong>, <strong>Zohar HaRakiah</strong>, <strong>Semak</strong>, <strong>Sefer Charedim</strong>,
				<strong>Rav Saadiah Gaon</strong>, <strong>Sefer Yereim</strong>, <strong>Ri Albargaloni</strong>, <strong>Ata Hinchalta</strong>,
				<strong>Rav Eliyahu HaZaken</strong>, and perhaps <strong>Sefer HaMitzvos HaKatzar</strong> by the <strong>Chofetz Chaim</strong>.</li>
			<li>The ability to sort the mitzvos according to the Aseres HaDibros.
				The plan is to implement this for the listings of <strong>Rav Saadiah Gaon</strong>, as he already categorized them this way
				(although the two lists aren't exactly the same, which will create challenges), <strong>Semag</strong>
				(<strong>Ma'amar HaSeichel</strong> sorts his listing this way), and perhaps <strong>Ramban</strong>
				(who sorts some of the mitzvos this way). Also worth investigating is <strong>Keser Torah</strong> by <strong>Rav Dovid Vital</strong>.</li>
			<li>Make the website mobile friendly.</li>
			<li>Fix some efficiency bugs as the website is sometimes slow, and some other visual bugs.</li>
			<li>Add an efficient search bar.</li>
			</ul>
			</div>

			<h1>Help support us</h1>
			<p>There's a lot of work still left to do, and unfortunately we can't do it so quickly without funding.
				If you would like to help support us to accomplish our goals, please be in touch via email:
				<a href=\"mailto:contact@thetaryag.com\">contact@thetaryag.com</a>. Sponsorship opportunities are also available.
				We look forward to hearing from you.</p>

			<h1>Sources</h1>

			<p>The textual data for the website's database came from a variety of sources, and other resources were used to organize the information
			appropriately. The following is a listing of the various sources for the project:</p>

			<ul>
			<li><strong>All Mitzvos</strong>: We used the <strong>Chinuch</strong>'s titles as a basis, and the rest we came up with on our own.</li>
			<li><strong>Verses</strong>: We typed the Hebrew verses ourselves. For the English verses, we used <strong>Sefaria</strong>'s
				<a href="https://www.sefaria.org/Genesis.1?ven=Metsudah_Chumash,_Metsudah_Publications,_2009&lang=bi&aliyot=0"
				target="_blank"><em>Metsudah Chumash</em></a> translation.</li>
			<li><strong>Rambam</strong>: We used <strong>Sefaria</strong>'s text of
				<a href="https://www.sefaria.org/Sefer_HaMitzvot?lang=bi" target="_blank"><em>Sefer HaMitzvos</em></a> and 
			    <a href="https://www.sefaria.org/texts/Halakhah/Mishneh%20Torah" target="_blank"><em>Introduction to Sefer Madah</em></a>.</li>
			<li><strong>Ramban</strong>: We used <strong>Sefaria</strong>'s text of
				<a href="https://www.sefaria.org/Hasagot_HaRamban_on_Sefer_HaMitzvot?lang=bi" target="_blank"><em>Hasagos HaRamban</em> on <em>Sefer HaMitzvos</em></a>.
			    We used <em>Derech Mitzvosecha</em> <a href="https://hebrewbooks.org/pdfpager.aspx?req=30749&st=&pgnum=222" target="_blank">§ 1</a> to determine the
			    <strong>Ramban</strong>'s exact listing, as well as the latter's own summary at the end of <em>Sefer HaMitzvos</em>.</li>
			<li><strong>Chinuch</strong>: We used <strong>Sefaria</strong>'s text of <a href="https://www.sefaria.org/Sefer_HaChinukh?lang=bi" target="_blank"><em>Sefer HaChinuch</em></a>.
			    We categorized his <em>mitzvos</em> ourselves using his own text. For the older numbering system, we used an
			    <a href="https://hebrewbooks.org/pdfpager.aspx?req=40631&st=&pgnum=32&hilite=" target="_blank">older version</a> as a reference.</li>
			<li><strong>Semag</strong>: We used <strong>Sefaria</strong>'s text of
				<a href="https://www.sefaria.org/Sefer_Mitzvot_Gadol?lang=bi" target="_blank"><em>Sefer Mitzvos Gadol</em></a>.
				We used the <em>Mei Kama</em> edition <a href="https://tablet.otzar.org/book/book.php?book=22149&pagenum=17" target="_blank">[1]</a>
			    <a href="(https://tablet.otzar.org/book/book.php?book=22147&pagenum=4" target="_blank">[2]</a> to determine which <em>mitzvos</em> of the
			    <strong>Rambam</strong> the <strong>Semag</strong> was referencing. We also used <em>Derech Mitsvosecha</em>
			    <a href="https://hebrewbooks.org/pdfpager.aspx?req=30749&st=&pgnum=222" target="_blank">§ 1</a> and
			    <a href="https://hebrewbooks.org/pdfpager.aspx?req=30749&st=&pgnum=233" target="_blank">§ 2</a> as a reference.</li>
			<li><strong>Bahag</strong>: We used the <em>Machon Yerushalayim</em> edition of
				<a href="https://tablet.otzar.org/book/book.php?book=147045&pagenum=34" target="_blank"><em>Halachos Gedolos</em></a>
			    for the text and division of the <em>mitzvos</em>. Their division was determined by
			   	<a href="https://he.wikipedia.org/wiki/%D7%90%D7%91%D7%A8%D7%94%D7%9D_%D7%A9%D7%9E%D7%A2%D7%95%D7%9F_%D7%98%D7%A8%D7%95%D7%99%D7%91"
			 	target="_blank"><em>Rav Avraham Shimon Traube</em></a>, whose text, division, and notes can also be viewed
			 	<a href="https://hebrewbooks.org/pdfpager.aspx?req=14119&st=&pgnum=6" target="_blank">here</a>.</li>
			</ul>

			<h1>Source Code</h1>

			<p>The entire source code can be viewed on <a href="https://github.com/repwolfe/613" target="_blank"><strong>Github</strong></a>.</p>
			`;
		}

		this.$el.html(aboutText);
	},

	languageSwitch: function() {
		if (this.curLang === "he") {
			this.curLang = "en";
		}
		else {
			this.curLang = "he";
		}
		this.fillText();
	},

	setStartEnglish: function() {
		this.curLang = "en";
		this.fillText();
	}
});

module.exports = AboutAppView;