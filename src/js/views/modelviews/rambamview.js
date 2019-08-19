var _ = require("underscore");
var MoneiMitzvahView = require("./moneimitzvahview");

var RambamView = MoneiMitzvahView.extend({
	tagName: "li",
	
	templateHe: "#rambam-template-he",
	templateEn: "#rambam-template-en",
	templateSelectedHe: "#rambam-selected-template-he",
	templateSelectedEn: "#rambam-selected-template-en",

	initialize: function() {
		this.template = _.template($(this.templateHe).html());
		MoneiMitzvahView.prototype.initialize.apply(this);
	}
});

module.exports = RambamView;