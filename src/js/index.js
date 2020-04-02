var css = require("../css/main.scss");

var Backbone 		= require("backbone");
var MoneiMitzvah   	= require("./models/moneimitzvah");
var RambamAppView  	= require("./views/appviews/rambamappview");
var RambanAppView  	= require("./views/appviews/rambanappview");
var ChinuchAppView  = require("./views/appviews/chinuchappview");
var SemagAppView   	= require("./views/appviews/semagappview");
var BahagAppView	= require("./views/appviews/bahagappview");
var CompareAppView 	= require("./views/appviews/compareappview");

$(function() {

	var languageButton = "#language-btn";
	var moneiMitzvosList = "#moneiMitzvosList";

	var App;
	var firstTime = true;

	// Set up the buttons to display the monei mitzvos
	var Mitzvos = new MoneiMitzvah("/mitzvos",	"all",		"כל המצוות", 	"All Mitzvos");
	var Rambam 	= new MoneiMitzvah("/rambam",	"rambam", 	"רמב\"ם", 	"Rambam");
	var Ramban 	= new MoneiMitzvah("/ramban",	"ramban", 	"רמב\"ן", 	"Ramban");
	var Chinuch = new MoneiMitzvah("/chinuch",	"chinuch", 	"חינוך", 		"Chinuch");
	var Semag  	= new MoneiMitzvah("/semag",	"semag", 	"סמ\"ג", 	"Semag");
	var Bahag  	= new MoneiMitzvah("/bahag",	"bahag", 	"בה\"ג", 	"Bahag");
	var MoneiMitzvos = [Mitzvos, Rambam, Ramban, Chinuch, Semag, Bahag];
	var liToURL = new Map();

	var recentlySelected = "";
	var lessRecentlySelected = "";

	for (const monei of MoneiMitzvos) {
		var element = document.createElement("li");
		element.innerHTML= monei.nameHe;
		$(element).attr("id", monei.id);
		$(element).click(function(e) {	// Toggle click event handler
			$(e.target).toggleClass("toggled");
			var clickedNow = e.target.id;
			var newUrl;

			// Store previously selected monei mitzvah URL, in the event that it wasn't just deselected
			var recentUrl = "";
			if (recentlySelected !== "") {
				recentUrl = liToURL.get(recentlySelected);
			}

			if (clickedNow === recentlySelected) {	// If just deselected previously selected
				if (lessRecentlySelected !== "") {	// If ever clicked anything else
					newUrl = liToURL.get(lessRecentlySelected);
					recentlySelected = lessRecentlySelected;		// pretend older selected was all that has been ever clicked
					lessRecentlySelected = "";
				}
				else {	// If not, have nothing selected
					newUrl = "/";
					recentlySelected = "";
				}
			}
			else if (clickedNow === lessRecentlySelected) {		// If just deselected older selected
				newUrl = recentUrl;
				lessRecentlySelected = "";
			}
			else {	// Just selected something new; display compare view with previously selected
				if (lessRecentlySelected !== "") {
					$("li#" + lessRecentlySelected).toggleClass("toggled");		// untoggle older selected button
				}

				newUrl = recentUrl + liToURL.get(clickedNow);

				lessRecentlySelected = recentlySelected;
				recentlySelected = clickedNow;
			}

			window.history.replaceState(null, null, newUrl);

			loadMitzvos();
		});
		liToURL.set(monei.id, monei.url);
		$(moneiMitzvosList).append(element);
	}

	loadMitzvos();
	firstTime = false;

	/**
	 * Display the desired monei mitzvos lists, if any. If two are selected, show their comparison
	 */
	function loadMitzvos() {
		if (App != null) {
			App.destroy();
			App = null;
		}

		var urlPaths = window.location.pathname.split("/");	// The first entry will be empty

		var selectingOne = urlPaths.length === 3 && !isNaN(urlPaths[2]);	// ex: /rambam/52

		if (urlPaths.length === 2  || selectingOne) {
			$("#compare").hide();
			$("#container").show();
			var theUrl = "/" + urlPaths[1];
			var validUrl = true;
			switch(theUrl) {
				case Rambam.url:
					App = new RambamAppView();
					break;
				case Ramban.url:
					App = new RambanAppView();
					break;
				case Chinuch.url:
					App = new ChinuchAppView();
					break;
				case Semag.url:
					App = new SemagAppView();
					break;
				case Bahag.url:
					App = new BahagAppView();
					break;
				default:
					validUrl = false;
			}
			if (validUrl && firstTime) {
				// Pretoggle the correct buttons
				recentlySelected = urlPaths[1];
				$("li#" + recentlySelected).toggleClass("toggled");

				if (selectingOne) {
					App.selectOne(urlPaths[2]);
				}
			}
		}
		else if (urlPaths.length === 3) {
			// Make sure the two monei mitzvos are valid and not the same one
			var first = "/" + urlPaths[1];
			var second = "/" + urlPaths[2];
			var valid = false;
			if (first !== second) {
				for (const monei1 of MoneiMitzvos) {
					if (first === monei1.url) {
						for (const monei2 of MoneiMitzvos) {
							if (second === monei2.url) {
								$("#container").hide();
								$("#compare").show();
								App = new CompareAppView(monei1, monei2);
								valid = true;

								if (firstTime) {
									// Pretoggle the correct buttons
									lessRecentlySelected = urlPaths[1];
									recentlySelected = urlPaths[2];
									$("li#" + recentlySelected).toggleClass("toggled");
									$("li#" + lessRecentlySelected).toggleClass("toggled");
								}
								break;
							}
						}
						break;
					}
				}
			}
			if (!valid) {
				// @todo Display error page
			}
		}
		else if (urlPaths.length > 3) {
			// @todo Display error page
		}
		else {
			// @todo Display homepage
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