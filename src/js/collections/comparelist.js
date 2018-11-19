var Mitzvah = require("../models/mitzvah");

var CompareList = Backbone.Collection.extend({
	model: Mitzvah
});

module.exports = CompareList;