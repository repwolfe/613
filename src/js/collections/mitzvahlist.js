var Mitzvah = require("../models/mitzvah");

var DB_URL = "/db/mitzvos";
var MitzvahList = Backbone.Collection.extend({
	model: Mitzvah,
	url: DB_URL
});

// Static variables
MitzvahList.DB_URL = DB_URL;

module.exports = MitzvahList;