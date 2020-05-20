var Mitzvah = require("../../models/mitzvah");
var MitzvahList = require("../../collections/mitzvahlist");
var HomeMitzvahView = require("../modelviews/homemitzvahview");

/**
 * Displays a random mitzvah from the All Mitzvos page
 */
var HomeAppView = Backbone.View.extend({

	MAX_ID: 894,					// highest id value in mitzvos.sql		@todo UPDATE
	SKIPPED_IDS: [625, 785],		// skipped id values in mitzvos.sql

	el: "#mitzvos",
	randomMitzvah: null,

	initialize: function() {
		this.setElement(this.el);
		this.listenTo(this, 'fetchComplete', this.fetchComplete);
		this.generateMitzvah();
	},

	destroy: function() {
		this.$el.removeData().unbind();

		this.$el.empty();
	},

	generateMitzvah: function() {
		var fetchId;
		do {	// Repeat until a value not in SKIPPED_IDS is generated
		    fetchId = Math.floor(Math.random() * (this.MAX_ID + 1) + 1); // 1 to MAX_ID inclusive
		} while ($.inArray(fetchId, this.SKIPPED_IDS) > -1);
		
		this.randomMitzvah = new Mitzvah({_id: fetchId, fillProperties: false});
		this.randomMitzvah.urlRoot = MitzvahList.DB_URL;
		var self = this;

		this.randomMitzvah.fetch({
			success: function(response, options) {
				self.trigger('fetchComplete');
			}
		});
	},

	fetchComplete: function() {
		this.randomMitzvah.fillInProperties();
		var view = new HomeMitzvahView({model: this.randomMitzvah});

		view.$el.toggleClass("selected");
		this.$el.append(view.render().el);
	},

	languageSwitch: function() {
		this.randomMitzvah.trigger("languageSwitch");
	}
});

module.exports = HomeAppView;