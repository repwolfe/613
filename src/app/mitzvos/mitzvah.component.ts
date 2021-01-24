import { Component, OnInit, Output, EventEmitter } from '@angular/core';

import { MitzvahModel } from './mitzvah.model';

@Component({
	selector: 'app-mitzvah',
	templateUrl: './mitzvah.component.html',
	styleUrls: ['./mitzvah.component.scss']
})
export class MitzvahComponent implements OnInit {

	selected = false;
	@Output() mitzvahSelected = new EventEmitter<MitzvahComponent>();

	constructor() { }

	ngOnInit(): void {
	}

	onClick() {
		this.selected = !this.selected;
		this.mitzvahSelected.emit(this);
	}

	deselect() {
		this.selected = false;
	}
}
