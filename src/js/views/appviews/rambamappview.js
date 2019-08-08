var MoneiMitzvahAppView = require("./moneimitzvahappview");
var RambamList = require("../../collections/rambamlist");
var RambamView = require("../modelviews/rambamview");

var RambamAppView = MoneiMitzvahAppView.extend({

	initialize: function() {
		this.mitzvahList = new RambamList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
		this.setSorting(this.mitzvahList.columnsHe);
	},

	addOne: function(mitzvah) {
		var view = new RambamView({model: mitzvah});
		this.$el.append(view.render().el);
	},

	languageSwitch: function() {
		MoneiMitzvahAppView.prototype.languageSwitch.apply(this);
		if (this.curLang === "en") {
			this.setSorting(this.mitzvahList.columnsEn);
		}
		else {
			this.setSorting(this.mitzvahList.columnsHe);
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