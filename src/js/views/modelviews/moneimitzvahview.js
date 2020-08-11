var _ = require("underscore");

var MoneiMitzvahView = Backbone.View.extend({
	tagName: "li",

	HEBREW: 0,
	ENGLISH: 1,
	HEB_TAG: "he",
	EN_TAG: "en",
	
	curLang: "he",
	selected: false,

	initialize: function() {
		this.listenTo(this.model, "languageSwitch", this.languageSwitch);

		this.templates = [this.templateHe, this.templateEn];
	},

	events: {
		"click": "onClick"
	},

	/**
	 * Update the template based on which language is being displayed
	 */
	languageSwitch: function() {
		// Was Hebrew
		if (this.curLang === this.HEB_TAG) {
			this.template = _.template($(this.templates[this.ENGLISH]).html());
			this.curLang = this.EN_TAG;
		}
		// Was English
		else {
			this.template = _.template($(this.templates[this.HEBREW]).html());
			this.curLang = this.HEB_TAG;
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
	},

	modelFetched: function() {
		this.model.fillInProperties();
		this.render();
	},

	onClick: function(options) {
		// Ignore text selections
		if (window.getSelection().toString()) {
			return;
		}

		// If they clicked a link in the View, it triggers this as well. Ignore it.
		if (options && !options.fake_click && options.target.tagName.toLowerCase() === 'a') {
			return;
		}

		this.selected = !this.selected;
		this.$el.toggleClass("selected");
		
		if (this.selected) {
			this.templates = [this.templateSelectedHe, this.templateSelectedEn];

			// Just in case they're sorting, temporarily remove the sorting parameter from the fetch URL
			var modelUrl = this.model.collection.url;
			this.model.collection.url = modelUrl.split("?")[0];

			this.model.fetch({success: this.modelFetched.bind(this)});		// Get the full data for this model
			this.model.collection.url = modelUrl;
		}
		else {
			this.templates = [this.templateHe, this.templateEn];
		}

		var templNum = this.ENGLISH;
		if (this.curLang === this.HEB_TAG) {
			templNum = this.HEBREW;
		}

		this.template = _.template($(this.templates[templNum]).html());

		if (!this.selected) {
			this.render();
		}

		if (!options || !options.fake_click) {
			this.trigger("viewClicked", this);
		}
	}
});

module.exports = MoneiMitzvahView;