var MoneiMitzvahAppView = require("./moneimitzvahappview");
var MitzvahList = require("../../collections/mitzvahlist");
var MitzvahView = require("../modelviews/mitzvahview");

var MitzvosAppView = MoneiMitzvahAppView.extend({

	count: 0,

	initialize: function() {
		this.mitzvahList = new MitzvahList();
		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new MitzvahView({model: mitzvah});
		view.count =  ++this.count;
		MoneiMitzvahAppView.prototype.addOne.call(this, view);
	},

	// @override
	viewClicked: function(view) {
		if (view == this.previouslySelected) {
			this.previouslySelected = null;
		}
		else {
			if (this.previouslySelected != null) {
				this.previouslySelected.onClick({ fake_click: true });
			}
			this.previouslySelected = view;
		}
	}
});

module.exports = MitzvosAppView;