var Mitzvah = Backbone.Model.extend({
	idAttribute: "_id",
	
	defaults: function() {
		return {
			_id : 0,
			count: 0,
			mitzvahName : "",
			mitzvahNameEn : "",
			asehOrLoSaseh: ""
		};
	}
});

module.exports = Mitzvah;