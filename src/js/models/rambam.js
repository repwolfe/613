var Rambam = Backbone.Model.extend({
	defaults: function() {
		return {
			_id: 0,
			mitzvahTypeHe: "",
			mitzvahTypeEn: "",
			punishmentHe: "",
			punishmentEn: "",
			whoAppliesHe: "",
			whoAppliesEn: ""
		};
	},

	initialize: function() {
		this.fillInProperties();
	},

	fillInProperties: function() {
		var mitzvahType = this.get("type");
		this.set("mitzvahTypeHe", Rambam.mitzvahTypesHe[mitzvahType]);
		this.set("mitzvahTypeEn", Rambam.mitzvahTypesEn[mitzvahType]);

		var punishment = this.get("punishment");
		this.set("punishmentHe", Rambam.punishmentsHe[punishment]);
		this.set("punishmentEn", Rambam.punishmentsEn[punishment]);

		var whoApplies = this.get("whoApplies");
		this.set("whoAppliesHe", Rambam.whoAppliesesHe[whoApplies]);
		this.set("whoAppliesEn", Rambam.whoAppliesesEn[whoApplies]);
	}
});

// Static variables

Rambam.mitzvahTypesHe = {
	"D": "דעות",
	"P": "פעולה",
	"M": "מידות",
	"R": "דיבור"
};
Rambam.mitzvahTypesEn = {
	"D": "Beliefs",
	"P": "Actions",
	"M": "Traits",
	"R": "Speech"
};

Rambam.punishmentsHe = {
	"N": "אין",
	"K": "כרת",
	"B": "מיתה בידי שמים",
	"S": "סקילה",
	"F": "שריפה",
	"C": "חנק",
	"H": "הרג",
	"M": "מלקות"
};
Rambam.punishmentsEn = {
	"N": "None",
	"K": "Kares",
	"B": "Heavenly Death",
	"S": "Stoning",
	"F": "Fire",
	"C": "Strangulation",
	"H": "Decapatation",
	"M": "Lashes"
};

Rambam.whoAppliesesHe = {
	"A": "הכל",
	"M": "אנשים",
	"W": "נשים",
	"Y": "ישראלים",
	"I": "אנשים ישראלים",
	"L": "לויים",
	"K": "כהנים",
	"D": "כהן גדול",
	"G": "מלך",
	"B": "בית דין",
	"Z": "זרים"
};
Rambam.whoAppliesesEn = {
	"A": "All",
	"M": "Men",
	"W": "Women",
	"Y": "Yisroel",
	"I": "Yisroel Men",
	"L": "Leviim",
	"K": "Kohanim",
	"D": "Kohen Gadol",
	"G": "King",
	"B": "Beis Din",
	"Z": "Zarim"
};

module.exports = Rambam;