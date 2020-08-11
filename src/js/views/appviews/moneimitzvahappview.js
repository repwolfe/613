var PageDetail = require("../../models/pagedetail");

var MoneiMitzvahAppView = Backbone.View.extend({
	curLang: "he",
	el: "#mitzvos",
	sortingTag: "#sorting",

	fetchesCompleted: 0,

	pageDetailsTag: "#pageDetailsText",
	pageDetailId: "-1",
	pageDetails: null,
	hasDetails: true,

	currentSortingId: "",
	sortByParam: "?sortBy=",

	mitzvahList: null,
	fragment: null,

	previouslySelected: null,
	startEnglish: false,
	
	startSelected: "",		// mitzvahNumber to startSelected (String)
	viewToSelect: null,

	initialize: function() {
		this.setElement(this.el);
		this.mitzvahListUrl = this.mitzvahList.url;

		this.listenTo(this.mitzvahList, 'add', this.addOne);	// addOne to be implemented by subclasses
		this.listenTo(this.mitzvahList, 'reset', this.addAll);
		this.listenTo(this, 'fetchComplete', this.fetchComplete);

		var self = this;

		this.startAdding();
		this.mitzvahList.fetch({
			success: function(collection, response, options) {
				self.trigger('fetchComplete');
			}
		});

		if (this.hasDetails) {
			this.listenTo(this, 'detailsFetchComplete', this.detailsFetchComplete);
			$(this.pageDetailsTag).hide();
			this.pageDetails = new PageDetail({_id: this.pageDetailId});
			this.pageDetails.fetch({
				success: function(response, options) {
					self.trigger('detailsFetchComplete');
				}
			});
		}

		this.makeSortingButtons(this.mitzvahList.sortingTitlesHe, this.mitzvahList.sortingUrls);
	},

	destroy: function() {
		this.undelegateEvents();
		this.emptyList();

		$(this.sortingTag).empty();
		$(this.sortingTag).hide();
	},

	emptyList: function() {
		this.mitzvahList.reset();
		this.$el.removeData().unbind();
		this.$el.empty();
	},

	startAdding: function() {
		this.fragment = document.createDocumentFragment();
	},

	finishAdding: function() {
		this.$el.append(this.fragment);
		this.fragment = null;
	},

	addOne: function(view) {
		this.listenTo(view, 'viewClicked', this.viewClicked);

		if (view.model.id === this.startSelected) {
			this.viewToSelect = view;
			this.startSelected = "";
		}

		this.fragment.appendChild(view.render().el);
	},

	addAll: function() {
		this.mitzvahList.each(this.addOne, this);
	},

	fetchComplete: function() {
		this.finishAdding();
		this.checkIfStartEnglish();

		// If preselecting a mitzvah
		if (this.viewToSelect != null) {
			this.viewToSelect.onClick();
			var top = this.viewToSelect.$el.offset().top - 58;
			$("body, html").stop().animate({scrollTop: top}, 800);
			this.viewToSelect = null;
		}
	},

	detailsFetchComplete: function() {		
		$(this.pageDetailsTag).html(this.pageDetails.get("hebrewDetails"));

		if (!this.startEnglish) {
			$(this.pageDetailsTag).show();
		}
		this.checkIfStartEnglish();
	},

	checkIfStartEnglish: function() {
		// todo: improve this
		if (!this.hasDetails && this.startEnglish) {
			this.languageSwitch();
			this.startEnglish = false;
		}
		else if (++this.fetchesCompleted == 2 && this.startEnglish) {
			this.languageSwitch();
			$(this.pageDetailsTag).show();
			this.startEnglish = false;
		}
	},

	makeSortingButtons: function(sortingTitles, sortingUrls) {
		if (!sortingTitles) {
			return;
		}
		$(this.sortingTag).empty();
		var self = this;
		var i;
		for (i in sortingTitles) {
			var element = document.createElement("li");
			element.innerHTML = sortingTitles[i];
			$(element).attr("id", sortingUrls[i]);
			if (sortingUrls[i] == this.currentSortingId) {
				$(element).addClass("toggled");
			}

			$(element).click(function(e) {	// Toggle click event handler
				// Clicking a new sorting choice
				if (e.target.id != self.currentSortingId) {
					// Deselect the previous one
					$(self.sortingTag + " .toggled").toggleClass("toggled");

					$(e.target).toggleClass("toggled");

					self.emptyList();
					self.viewToSelect = null;

					// Keep it in English
					if (self.curLang == "en") {
						self.setStartEnglish();
					}

					self.startAdding();
					self.mitzvahList.url = self.mitzvahListUrl + self.sortByParam + e.target.id;
					self.mitzvahList.fetch({
						success: function(collection, response, options) {
							self.finishAdding();
							if (self.startEnglish) {
								self.mitzvahList.each(function(mitzvah) {
									mitzvah.trigger("languageSwitch");
								});
								self.startEnglish = false;
							}
						}
					});

					self.currentSortingId = e.target.id;
				}
			});
			$(this.sortingTag).append(element);
		}
		$(this.sortingTag).show();
	},

	languageSwitch: function() {
		this.mitzvahList.each(function(mitzvah) {
			mitzvah.trigger("languageSwitch");
		});
		var column = "";
		if (this.curLang === "he") {
			this.curLang = "en";
			if (this.pageDetails != null) {
				column = "englishDetails";
			}
			this.makeSortingButtons(this.mitzvahList.sortingTitlesEn, this.mitzvahList.sortingUrls);
		}
		else {
			this.curLang = "he";
			column = "hebrewDetails";
			this.makeSortingButtons(this.mitzvahList.sortingTitlesHe, this.mitzvahList.sortingUrls);
		}

		if (this.pageDetails != null) {
			$(this.pageDetailsTag).html(this.pageDetails.get(column));
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