var MoneiMitzvahAppView = require("./moneimitzvahappview");
var BahagList = require("../../collections/bahaglist");
var BahagView = require("../modelviews/bahagview");

var BahagAppView = MoneiMitzvahAppView.extend({

	initialize: function() {
		this.mitzvahList = new BahagList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new BahagView({model: mitzvah});
		MoneiMitzvahAppView.prototype.addOne.call(this, view);
	}
});

module.exports = BahagAppView;