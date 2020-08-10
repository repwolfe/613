var Ramban = require("../models/ramban");

var RambanList = Backbone.Collection.extend({
	model: Ramban,
	url: "/db/ramban",

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

module.exports = RambanList;