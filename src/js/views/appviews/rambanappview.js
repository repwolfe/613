var MoneiMitzvahAppView = require("./moneimitzvahappview");
var RambanList = require("../../collections/rambanlist");
var RambanView = require("../modelviews/rambanview");

var RambanAppView = MoneiMitzvahAppView.extend({

	pageDetailId: "ramban",

	initialize: function() {
		this.mitzvahList = new RambanList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new RambanView({model: mitzvah});
		MoneiMitzvahAppView.prototype.addOne.call(this, view);
	}
});

module.exports = RambanAppView;