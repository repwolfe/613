var MoneiMitzvahAppView = require("./moneimitzvahappview");
var SemagList = require("../collections/semaglist");
var SemagView = require("./semagview");

var SemagAppView = MoneiMitzvahAppView.extend({

	initialize: function() {
		// Call super and pass it the collections/model-view class
		MoneiMitzvahAppView.prototype.initialize(this, new SemagList());
	},

	addOne: function(mitzvah) {
		var view = new SemagView({model: mitzvah});
		this.$el.append(view.render().el);
	}
});

module.exports = SemagAppView;