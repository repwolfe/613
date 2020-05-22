var MoneiMitzvah = require("../../models/moneimitzvah");
var ComparePanelView = require("./comparepanelview");

var CompareAppView = Backbone.View.extend({
	el: $("#compare"),
	curLang: "he",
	fetchesCompleted: 0,

	/**
	 * @params MoneiMitzvah left, right
	 */
	initialize: function(left, right) {
		this.leftTitle = $("#leftTitle");
		this.leftTitleHe = left.nameHe;
		this.leftTitleEn = left.nameEn;
		this.leftTitle.html("<b>" + this.leftTitleHe +"</b>");

		this.middleTitle = $("#middleTitle");

		this.rightTitle = $("#rightTitle");
		this.rightTitleHe = right.nameHe;
		this.rightTitleEn = right.nameEn;
		this.rightTitle.html("<b>" + this.rightTitleHe +"</b>");

		var dbUrl = "/db";
		var leftListUrl = dbUrl + left.url + right.url;
		this.LeftList	= new ComparePanelView("#leftMitzvos", leftListUrl);
		this.listenTo(this.LeftList, 'fetchComplete', this.fetchComplete);

		this.MiddleList = new ComparePanelView("#midMitzvos", leftListUrl + "?both=yes");
		this.listenTo(this.MiddleList, 'fetchComplete', this.fetchComplete);

		this.RightList 	= new ComparePanelView("#rightMitzvos", dbUrl + right.url + left.url);
		this.listenTo(this.RightList, 'fetchComplete', this.fetchComplete);
	},

	destroy: function() {
		this.LeftList.destroy();
		this.MiddleList.destroy();
		this.RightList.destroy();

		this.undelegateEvents();
	},

	languageSwitch: function() {
		this.LeftList.languageSwitch();
		this.MiddleList.languageSwitch();
		this.RightList.languageSwitch();

		if (this.curLang === "he") {
			this.leftTitle.html("<b>" + this.leftTitleEn +"</b>");
			this.middleTitle.html("<b>Both</b>");
			this.rightTitle.html("<b>" + this.rightTitleEn +"</b>");

			this.curLang = "en";
		}
		else {
			this.leftTitle.html("<b>" + this.leftTitleHe +"</b>");
			this.middleTitle.html("<b>שניהם</b>");
			this.rightTitle.html("<b>" + this.rightTitleHe +"</b>");

			this.curLang = "he";
		}
	},

	fetchComplete: function() {
		// @todo: find a better way to do this. As of now there's a delay before the language changes
		if (++this.fetchesCompleted == 3 && this.startEnglish) {
			this.languageSwitch();
			this.startEnglish = false;
		}
	},

	setStartEnglish: function() {
		this.startEnglish = true;
	}
});

module.exports = CompareAppView;