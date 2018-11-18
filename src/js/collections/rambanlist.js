var Ramban = require("../models/ramban");

var RambanList = Backbone.Collection.extend({
	model: Ramban,
	url: "/db/ramban",

	columnsHe: [
		"מספר",
		"מקור"
	],

	columnsEn: [
		"Number",
		"Source"
	]
});

module.exports = RambanList;