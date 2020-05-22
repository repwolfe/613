var MoneiMitzvahAppView = require("./moneimitzvahappview");
var Bahag 	  = require("../../models/bahag");
var BahagList = require("../../collections/bahaglist");
var BahagView = require("../modelviews/bahagview");

var BahagAppView = MoneiMitzvahAppView.extend({

	currentCategory: "0",

	initialize: function() {
		this.mitzvahList = new BahagList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
		this.makeHeader().prependTo(this.$el.parent());
	},

	makeHeader: function() {
		var header = $("<h1 class=\"mitzvahCatHeader\">");
		header.html(Bahag.categoriesHe[this.currentCategory]);
		return header;
	},

	addOne: function(mitzvah) {
		var view = new BahagView({model: mitzvah});

		var category = mitzvah.get("categoryNum");
		if (this.currentCategory != category) {
			this.currentCategory = category;

			this.makeHeader().appendTo(this.$el.parent());
			this.$el.removeAttr("id");
			this.$el.attr("class", "mitzvos");

			this.makeNewList(this.$el.parent());
		}

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

	destroy: function() {
		MoneiMitzvahAppView.prototype.destroy.call(this);

		// Go back to just one <ul>
		var parent = this.$el.parent();
		parent.empty();

		this.makeNewList(parent);
	},

	languageSwitch: function () {
		MoneiMitzvahAppView.prototype.languageSwitch.call(this);

		// Update the Header titles
		var headers = $(".mitzvahCatHeader");
		var headerTitles;
		if (this.curLang === "he") {
			headerTitles = Bahag.categoriesHe;
		}
		else {
			headerTitles = Bahag.categoriesEn;
		}

		for (var i = 0; i < headers.length; ++i) {
			$(headers[i]).html(headerTitles[i]);
		}
	}
});

module.exports = BahagAppView;