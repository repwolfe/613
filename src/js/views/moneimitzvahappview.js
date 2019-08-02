var MoneiMitzvahAppView = Backbone.View.extend({
	curLang: "he",
	el: "#mitzvos",

	mitzvahList: null,

	initialize: function(child, list) {
		this.setElement(this.el);
		this.mitzvahList = list;
		this.listenTo(list, 'add', child.addOne);	// addOne to be implemented by subclasses
		this.listenTo(list, 'reset', child.addAll);

		list.fetch();
	},

	destroy: function() {
		this.mitzvahList.reset();
		this.undelegateEvents();
		this.$el.removeData().unbind();

		this.$el.empty();
	},

	addAll: function() {
		this.mitzvahList.each(this.addOne, this);
	},

	languageSwitch: function() {
		this.mitzvahList.each(function(mitzvah) {
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

module.exports = MoneiMitzvahAppView;