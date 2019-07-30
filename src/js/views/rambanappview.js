var RambanList = require("../collections/rambanlist");
var RambanView = require("./rambanview");

var Rambans = new RambanList;

var RambanAppView = Backbone.View.extend({
	el: "#mitzvos",

	curLang: "he",

	initialize: function() {
		this.listenTo(Rambans, 'add', this.addOne);
		this.listenTo(Rambans, 'reset', this.addAll);

		Rambans.fetch();
		//this.setSorting(Rambans.columnsHe);
	},

	destroy: function() {
		this.undelegateEvents();
		this.$el.removeData().unbind();

		this.$el.empty();
	},

	addOne: function(mitzvah) {
		var view = new RambanView({model: mitzvah});
		this.$el.append(view.render().el);
	},

	addAll: function() {
		Rambans.each(this.addOne, this);
	},

	languageSwitch: function() {
		Rambans.each(function(mitzvah) {
			mitzvah.trigger("languageSwitch");
		});
		if (this.curLang === "he") {
			//this.setSorting(Rambans.columnsEn);
			this.curLang = "en";
		}
		else {
			//this.setSorting(Rambans.columnsHe);
			this.curLang = "he";
		}
	}/*,

	setSorting: function(columns) {
		$("#sorting").html("");
		var i;
		for (i in columns) {
			$("#sorting").append("<a href=\"#\">" + columns[i] + "</a>");
		}
	}*/
});

module.exports = RambanAppView;