var Mitzvah = Backbone.Model.extend({
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