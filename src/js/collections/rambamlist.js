var Rambam = require("../models/rambam");

var RambamList = Backbone.Collection.extend({
	model: Rambam,
	url: "/db/rambam"
});

module.exports = RambamList;