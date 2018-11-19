var css = require("../css/main.scss");

var Backbone = require("backbone");
var RambamAppView = require("./views/rambamappview");
var RambanAppView = require("./views/rambanappview");
var CompareAppView = require("./views/compareappview");

$(function() {

	switch(window.location.pathname) {
		case "/rambam":
			var App = new RambamAppView;
			break;
		case "/ramban":
			var App = new RambanAppView;
			break;
		case "/compare":
			$("#container").hide();
			$("#compare").show();
			var App = new CompareAppView;
			break;
		default:
			break;
	}
	
	var languageButton = "#language-btn";

	/**
	 * Switch the display to either English or Hebrew, changing text alignment and direction and format
	 */
	function languageClick() {
		// Was Hebrew
		if ($(languageButton).text() === "א") {
			$(languageButton).text("A");
			
			$("#container").attr("dir", "ltr");
			$("#compare").attr("dir", "ltr");

		}
		// Was English
		else {
			$(languageButton).text("א");

			$("#container").attr("dir", "rtl");
			$("#compare").attr("dir", "rtl");
		}

		App.languageSwitch();
	}

	$(languageButton).on("click", languageClick);
});