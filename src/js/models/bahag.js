var Bahag = Backbone.Model.extend({
	idAttribute: "_id",
	
	defaults: function() {
		return {
			_id: 0,
			enNote: ""
		};
	},

	initialize: function() {
		this.fillInProperties();
	},

	fillInProperties: function() {
		var enNote = this.get("enNote");
		if (enNote != "") {
			this.set("enNote", "Note: " + enNote);
		}
	}
});

// Static variables

Bahag.categoriesHe = [
	"אלו הן הנסקלין",
	"אלו הן הנשרפין",
	"אלו הן הנהרגין",
	"אלו הן הנחנקין",
	"אלו שבכרת",
	"אלו שבמיתה [בידי שמים]",
	"אלו לאוין שבמלקות ארבעים (לאוין על יחידים)",
	"אלו מצות קום עשה (על יחידים)",
	"אלו פרשיות חוקים ומשפטים המסורים לצבור"
];

Bahag.categoriesEn = [
	"These die by stoning",
	"These die by fire",
	"These die by beheading",
	"These die by choking",
	"These get Kares",
	"These die by the hands of Heaven",
	"These are the prohibitions for individuals",
	"These are the positive commandments for individuals",
	"Parshiyos, commandments for the community"
];

module.exports = Bahag;