var Chinuch = require("../models/chinuch");

var ChinuchList = Backbone.Collection.extend({
	model: Chinuch,
	url: "/db/chinuch",

	columnsHe: [
		"מספר",
		"מקור"
	],

	columnsEn: [
		"Number",
		"Source"
	]
});

module.exports = ChinuchList;