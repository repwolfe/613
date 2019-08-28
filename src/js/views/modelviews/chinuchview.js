var _ = require("underscore");
var MoneiMitzvahView = require("./moneimitzvahview");

var Chinuch = MoneiMitzvahView.extend({
	tagName: "li",
	
	templateHe: "#chinuch-template-he",
	templateEn: "#chinuch-template-en",
	templateSelectedHe: "#chinuch-selected-template-he",
	templateSelectedEn: "#chinuch-selected-template-en",

	initialize: function() {
		this.template = _.template($(this.templateHe).html());
		MoneiMitzvahView.prototype.initialize.apply(this);
	}
});

module.exports = Chinuch;