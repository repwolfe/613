var MoneiMitzvahAppView = require("./moneimitzvahappview");
var Bahag 	  = require("../../models/bahag");
var BahagList = require("../../collections/bahaglist");
var BahagView = require("../modelviews/bahagview");

var BahagAppView = MoneiMitzvahAppView.extend({

	pageDetailId: "bahag",
	currentCategory: "0",
	categoryTitlesHe: null,
	categoryTitlesEn: null,
	numInCategory: 0,

	initialize: function() {
		this.mitzvahList = new BahagList();

		this.categoryTitlesHe = [...Bahag.categoriesHe];	// clone
		this.categoryTitlesEn = [...Bahag.categoriesEn];

		MoneiMitzvahAppView.prototype.initialize.apply(this);

		for(let i = 0; i < this.categoryTitlesHe.length; ++i) {
			this.makeHeader(i).appendTo(this.$el.parent());
			$("<ul class=\"mitzvos\">").appendTo(this.$el.parent());
		}
	},

	destroy: function() {
		MoneiMitzvahAppView.prototype.destroy.call(this);

		// Go back to just one mitzvos <ul>
		$(".mitzvahCatHeader").remove();
		$(".mitzvos").remove();

		this.$el.empty();
	},

	makeHeader: function(category) {
		var header = $("<h1 class=\"mitzvahCatHeader\" id=\"mitzvahCatHeader" + category + "\">");
		header.html(this.categoryTitlesHe[category]);
		return header;
	},

	selectCorrectList: function(category) {
		this.currentCategory = category;
		this.$el.removeAttr("id");
		this.setElement($("#mitzvahCatHeader" + this.currentCategory).next());	// the adjacent mitzvos list
		this.$el.attr("id", "mitzvos");
	},

	addTotalToHeader: function() {
		// Add how many in this category to the header
		this.categoryTitlesHe[this.currentCategory] += " (" + this.numInCategory + ")";
		this.categoryTitlesEn[this.currentCategory] += " (" + this.numInCategory + ")";
		this.numInCategory = 0;

		var headerTitle;
		if (this.curLang === "he") {
			headerTitle = this.categoryTitlesHe[this.currentCategory];
		}
		else {
			headerTitle = this.categoryTitlesEn[this.currentCategory];
		}
		$("#mitzvahCatHeader" + this.currentCategory).html(headerTitle);
	},

	addOne: function(mitzvah) {
		var view = new BahagView({model: mitzvah});

		var category = mitzvah.get("categoryNum");
		if (this.currentCategory != category) {
			this.selectCorrectList(category);
			//this.addTotalToHeader();

			this.finishAdding();

			//this.makeHeader().appendTo(this.$el.parent());
			//this.$el.removeAttr("id");
			//this.$el.attr("class", "mitzvos");

			//this.makeNewList(this.$el.parent());
			this.startAdding();
		}

		++this.numInCategory;
		MoneiMitzvahAppView.prototype.addOne.call(this, view);
	},

	/**
	 * Adds a new list to the parent, and makes this view's element the new list
	 */
	makeNewList: function(parent) {
		var newList = $("<ul>");
		newList.appendTo(parent);
		newList.attr("id", "mitzvos");
		this.setElement(newList);
	},

	fetchComplete: function() {
		this.addTotalToHeader();

		MoneiMitzvahAppView.prototype.fetchComplete.call(this);
	},

	languageSwitch: function () {
		MoneiMitzvahAppView.prototype.languageSwitch.call(this);

		// Update the Header titles
		var headers = $(".mitzvahCatHeader");
		var headerTitles;
		if (this.curLang === "he") {
			headerTitles = this.categoryTitlesHe;
		}
		else {
			headerTitles = this.categoryTitlesEn;
		}

		for (var i = 0; i < headers.length; ++i) {
			$(headers[i]).html(headerTitles[i]);
		}
	}
});

module.exports = BahagAppView;