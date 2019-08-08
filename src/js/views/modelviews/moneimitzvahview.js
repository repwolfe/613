var _ = require("underscore");

var MoneiMitzvahView = Backbone.View.extend({
	tagName: "li",
	
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
			this.template = _.template($(this.templateEn).html());
			this.curLang = "en";
		}
		// Was English
		else {
			this.template = _.template($(this.templateHe).html());
			this.curLang = "he";
		}
		this.render();
	},

	render: function() {
		this.$el.html(this.template(this.model.toJSON()));

		var asehOrLoSaseh = this.model.get("asehOrLoSaseh");
		if (asehOrLoSaseh === "A") {
			this.$el.addClass("aseh");
			this.$el.removeClass("loSaaseh");
		}
		else if (asehOrLoSaseh === "L") {
			this.$el.addClass("loSaaseh");
			this.$el.removeClass("aseh");
		}

		return this;
	}
});

module.exports = MoneiMitzvahView;