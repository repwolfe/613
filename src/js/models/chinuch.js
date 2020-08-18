var Chinuch = Backbone.Model.extend({
	idAttribute: "mitzvahNumber",

	defaults: function() {
		return {
			mitzvahNumber: 0,
			whereAppliesHe: "",
			whereAppliesEn: "",
			whenAppliesHe: "",
			whenAppliesEn: "",
			whoAppliesHe: "",
			whoAppliesEn: "",
			punishmentHe: "",
			punishmentEn: "",
		};
	},

	initialize: function() {
		this.fillInProperties();
	},

	fillInProperties: function() {
		//var originalText = this.get("originalText");
		//originalText = originalText.replace(new RegExp("<br>", 'g'), "\n");
		//this.set("originalText", originalText);

		var whereApplies = parseInt(this.get("whereApplies"));
		this.set("whereAppliesHe", Chinuch.whereAppliesHe[whereApplies]);
		this.set("whereAppliesEn", Chinuch.whereAppliesEn[whereApplies]);

		var whenApplies = parseInt(this.get("whenApplies"));
		this.set("whenAppliesHe", Chinuch.whenAppliesHe[whenApplies]);
		this.set("whenAppliesEn", Chinuch.whenAppliesEn[whenApplies]);

		var whoApplies = parseInt(this.get("whoApplies"));
		this.set("whoAppliesHe", Chinuch.whoAppliesHe[whoApplies]);
		this.set("whoAppliesEn", Chinuch.whoAppliesEn[whoApplies]);

		var punishment = parseInt(this.get("punishment"));
		this.set("punishmentHe", Chinuch.punishmentHe[punishment]);
		this.set("punishmentEn", Chinuch.punishmentEn[punishment]);
	}
});

module.exports = Chinuch;

Chinuch.whereAppliesHe = [
	"בכל מקום",
	"בארץ",
	"בירושלים",
	"במקדש"
];
Chinuch.whereAppliesEn = [
	"in all places",
	"in the Land of Israel",
	"in Jerusalem",
	"in the Holy Temple"
];

Chinuch.whenAppliesHe = [
	"בכל זמן",
	"בזמן הסמיכה",
	"בזמן בית המקדש",
	"בזמן שיובל נוהג"
];
Chinuch.whenAppliesEn = [
	"in all times",
	"when there is real Smicha",
	"when the Temple is built",
	"when the Jubilee year applies"
];

Chinuch.whoAppliesHe = [
	"זכרים ונקבות",
	"אנשים",
	"חכמים",
	"ישראלים",
	"דיינים",
	"כהנים",
	"כל הציבור",
	"סנהדרין",
	"כהן גדול",
	"נשים",
	"זרים",
	"כהנים אנשים ונקבות",
	"לויים",
	"המלך"
];
Chinuch.whoAppliesEn = [
	"Men and Women",
	"Men",
	"Sages",
	"Israelites",
	"Judges",
	"Kohanim",
	"The entire congregation",
	"Sanhedrin",
	"Kohen Gadol",
	"Women",
	"Non-Kohanim",
	"Kohanim Men and Women",
	"Leviim",
	"King"
];

Chinuch.punishmentHe = [
	"שום דבר",
	"מלקות",
	"כרת",
	"סקילה",
	"הרג/סייף",
	"חנק",
	"מיתה בידי שמים",
	"שריפה"
];
Chinuch.punishmentEn = [
	"Nothing",
	"Lashes",
	"Kares",
	"Stoning",
	"Beheading",
	"Strangulation",
	"Heavenly Death",
	"Death by Fire"
];