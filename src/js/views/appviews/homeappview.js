var PageDetail = require("../../models/pagedetail");
var Mitzvah = require("../../models/mitzvah");
var MitzvahList = require("../../collections/mitzvahlist");
var HomeMitzvahView = require("../modelviews/homemitzvahview");

/**
 * Displays a random mitzvah from the All Mitzvos page
 */
var HomeAppView = Backbone.View.extend({

	MAX_ID: 894,					// highest id value in mitzvos.sql		@todo UPDATE
	SKIPPED_IDS: [625, 785, 841],	// skipped id values in mitzvos.sql

	curLang: "he",
	startEnglish: false,

	fetchesCompleted: 0,

	pageDetailsTag: "#pageDetailsText",
	pageDetailId: "home",
	pageDetails: null,

	el: "#mitzvos",
	randomMitzvah: null,

	initialize: function() {
		this.setElement(this.el);
		this.listenTo(this, 'fetchComplete', this.fetchComplete);
		this.listenTo(this, 'detailsFetchComplete', this.detailsFetchComplete);
		this.generateMitzvah();

		var self = this;

		this.pageDetails = new PageDetail({_id: this.pageDetailId});
		this.pageDetails.fetch({
			success: function(response, options) {
				self.trigger('detailsFetchComplete');
			}
		});
	},

	destroy: function() {
		this.$el.removeData().unbind();

		this.$el.empty();
	},

	generateMitzvah: function() {
		var fetchId;
		do {	// Repeat until a value not in SKIPPED_IDS is generated
		    fetchId = Math.floor(Math.random() * (this.MAX_ID + 1) + 1); // 1 to MAX_ID inclusive
		} while ($.inArray(fetchId, this.SKIPPED_IDS) > -1);
		
		this.randomMitzvah = new Mitzvah({_id: fetchId, fillProperties: false});
		this.randomMitzvah.urlRoot = MitzvahList.DB_URL;
		var self = this;

		this.randomMitzvah.fetch({
			success: function(response, options) {
				self.trigger('fetchComplete');
			}
		});
	},

	fetchComplete: function() {
		this.randomMitzvah.fillInProperties();
		var view = new HomeMitzvahView({model: this.randomMitzvah});

		view.$el.toggleClass("selected");
		this.$el.append(view.render().el);

		this.checkIfStartEnglish();
	},

	detailsFetchComplete: function() {
		$(this.pageDetailsTag).html(this.pageDetails.get("hebrewDetails"));
		this.checkIfStartEnglish();
	},

	checkIfStartEnglish: function() {
		if (++this.fetchesCompleted == 2 && this.startEnglish) {
			this.languageSwitch();
			$(this.pageDetailsTag).show();
			this.startEnglish = false;
		}
	},

	languageSwitch: function() {
		this.randomMitzvah.trigger("languageSwitch");

		var column = "";
		if (this.curLang === "he") {
			this.curLang = "en";
			if (this.pageDetails != null) {
				column = "englishDetails";
			}
		}
		else {
			this.curLang = "he";
			column = "hebrewDetails";
		}

		if (this.pageDetails != null) {
			$(this.pageDetailsTag).html(this.pageDetails.get(column));
		}
	},

	setStartEnglish: function() {
		this.startEnglish = true;
		$(this.pageDetailsTag).hide();
	}
});

module.exports = HomeAppView;