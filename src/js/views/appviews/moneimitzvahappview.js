var MoneiMitzvahAppView = Backbone.View.extend({
	curLang: "he",
	el: "#mitzvos",

	mitzvahList: null,

	startEnglish: false,

	initialize: function() {
		this.setElement(this.el);
		this.listenTo(this.mitzvahList, 'add', this.addOne);	// addOne to be implemented by subclasses
		this.listenTo(this.mitzvahList, 'reset', this.addAll);
		this.listenTo(this, 'fetchComplete', this.fetchComplete);

		var self = this;

		this.mitzvahList.fetch({
			success: function(collection, response, options) {
				self.trigger('fetchComplete');
			}
		});
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

	fetchComplete: function() {
		if (this.startEnglish) {
			this.languageSwitch();
			this.startEnglish = false;
		}
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
	},

	setStartEnglish: function() {
		this.startEnglish = true;
	}
});

module.exports = MoneiMitzvahAppView;