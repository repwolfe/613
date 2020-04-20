var _ = require("underscore");
var MoneiMitzvahView = require("./moneimitzvahview");

var MitzvahView = MoneiMitzvahView.extend({
	tagName: "li",
	
	templateHe: "#mitzvos-template-he",
	templateEn: "#mitzvos-template-en",
	templateSelectedHe: "#mitzvos-selected-template-he",
	templateSelectedEn: "#mitzvos-selected-template-en",

	initialize: function() {
		this.template = _.template($(this.templateHe).html());
		MoneiMitzvahView.prototype.initialize.apply(this);
	},

	render: function() {
		this.model.set("count", this.count);
		return MoneiMitzvahView.prototype.render.apply(this);
	}
});

module.exports = MitzvahView;