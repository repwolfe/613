var Mitzvah = Backbone.Model.extend({
	idAttribute: "_id",
	fillProperties: true,
	
	defaults: function() {
		return {
			_id : 0,
			count: 0,
			mitzvahName : "",
			mitzvahNameEn : "",
			asehOrLoSaseh: "",
			idStringHe: "",
			idStringEn: "",
			idStringLongHe: "",
			idStringLongEn: ""
		};
	},

	initialize: function() {
		if (this.fillProperties) {
			this.fillInProperties();
		}
	},

	fillInProperties: function() {
		var ids = [this.get("rambamId"), this.get("rambanId"), this.get("semagId"), this.get("bahagId")];
		var numbers = [this.get("rambamNumber"), this.get("rambanNumber"), this.get("semagNumber"), this.get("bahagNumber")];

		var idStringHe = "";
		var idStringEn = "";
		var idStringLongHe = "";
		var idStringLongEn = "";
		for (var i = 0; i < ids.length; ++i) {
			if (ids[i] != null) {
				var linkPrefix = "<a href=\"" + Mitzvah.MoneiMitzvosUrl[i] + ids[i] + "\">";
				idStringHe 		+= linkPrefix + Mitzvah.MoneiMitzvosHe[i] + "</a>, ";
				idStringEn 		+= linkPrefix + Mitzvah.MoneiMitzvosEn[i] + "</a>, ";
				idStringLongHe  += Mitzvah.MoneiMitzvosHe[i] + ": " + linkPrefix + "#" + numbers[i] + "</a><br>";
				idStringLongEn  += Mitzvah.MoneiMitzvosEn[i] + ": " + linkPrefix + "#" + numbers[i] + "</a><br>";
			}
			if (i == ids.length - 1) {
				idStringHe = idStringHe.slice(0, -2);
				idStringEn = idStringEn.slice(0, -2);
			}
		}
		this.set("idStringHe", idStringHe);
		this.set("idStringEn", idStringEn);
		this.set("idStringLongHe", idStringLongHe);
		this.set("idStringLongEn", idStringLongEn);
	}
});

Mitzvah.MoneiMitzvosHe  = ["רמב\"ם", "רמב\"ן", "סמ\"ג", "בה\"ג"];
Mitzvah.MoneiMitzvosEn  = ["Rambam", "Ramban", "Semag", "Bahag"];
Mitzvah.MoneiMitzvosUrl = ["/rambam/", "/ramban/", "/semag/", "/bahag/"];

module.exports = Mitzvah;