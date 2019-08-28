var _ = require("underscore");
var MoneiMitzvahView = require("./moneimitzvahview");

var RambanView = MoneiMitzvahView.extend({
	tagName: "li",
	
	templateHe: "#ramban-template-he",
	templateEn: "#ramban-template-en",
	templateSelectedHe: "#ramban-selected-template-he",
	templateSelectedEn: "#ramban-selected-template-en",

	initialize: function() {
		this.template = _.template($(this.templateHe).html());
		MoneiMitzvahView.prototype.initialize.apply(this);
	}
});

module.exports = RambanView;