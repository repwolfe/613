import { Component, OnInit, Output, EventEmitter, Input } from '@angular/core';

import { MitzvahModel } from './mitzvah.model';

@Component({
	selector: 'app-mitzvah',
	templateUrl: './mitzvah.component.html',
	styleUrls: ['./mitzvah.component.scss']
})
export class MitzvahComponent<T extends MitzvahModel> implements OnInit {

	@Input() model: T;
	@Output() mitzvahSelected = new EventEmitter<MitzvahComponent<T>>();
	
	constructor() { }

	ngOnInit(): void {
	}

	get id() : number {
		return this.model._id;
	}

	onClick() {
		this.model.selected = !this.model.selected;
		this.mitzvahSelected.emit(this);
	}

	deselect() {
		this.model.selected = false;
	}
}
