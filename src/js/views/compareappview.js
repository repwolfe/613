var ComparePanelView = require("./comparepanelview");

var LeftList 	= new ComparePanelView;
var MiddleList	= new ComparePanelView;
var RightList 	= new ComparePanelView;

var CompareAppView = Backbone.View.extend({
	el: $("#compare"),
	curLang: "he",

	initialize: function() {
		LeftList.el = $("#left");
		LeftList.listEl = "#leftMitzvos";
		LeftList.listUrl = '/db/rambam/ramban';
		LeftList.load();

		MiddleList.el = $("#middle");
		MiddleList.listEl = "#midMitzvos";
		MiddleList.listUrl = '/db/rambam/ramban?both=yes';
		MiddleList.load();

		RightList.el = $("#right");
		RightList.listEl = "#rightMitzvos";
		RightList.listUrl = "/db/ramban/rambam";
		RightList.load();
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