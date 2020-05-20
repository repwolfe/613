var _ = require("underscore");
var MoneiMitzvahView = require("./moneimitzvahview");

var HomeMitzvahView = MoneiMitzvahView.extend({
	tagName: "li",
	
	templateHe: "#home-mitzvah-template-he",
	templateEn: "#home-mitzvah-template-en",

	initialize: function() {
		this.template = _.template($(this.templateHe).html());
		MoneiMitzvahView.prototype.initialize.apply(this);
	},

	render: function() {
		return MoneiMitzvahView.prototype.render.apply(this);
	},

	onClick: function() {

	}
});

module.exports = HomeMitzvahView;