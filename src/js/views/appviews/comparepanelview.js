var CompareList = require("../../collections/comparelist");
var CompareView = require("../modelviews/compareview");
var MoneiMitzvahAppView = require("./moneimitzvahappview");

var ComparePanelView = MoneiMitzvahAppView.extend({

	count: 0,

	initialize: function(el, url) {
		this.el = el;

		this.mitzvahList = new CompareList();
		this.mitzvahList.url = url;

		MoneiMitzvahAppView.prototype.initialize.apply(this);
	},

	addOne: function(mitzvah) {
		var view = new CompareView({model: mitzvah});
		view.count =  ++this.count;
		this.$el.append(view.render().el);
	},

	addAll: function() {
		this.count = 0;
		this.mitzvahList.each(this.addOne, this);
	}
});

module.exports = ComparePanelView;