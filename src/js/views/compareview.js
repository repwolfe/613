var _ = require("underscore");

var templateHe = "#compare-template-he";
var templateEn = "#compare-template-en";

var CompareView = Backbone.View.extend({
	tagName: "li",
	template: _.template($(templateHe).html()),

	count: 0,
	
	curLang: "he",

	initialize: function() {
		this.listenTo(this.model, "languageSwitch", this.languageSwitch);
	},

	/**
	 * Update the template based on which language is being displayed
	 */
	languageSwitch: function() {
		// Was Hebrew
		if (this.curLang === "he") {
			this.template = _.template($(templateEn).html());
			this.curLang = "en";
		}
		// Was English
		else {
			this.template = _.template($(templateHe).html());
			this.curLang = "he";
		}
		this.render();
	},

	render: function() {
		this.model.set("count", this.count);
		
		this.$el.html(this.template(this.model.toJSON()));

		var asehOrLoSaseh = this.model.get("asehOrLoSaseh");
		var backgroundCss = "";
		if (asehOrLoSaseh === "A") {
			backgroundCss = "#00ff08";
		}
		else if (asehOrLoSaseh === "L") {
			backgroundCss = "#ff3b00";
		}
		else {
			backgroundCss = "#000";
		}
		this.$el.css({
			"background": backgroundCss
		});

		return this;
	}
});

module.exports = CompareView;