var Rambam = require("../models/rambam");

var RambamList = Backbone.Collection.extend({
	model: Rambam,
	url: "/db/rambam",

	sortingTitlesHe: [
		"מספר",
		"מקור"
	],

	sortingTitlesEn: [
		"Number",
		"Source"
	],

	sortingUrls: [
		"",
		"source"
	]
});

module.exports = RambamList;