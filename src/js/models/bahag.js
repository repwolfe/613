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

Bahag.categoriesHe = {
	"0": "אלו הן הנסקלין",
	"1": "אלו הן הנשרפין",
	"2": "אלו הן הנהרגין",
	"3": "אלו הן הנחנקין",
	"4": "אלו שבכרת",
	"5": "אלו שבמיתה [בידי שמים]",
	"6": "אלו לאוין שבמלקות ארבעים (לאוין על יחידים)",
	"7": "אלו מצות קום עשה (על יחידים)",
	"8": "אלו פרשיות חוקים ומשפטים המסורים לצבור"
};

Bahag.categoriesEn = {
	"0": "These die by stoning",
	"1": "These die by fire",
	"2": "These die by beheading",
	"3": "These die by choking",
	"4": "These get Kares",
	"5": "These die by the hands of Heaven",
	"6": "These are the prohibitions for individuals",
	"7": "These are the positive commandments for individuals",
	"8": "Parshiyos, commandments for the community"
};

module.exports = Bahag;