var css = require("../css/main.scss");

var Backbone = require("backbone");
var MoneiMitzvah   = require("./models/moneimitzvah");
var RambamAppView  = require("./views/appviews/rambamappview");
var RambanAppView  = require("./views/appviews/rambanappview");
var SemagAppView   = require("./views/appviews/semagappview");
var CompareAppView = require("./views/appviews/compareappview");

$(function() {

	var languageButton = "#language-btn";
	var moneiMitzvosList = "#moneiMitzvosList";

	var App;

	// Set up the buttons to display the monei mitzvos
	var Rambam = new MoneiMitzvah("/rambam", "rambam", "רמב\"ם", "Rambam");
	var Ramban = new MoneiMitzvah("/ramban", "ramban", "רמב\"ן", "Ramban");
	var Semag  = new MoneiMitzvah("/semag", "semag", "סמ\"ג", "Semag");
	var MoneiMitzvos = [Rambam, Ramban, Semag];
	var liToURL = new Map();

	for (const monei of MoneiMitzvos) {
		var element = document.createElement("li");
		element.innerHTML= monei.nameHe;
		$(element).attr("id", monei.id);
		$(element).click(function(e) {
			$(e.target).toggleClass("toggled");
			window.history.replaceState(null, null, liToURL.get(e.target.id));
			loadMitzvos();
		});
		liToURL.set(monei.id, monei.url);
		$(moneiMitzvosList).append(element);
	}

	loadMitzvos();

	/**
	 * Display the desired monei mitzvos lists, if any. If two are selected, show their comparison
	 */
	function loadMitzvos() {
		if (App != null) {
			App.destroy();
		}
		switch(window.location.pathname) {
			case Rambam.url:
				App = new RambamAppView();
				break;
			case Ramban.url:
				App = new RambanAppView();
				break;
			case Semag.url:
				App = new SemagAppView();
				break;
			case "/compare":
				$("#container").hide();
				$("#compare").show();
				App = new CompareAppView();
				break;
			default:
				break;
		}
		// If starting with English
		if ($(languageButton).text() === "A") {
			App.setStartEnglish();
		}
	}

	

	/**
	 * Switch the display to either English or Hebrew, changing text alignment and direction and format
	 */
	function languageClick() {
		// Was Hebrew
		if ($(languageButton).text() === "א") {
			$(languageButton).text("A");

			$(moneiMitzvosList).attr("dir", "ltr");
			$(moneiMitzvosList).removeClass("hebrew");
			$(moneiMitzvosList).addClass("english");
			$(moneiMitzvosList + " li").each(function(i) {
				$(this).text(MoneiMitzvos[i].nameEn);
			});
			
			$("#container").attr("dir", "ltr");
			$("#compare").attr("dir", "ltr");

		}
		// Was English
		else {
			$(languageButton).text("א");

			$(moneiMitzvosList).attr("dir", "rtl");
			$(moneiMitzvosList).removeClass("english");
			$(moneiMitzvosList).addClass("hebrew");
			$(moneiMitzvosList + " li").each(function(i) {
				$(this).text(MoneiMitzvos[i].nameHe);
			});

			$("#container").attr("dir", "rtl");
			$("#compare").attr("dir", "rtl");
		}

		App.languageSwitch();
	}

	$(languageButton).on("click", languageClick);
});