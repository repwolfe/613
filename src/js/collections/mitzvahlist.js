var Mitzvah = require("../models/mitzvah");

var MitzvahList = Backbone.Collection.extend({
	model: Mitzvah,
	url: "/db/mitzvos"
});

module.exports = MitzvahList;