var RambamList = require("../collections/rambamlist");
var RambamView = require("./rambamview");

var Rambams = new RambamList;

var RambamAppView = Backbone.View.extend({
	el: "#mitzvos",

	curLang: "he",

	initialize: function() {
		this.listenTo(Rambams, 'add', this.addOne);
		this.listenTo(Rambams, 'reset', this.addAll);

		Rambams.fetch();
		this.setSorting(Rambams.columnsHe);
	},

	destroy: function() {
		this.undelegateEvents();
		this.$el.removeData().unbind();

		this.$el.empty();
	},

	addOne: function(mitzvah) {
		var view = new RambamView({model: mitzvah});
		this.$el.append(view.render().el);
	},

	addAll: function() {
		Rambams.each(this.addOne, this);
	},

	languageSwitch: function() {
		Rambams.each(function(mitzvah) {
			mitzvah.trigger("languageSwitch");
		});
		if (this.curLang === "he") {
			this.setSorting(Rambams.columnsEn);
			this.curLang = "en";
		}
		else {
			this.setSorting(Rambams.columnsHe);
			this.curLang = "he";
		}
	},

	setSorting: function(columns) {
		$("#sorting").html("");
		var i;
		for (i in columns) {
			$("#sorting").append("<a href=\"#\">" + columns[i] + "</a>");
		}
	}
});

module.exports = RambamAppView;