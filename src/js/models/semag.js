var Semag = Backbone.Model.extend({
	idAttribute: "_id",
	
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