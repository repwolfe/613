var MoneiMitzvahAppView = require("./moneimitzvahappview");
var ChinuchList = require("../../collections/chinuchlist");
var ChinuchView = require("../modelviews/chinuchview");

var ChinuchAppView = MoneiMitzvahAppView.extend({

	initialize: function() {
		this.mitzvahList = new ChinuchList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new ChinuchView({model: mitzvah});
		this.$el.append(view.render().el);
	}
});

module.exports = ChinuchAppView;