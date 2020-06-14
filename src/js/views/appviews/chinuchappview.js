var MoneiMitzvahAppView = require("./moneimitzvahappview");
var ChinuchList = require("../../collections/chinuchlist");
var ChinuchView = require("../modelviews/chinuchview");

var ChinuchAppView = MoneiMitzvahAppView.extend({

	pageDetailId: "chinuch",

	initialize: function() {
		this.mitzvahList = new ChinuchList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new ChinuchView({model: mitzvah});
		MoneiMitzvahAppView.prototype.addOne.call(this, view);
	}
});

module.exports = ChinuchAppView;