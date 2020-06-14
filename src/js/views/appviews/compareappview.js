var PageDetail = require("../../models/pagedetail");
var MoneiMitzvah = require("../../models/moneimitzvah");
var ComparePanelView = require("./comparepanelview");

var CompareAppView = Backbone.View.extend({
	el: $("#compare"),

	pageDetailId: "compare",
	pageDetailsTag: "#pageDetailsText",

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

		this.listenTo(this, 'detailsFetchComplete', this.detailsFetchComplete);

		var self = this;
		this.pageDetails = new PageDetail({_id: this.pageDetailId});
		this.pageDetails.fetch({
			success: function(response, options) {
				self.trigger('detailsFetchComplete');
			}
		});
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

		var column = "";
		if (this.curLang === "he") {
			this.leftTitle.html("<b>" + this.leftTitleEn +"</b>");
			this.middleTitle.html("<b>Both</b>");
			this.rightTitle.html("<b>" + this.rightTitleEn +"</b>");

			this.curLang = "en";
			column = "englishDetails";
		}
		else {
			this.leftTitle.html("<b>" + this.leftTitleHe +"</b>");
			this.middleTitle.html("<b>שניהם</b>");
			this.rightTitle.html("<b>" + this.rightTitleHe +"</b>");

			this.curLang = "he";
			column = "hebrewDetails";
		}

		if (this.pageDetails != null) {
			$(this.pageDetailsTag).html(this.pageDetails.get(column));
		}
	},

	fetchComplete: function() {
		this.checkIfStartEnglish();
	},

	detailsFetchComplete: function() {		
		$(this.pageDetailsTag).html(this.pageDetails.get("hebrewDetails"));
		this.checkIfStartEnglish();
	},

	checkIfStartEnglish: function() {
		// @todo: find a better way to do this. As of now there's a delay before the language changes
		if (++this.fetchesCompleted == 4 && this.startEnglish) {
			this.languageSwitch();
			this.leftTitle.show();
			this.middleTitle.show();
			this.rightTitle.show();
			$(this.pageDetailsTag).show();
			this.startEnglish = false;
		}
	},

	setStartEnglish: function() {
		this.startEnglish = true;

		$(this.pageDetailsTag).hide();
		this.leftTitle.hide();
		this.middleTitle.hide();
		this.rightTitle.hide();
	}
});

module.exports = CompareAppView;