var MoneiMitzvahAppView = require("./moneimitzvahappview");
var RambanList = require("../../collections/rambanlist");
var RambanView = require("../modelviews/rambanview");

var RambanAppView = MoneiMitzvahAppView.extend({

	initialize: function() {
		this.mitzvahList = new RambanList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new RambanView({model: mitzvah});
		this.$el.append(view.render().el);
	}
});

module.exports = RambanAppView;