var Ramban = Backbone.Model.extend({
	defaults: function() {
		return {
			_id: 0,
			shihchaNumberHe: "",
			shihchaNumberEn: ""
		};
	},

	initialize: function() {
		this.fillInProperties();
	},

	fillInProperties: function() {
		var shihchaNum = this.get("shihchaNumber");

		if (shihchaNum !== "" && shihchaNum != null) {
			this.set("shihchaNumberHe", ", שכחה מספר " + shihchaNum);
			this.set("shihchaNumberEn", ", Shihcha #"+ shihchaNum);
		}
	}
});

module.exports = Ramban;