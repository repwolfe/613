var _ = require("underscore");
var MoneiMitzvahView = require("./moneimitzvahview");

var CompareView = MoneiMitzvahView.extend({
	tagName: "li",

	templateHe: "#compare-template-he",
	templateEn: "#compare-template-en",

	count: 0,

	initialize: function() {
		this.template = _.template($(this.templateHe).html());
		MoneiMitzvahView.prototype.initialize.apply(this);
	},

	render: function() {
		this.model.set("count", this.count);
		return MoneiMitzvahView.prototype.render.apply(this);
	}
});

module.exports = CompareView;