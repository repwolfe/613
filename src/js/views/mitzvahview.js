var _ = require("underscore");

var MitzvahView = Backbone.View.extend({
	tagName: "li",
	template: _.template($('#mitzvah-template').html()),

	render: function() {
		this.$el.html(this.template(this.model.toJSON()));

		var asehOrLoSaseh = this.model.get("asehOrLoSaseh");
		var backgroundCss = "";
		if (asehOrLoSaseh === "A") {
			backgroundCss = "#00ff08";
		}
		else if (asehOrLoSaseh === "L") {
			backgroundCss = "#ff3b00";
		}
		else {
			backgroundCss = "#000";
		}
		this.$el.css({
			"background": backgroundCss
		});

		return this;
	}
});

module.exports = MitzvahView;