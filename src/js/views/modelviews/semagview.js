var _ = require("underscore");
var MoneiMitzvahView = require("./moneimitzvahview");

var SemagView = MoneiMitzvahView.extend({
	tagName: "li",
	
	templateHe: "#semag-template-he",
	templateEn: "#semag-template-en",
	templateSelectedHe: "#semag-selected-template-he",
	templateSelectedEn: "#semag-selected-template-en",

	initialize: function() {
		this.template = _.template($(this.templateHe).html());
		MoneiMitzvahView.prototype.initialize.apply(this);
	}
});

module.exports = SemagView;