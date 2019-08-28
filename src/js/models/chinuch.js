var Chinuch = Backbone.Model.extend({
	idAttribute: "mitzvahNumber",

	defaults: function() {
		return {
			mitzvahNumber: 0
		};
	},

	initialize: function() {
		this.fillInProperties();
	},

	fillInProperties: function() {
	}
});

module.exports = Chinuch;