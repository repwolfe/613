var MoneiMitzvahAppView = require("./moneimitzvahappview");
var Chinuch		= require("../../models/chinuch");
var ChinuchList = require("../../collections/chinuchlist");
var ChinuchView = require("../modelviews/chinuchview");

var ChinuchAppView = MoneiMitzvahAppView.extend({

	pageDetailId: "chinuch",

	currentCategory: "",
	categoryTitlesHe: null,
	categoryTitlesEn: null,
	numInCategory: 0,

	initialize: function() {
		this.mitzvahList = new ChinuchList();
		this.listenTo(this, 'sortFetchComplete', this.addTotalToHeader);
		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	/**
	 * @override
	 */
	emptyList: function() {
		this.mitzvahList.reset();
		this.currentCategory = "";
		this.numInCategory = 0;
		
		// Go back to just one mitzvos <ul>
		$(".mitzvahCatHeader").remove();
		$(".mitzvos").remove();

		this.$el.empty();
	},

	makeHeader: function() {
		var header = $("<h1 class=\"mitzvahCatHeader\">");
		this.setHeaderTitle(header);
		return header;
	},

	setHeaderTitle: function(header) {
		var headerTitle;
		if (this.curLang === "he") {
			headerTitle = this.categoryTitlesHe[this.currentCategory];
		}
		else {
			headerTitle = this.categoryTitlesEn[this.currentCategory];
		}
		header.html(headerTitle);
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

	determineSortingTitles: function() {
		switch (this.sortByValue) {
			case "whereApplies":
				this.categoryTitlesHe = [...Chinuch.whereAppliesHe];	// clone
				this.categoryTitlesEn = [...Chinuch.whereAppliesEn];
				break;
			case "whenApplies":
				this.categoryTitlesHe = [...Chinuch.whenAppliesHe];
				this.categoryTitlesEn = [...Chinuch.whenAppliesEn];
				break;
			case "whoApplies":
				this.categoryTitlesHe = [...Chinuch.whoAppliesHe];
				this.categoryTitlesEn = [...Chinuch.whoAppliesEn];
				break;
			case "punishment":
				this.categoryTitlesHe = [...Chinuch.punishmentHe];
				this.categoryTitlesEn = [...Chinuch.punishmentEn];
				break;
		}
		// Make sure the English titles are capitalized
		this.categoryTitlesEn = this.categoryTitlesEn.map(function(str) {
			return str.charAt(0).toUpperCase() + str.slice(1);
		});
	},

	addTotalToHeader: function() {
		// Add how many in this category to the header
		this.categoryTitlesHe[this.currentCategory] += " (" + this.numInCategory + ")";
		this.categoryTitlesEn[this.currentCategory] += " (" + this.numInCategory + ")";
		this.numInCategory = 0;
		this.setHeaderTitle($(".mitzvahCatHeader").last());
	},

	addOne: function(mitzvah) {
		var view = new ChinuchView({model: mitzvah});

		if (this.sortByValue !== "" && this.sortByValue !== "oldMitzvahNumber") {
			if (this.currentCategory === "") {	// first time
				this.determineSortingTitles();
				this.currentCategory = "0";
				this.makeHeader().insertAfter(this.$el.parent().children().eq(0));
			}

			var category = mitzvah.get(this.sortByValue);

			if (category != this.currentCategory) {
				this.addTotalToHeader();

				this.currentCategory = category;

				this.finishAdding();

				this.makeHeader().appendTo(this.$el.parent());
				this.$el.removeAttr("id");
				this.$el.attr("class", "mitzvos");

				this.makeNewList(this.$el.parent());
				this.startAdding();
			}
		}

		++this.numInCategory;
		MoneiMitzvahAppView.prototype.addOne.call(this, view);
	},

	languageSwitch: function() {
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

module.exports = ChinuchAppView;