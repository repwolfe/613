var css = require("../css/main.scss");

var Backbone = require("backbone");
var AppView = require("./views/appview");

$(function() {
	var App = new AppView;
	
	var languageButton = "#language-btn";

	/**
	 * Switch the display to either English or Hebrew, changing text alignment and direction and format
	 */
	function languageClick() {
		// Was Hebrew
		if ($(languageButton).text() === "א") {
			$(languageButton).text("A");
			
			$("#container").attr("dir", "ltr");

		}
		// Was English
		else {
			$(languageButton).text("א");

			$("#container").attr("dir", "rtl");
		}

		App.languageSwitch();
	}

	$(languageButton).on("click", languageClick);
});