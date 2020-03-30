var _ = require("underscore");
var MoneiMitzvahView = require("./moneimitzvahview");

var BahagView = MoneiMitzvahView.extend({
	tagName: "li",
	
	templateHe: "#bahag-template-he",
	templateEn: "#bahag-template-en",
	templateSelectedHe: "#bahag-selected-template-he",
	templateSelectedEn: "#bahag-selected-template-en",

	initialize: function() {
		this.template = _.template($(this.templateHe).html());
		MoneiMitzvahView.prototype.initialize.apply(this);
	}
});

module.exports = BahagView;