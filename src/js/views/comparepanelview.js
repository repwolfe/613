var CompareList = require("../collections/comparelist");
var CompareView = require("./compareview");

var ComparePanelView = Backbone.View.extend({
	curLang: "he",
	listUrl: "",
	listEl: "",
	count: 0,

	initialize: function() {
		this.TheList = new CompareList;
		this.listenTo(this.TheList, 'add', this.addOne);
		this.listenTo(this.TheList, 'reset', this.addAll);
	},

	load: function() {
		this.TheList.url = this.listUrl;
		this.TheList.fetch();
	},

	addOne: function(mitzvah) {
		var view = new CompareView({model: mitzvah});
		view.count =  ++this.count;
		$(this.listEl).append(view.render().el);
	},

	addAll: function() {
		this.count = 0;
		this.TheList.each(this.addOne, this);
	},

	languageSwitch: function() {
		this.TheList.each(function(mitzvah) {
			mitzvah.trigger("languageSwitch");
		});
		if (this.curLang === "he") {
			this.curLang = "en";
		}
		else {
			this.curLang = "he";
		}
	}
});

module.exports = ComparePanelView;