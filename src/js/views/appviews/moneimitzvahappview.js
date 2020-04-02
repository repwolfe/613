var MoneiMitzvahAppView = Backbone.View.extend({
	curLang: "he",
	el: "#mitzvos",

	mitzvahList: null,

	previouslySelected: null,
	startEnglish: false,
	
	startSelected: "",		// mitzvahNumber to startSelected (String)
	viewToSelect: null,

	initialize: function() {
		this.setElement(this.el);
		this.listenTo(this.mitzvahList, 'add', this.addOne);	// addOne to be implemented by subclasses
		this.listenTo(this.mitzvahList, 'reset', this.addAll);
		this.listenTo(this, 'fetchComplete', this.fetchComplete);

		var self = this;

		this.mitzvahList.fetch({
			success: function(collection, response, options) {
				self.trigger('fetchComplete');
			}
		});
	},

	destroy: function() {
		this.mitzvahList.reset();
		this.undelegateEvents();
		this.$el.removeData().unbind();

		this.$el.empty();
	},

	addOne: function(view) {
		this.listenTo(view, 'viewClicked', this.viewClicked);

		if (view.model.id === this.startSelected) {
			this.viewToSelect = view;
			this.startSelected = "";
		}

		this.$el.append(view.render().el);
	},

	addAll: function() {
		this.mitzvahList.each(this.addOne, this);
	},

	fetchComplete: function() {
		if (this.startEnglish) {
			this.languageSwitch();
			this.startEnglish = false;
		}

		// If preselecting a mitzvah
		if (this.viewToSelect != null) {
			this.viewToSelect.onClick();
			var top = this.viewToSelect.$el.offset().top - 58;
			$("body, html").stop().animate({scrollTop: top}, 800);
			this.viewToSelect = null;
		}
	},

	languageSwitch: function() {
		this.mitzvahList.each(function(mitzvah) {
			mitzvah.trigger("languageSwitch");
		});
		if (this.curLang === "he") {
			this.curLang = "en";
		}
		else {
			this.curLang = "he";
		}
	},

	viewClicked: function(view) {
		// @todo: maybe add option to select multiple entries
		var newUrl = window.location.pathname.substr(0, window.location.pathname.lastIndexOf("/"));	// Start with removing the mitzvahId at the end
		if (view == this.previouslySelected) {
			this.previouslySelected = null;
		}
		else {
			if (this.previouslySelected != null) {
				this.previouslySelected.onClick({ fake_click: true });
				newUrl = newUrl + "/" + view.model.id;
			}
			else {
				newUrl = window.location.pathname +  "/" + view.model.id;
			}
			this.previouslySelected = view;
		}
		if (this.viewToSelect == null) {	// Don't change the URL if starting with selecting a mitzvah
			window.history.replaceState(null, null, newUrl);
		}
	},

	setStartEnglish: function() {
		this.startEnglish = true;
	},

	selectOne: function(mitzvahNumber) {
		this.startSelected = mitzvahNumber;
	}
});

module.exports = MoneiMitzvahAppView;