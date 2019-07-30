var Semag = Backbone.Model.extend({
	defaults: function() {
		return {
			_id: 0
		};
	},

	initialize: function() {
		this.fillInProperties();
	},

	fillInProperties: function() {
	}
});

module.exports = Semag;