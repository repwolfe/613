var RambamList = require("../collections/rambamlist");
var MitzvahView = require("./mitzvahview");

var Rambams = new RambamList;

var AppView = Backbone.View.extend({
	el: $("#container"),

	curLang: "he",

	initialize: function() {
		this.listenTo(Rambams, 'add', this.addOne);
		this.listenTo(Rambams, 'reset', this.addAll);

		Rambams.fetch();
		this.setSorting(Rambams.columnsHe);
	},

	addOne: function(mitzvah) {
		var view = new MitzvahView({model: mitzvah});
		$("#mitzvos").append(view.render().el);
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

module.exports = AppView;