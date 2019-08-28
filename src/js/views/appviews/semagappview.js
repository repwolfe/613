var MoneiMitzvahAppView = require("./moneimitzvahappview");
var SemagList = require("../../collections/semaglist");
var SemagView = require("../modelviews/semagview");

var SemagAppView = MoneiMitzvahAppView.extend({

	initialize: function() {
		this.mitzvahList = new SemagList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new SemagView({model: mitzvah});
		MoneiMitzvahAppView.prototype.addOne.call(this, view);
	}
});

module.exports = SemagAppView;