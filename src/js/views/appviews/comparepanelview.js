var CompareList = require("../../collections/comparelist");
var CompareView = require("../modelviews/compareview");
var MoneiMitzvahAppView = require("./moneimitzvahappview");

var ComparePanelView = MoneiMitzvahAppView.extend({

	count: 0,
	hasDetails: false,

	initialize: function(el, url) {
		this.el = el;

		this.mitzvahList = new CompareList();
		this.mitzvahList.url = url;

		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new CompareView({model: mitzvah});
		view.count =  ++this.count;
		MoneiMitzvahAppView.prototype.addOne.call(this, view);
	},

	addAll: function() {
		this.count = 0;
		this.mitzvahList.each(this.addOne, this);
	},

	fetchComplete: function() {
		// override parent function and do nothing
	}
});

module.exports = ComparePanelView;