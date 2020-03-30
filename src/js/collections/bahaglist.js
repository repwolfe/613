var Bahag = require("../models/bahag");

var BahagList = Backbone.Collection.extend({
	model: Bahag,
	url: "/db/bahag",
});

module.exports = BahagList;