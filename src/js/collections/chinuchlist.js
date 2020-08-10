var Chinuch = require("../models/chinuch");

var ChinuchList = Backbone.Collection.extend({
	model: Chinuch,
	url: "/db/chinuch",

	sortingTitlesHe: [
		"מספר",
		"מספר ישן",
		"על מי",
		"איפה",
		"מתי",
		"עונש"
	],

	sortingTitlesEn: [
		"Number",
		"Old Number",
		"Who",
		"Where",
		"When",
		"Punishment"
	],

	sortingUrls: [
		"",
		"oldMitzvahNumber",
		"whoApplies",
		"whereApplies",
		"whenApplies",
		"punishment"
	]
});

module.exports = ChinuchList;