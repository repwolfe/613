var MoneiMitzvahAppView = require("./moneimitzvahappview");
var RambamList = require("../collections/rambamlist");
var RambamView = require("./rambamview");

var RambamAppView = MoneiMitzvahAppView.extend({

	initialize: function() {
		// Call super and pass it the collections/model-view class
		MoneiMitzvahAppView.prototype.initialize(this, new RambamList());
		this.setSorting(this.mitzvahList.columnsHe);
	},

	addOne: function(mitzvah) {
		var view = new RambamView({model: mitzvah});
		this.$el.append(view.render().el);
	},

	languageSwitch: function() {
		MoneiMitzvahAppView.prototype.languageSwitch();
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