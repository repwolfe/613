# The Taryag Mitzvos התרי"ג מצות
An online interface to explore and compare the listings of the 613 commandments.

https://thetaryag.com

## Overview
Jewish tradition teaches us that there are 613 commandments (see *Makkos* 23b) in the *Torah* (the Five Books of Moses), known as the *Taryag Mitzvos*.
A cursory glance at the *Torah* will yield many more than 613 commandents. Therefore, there must be some sort of criteria to determine what makes the list of *Taryag Mitzvos*.
However, the Jewish Sages never specified which commandments written in the *Torah* made the list. The *Rishonim* (the Medieval Rabbinic scholars)
argued about the listing of the commandments, and it seems that all these opinions were never collected in an organized way.
The purpose of this project is to present most of the opinions in a visually pleasing way. The *mitzvos* can be viewed, explored, and sorted,
according to how each opinion lists them.

In addition to being able to view each opinion's listing, there's the ability to compare two lists at once, seeing where they agree, and where they differ.

Finally, because of the differing opinions as to what makes the list, there ends up being more than 613 unique *mitzvos*. The entire accumulated list can be viewed,
and each *mitzvah* (command) displays who counts it in their list. A link is provided to quickly navigate to that individual's list, to see how they formulate it.

The goal is to have the entire site eventually be bilingual. Everything is in Hebrew by default, but the language can be changed to English. Data that hasn't yet been
translated will remain being displayed in Hebrew.

## Technologies
 - [Slim](http://www.slimframework.com/) (PHP framework for a RESTful database access)
 - [sqlite](https://www.sqlite.org/index.html) (to compile the .sql files into a read-only database)
 - [webpack](https://github.com/webpack) using Node.js (to compile the .js and .css files)
 - [Backbone.js](https://github.com/jashkenas/backbone/) (to create UI elements from the database)
 - [jQuery](https://jquery.com/)
 
## Setup
  1. Pull the project from git
  2. Install Slim, which creates a folder called `vendor`
  3. Navigate to the `db/scripts/` folder. Using sqlite, run the command `.read db.sql`, and then `.backup ../db.db`
  4. Run the command `npm run build`, which creates an `index.php` file in the home directory, and builds `dist/bundle[hash].js`
  
## Sources
The textual data for the website's database came from a variety of sources, and other resources were used to organize the information appropriately.
The following is a listing of the various sources for the project:

 - **All Mitzvos**: We used the **Chinuch**'s titles as a basis, and the rest we came up with on our own
 - **Rambam**: We used **Sefaria**'s text of [*Sefer HaMitzvos*](https://www.sefaria.org/Sefer_HaMitzvot?lang=bi) and 
     [*Introduction to Sefer HaMadah*](https://www.sefaria.org/texts/Halakhah/Mishneh%20Torah).
 - **Ramban**: We used **Sefaria**'s text of [*Hasagos HaRamban to Sefer HaMitzvos*](https://www.sefaria.org/Hasagot_HaRamban_on_Sefer_HaMitzvot?lang=bi).
     We used *Derech Mitzvosecha* § 1 to determine the **Ramban**'s exact listing, as well as the latter's own summary at the end of *Sefer HaMitzvos*.
 - **Chinuch**: We used **Sefaria**'s text of [*Sefer HaChinuch*](https://www.sefaria.org/Sefer_HaChinukh?lang=bi).
     We categorized his *mitzvos* ourselves using his own text.
     For the older numbering system, we used an [older version](https://hebrewbooks.org/pdfpager.aspx?req=40631&st=&pgnum=32&hilite=) as a reference.
 - **Semag**: We used **Sefaria**'s text of [*Sefer Mitzvos Gadol*](https://www.sefaria.org/Sefer_Mitzvot_Gadol?lang=bi).
     We used the *Mei Kama* edition [[1]](https://tablet.otzar.org/book/book.php?book=22149&pagenum=17)
     [[2]](https://tablet.otzar.org/book/book.php?book=22147&pagenum=4)
     to determine which *mitzvos* of the **Rambam** the **Semag** was concurring with.
 - **Bahag**: We used the *Machon Yerushalayim* edition of *Halachos Gedolos* for the text and division of the *mitzvos*.
     Their division was determined by
     [*Rav Avraham Shimon Traube*](https://he.wikipedia.org/wiki/%D7%90%D7%91%D7%A8%D7%94%D7%9D_%D7%A9%D7%9E%D7%A2%D7%95%D7%9F_%D7%98%D7%A8%D7%95%D7%99%D7%91),
     whose text, division, and notes can also be viewed [here](https://hebrewbooks.org/pdfpager.aspx?req=14119&st=&pgnum=6).
