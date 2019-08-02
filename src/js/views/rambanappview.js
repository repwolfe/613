var MoneiMitzvahAppView = require("./moneimitzvahappview");
var RambanList = require("../collections/rambanlist");
var RambanView = require("./rambanview");

var RambanAppView = MoneiMitzvahAppView.extend({

	initialize: function() {
		// Call super and pass it the collections/model-view class
		MoneiMitzvahAppView.prototype.initialize(this, new RambanList());
	},

	addOne: function(mitzvah) {
		var view = new RambanView({model: mitzvah});
		this.$el.append(view.render().el);
	}
});

module.exports = RambanAppView;