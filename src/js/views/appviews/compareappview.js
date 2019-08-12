var MoneiMitzvah = require("../../models/moneimitzvah");
var ComparePanelView = require("./comparepanelview");

var CompareAppView = Backbone.View.extend({
	el: $("#compare"),
	curLang: "he",

	/**
	 * @params MoneiMitzvah left, right
	 */
	initialize: function(left, right) {
		var dbUrl = "/db";
		var leftListUrl = dbUrl + left.url + right.url;
		this.LeftList	= new ComparePanelView("#leftMitzvos", leftListUrl);
		this.MiddleList = new ComparePanelView("#midMitzvos", leftListUrl + "?both=yes");
		this.RightList 	= new ComparePanelView("#rightMitzvos", dbUrl + right.url + left.url);
	},

	destroy: function() {
		this.LeftList.destroy();
		this.MiddleList.destroy();
		this.RightList.destroy();

		this.undelegateEvents();
	},

	languageSwitch: function() {
		LeftList.languageSwitch();
		MiddleList.languageSwitch();
		RightList.languageSwitch();

		if (this.curLang === "he") {
			$("#leftTitle").removeClass("hebrew");
			$("#leftTitle").addClass("english");
			$("#leftTitle").html("<b>Rambam</b>");

			$("#middleTitle").removeClass("hebrew");
			$("#middleTitle").addClass("english");
			$("#middleTitle").html("<b>Both</b>");

			$("#rightTitle").removeClass("hebrew");
			$("#rightTitle").addClass("english");
			$("#rightTitle").html("<b>Ramban</b>");

			this.curLang = "en";
		}
		else {
			$("#leftTitle").removeClass("english");
			$("#leftTitle").addClass("hebrew");
			$("#leftTitle").html("<b>רמב\"ם</b>");

			$("#middleTitle").removeClass("english");
			$("#middleTitle").addClass("hebrew");
			$("#middleTitle").html("<b>שניהם</b>");

			$("#rightTitle").removeClass("english");
			$("#rightTitle").addClass("hebrew");
			$("#rightTitle").html("<b>רמב\"ן</b>");

			this.curLang = "he";
		}
	},
});

module.exports = CompareAppView;