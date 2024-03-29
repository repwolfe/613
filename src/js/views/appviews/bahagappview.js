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

	/**
	 * TODO: Fix the way this is set up. It's assuming the Bahag's list is in order
	 * but if it were to be sorted a different way then the different category
	 * lists and headers would break
	 */
	initialize: function() {
		this.mitzvahList = new BahagList();

		this.categoryTitlesHe = [...Bahag.categoriesHe];	// clone
		this.categoryTitlesEn = [...Bahag.categoriesEn];

		this.currentSortingId = "_id";	// Instead of mitzvahId
		var mitzvahListUrl = this.mitzvahList.url;
		this.mitzvahList.url += this.sortByParam + this.currentSortingId;

		MoneiMitzvahAppView.prototype.initialize.apply(this);
		this.mitzvahListUrl = mitzvahListUrl;		// super() overrides it, so reset it
		this.makeHeader().insertAfter(this.$el.parent().children().eq(0));
	},

	destroy: function() {
		MoneiMitzvahAppView.prototype.destroy.call(this);

		// Go back to just one mitzvos <ul>
		$(".mitzvahCatHeader").remove();
		$(".mitzvos").remove();

		this.$el.empty();
	},

	makeHeader: function() {
		var header = $("<h1 class=\"mitzvahCatHeader\">");
		header.html(this.categoryTitlesHe[this.currentCategory]);
		return header;
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
		$(".mitzvahCatHeader").last().html(headerTitle);
	},

	addOne: function(mitzvah) {
		var view = new BahagView({model: mitzvah});

		var category = mitzvah.get("categoryNum");
		if (this.currentCategory != category) {
			this.addTotalToHeader();
			this.currentCategory = category;

			this.finishAdding();

			this.makeHeader().appendTo(this.$el.parent());
			this.$el.removeAttr("id");
			this.$el.attr("class", "mitzvos");

			this.makeNewList(this.$el.parent());
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