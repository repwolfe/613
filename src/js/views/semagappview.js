var SemagList = require("../collections/semaglist");
var SemagView = require("./semagview");

var Semags = new SemagList;

var SemagAppView = Backbone.View.extend({
	el: "#mitzvos",

	curLang: "he",

	initialize: function() {
		this.listenTo(Semags, 'add', this.addOne);
		this.listenTo(Semags, 'reset', this.addAll);

		Semags.fetch();
		//this.setSorting(Semags.columnsHe);
	},

	destroy: function() {
		this.undelegateEvents();
		this.$el.removeData().unbind();

		this.$el.empty();
	},

	addOne: function(mitzvah) {
		var view = new SemagView({model: mitzvah});
		this.$el.append(view.render().el);
	},

	addAll: function() {
		Semags.each(this.addOne, this);
	},

	languageSwitch: function() {
		Semags.each(function(mitzvah) {
			mitzvah.trigger("languageSwitch");
		});
		if (this.curLang === "he") {
			//this.setSorting(Semags.columnsEn);
			this.curLang = "en";
		}
		else {
			//this.setSorting(Semags.columnsHe);
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

module.exports = SemagAppView;