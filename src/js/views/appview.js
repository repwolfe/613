var RambamList = require("../collections/rambamlist");
var MitzvahView = require("./mitzvahview");

var Rambams = new RambamList;

var AppView = Backbone.View.extend({
	el: $("#container"),

	initialize: function() {
		this.listenTo(Rambams, 'add', this.addOne);
		this.listenTo(Rambams, 'reset', this.addAll);

		Rambams.fetch();
	},

	addOne: function(mitzvah) {
		var view = new MitzvahView({model: mitzvah});
		$("#mitzvos").append(view.render().el);
	},

	addAll: function() {
		Rambams.each(this.addOne, this);
	}
});

module.exports = AppView;