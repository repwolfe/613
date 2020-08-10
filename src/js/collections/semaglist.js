var Semag = require("../models/semag");

var SemagList = Backbone.Collection.extend({
	model: Semag,
	url: "/db/semag",

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

module.exports = SemagList;