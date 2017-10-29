var Rambam = require("../models/rambam");

var RambamList = Backbone.Collection.extend({
	model: Rambam,
	url: "/db/rambam",

	columnsHe: [
		"מספר",
		"מקור",
		"מין",
		"על מי",
		"עונש"
	],

	columnsEn: [
		"Number",
		"Source",
		"Type",
		"Who",
		"Punishment"
	]
});

module.exports = RambamList;