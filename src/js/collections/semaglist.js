var Semag = require("../models/semag");

var SemagList = Backbone.Collection.extend({
	model: Semag,
	url: "/db/semag",

	columnsHe: [
		"מספר",
		"מקור"
	],

	columnsEn: [
		"Number",
		"Source"
	]
});

module.exports = SemagList;