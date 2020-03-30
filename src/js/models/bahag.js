var Bahag = Backbone.Model.extend({
	idAttribute: "_id",
	
	defaults: function() {
		return {
			_id: 0,
			enNote: ""
		};
	},

	initialize: function() {
		this.fillInProperties();
	},

	fillInProperties: function() {
		var enNote = this.get("enNote");
		if (enNote != "") {
			this.set("enNote", "Note: " + enNote);
		}
	}
});

module.exports = Bahag;