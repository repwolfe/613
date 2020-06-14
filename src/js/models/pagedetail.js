var PageDetail = Backbone.Model.extend({
	idAttribute: "_id",
	urlRoot: "/db/pageDetails",
	
	defaults: function() {
		return {
			_id: 0
		};
	}
});

module.exports = PageDetail;