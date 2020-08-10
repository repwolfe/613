var MoneiMitzvahAppView = require("./moneimitzvahappview");
var RambamList = require("../../collections/rambamlist");
var RambamView = require("../modelviews/rambamview");

var RambamAppView = MoneiMitzvahAppView.extend({

	pageDetailId: "rambam",

	initialize: function() {
		this.mitzvahList = new RambamList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new RambamView({model: mitzvah});
		MoneiMitzvahAppView.prototype.addOne.call(this, view);
	}
});

module.exports = RambamAppView;