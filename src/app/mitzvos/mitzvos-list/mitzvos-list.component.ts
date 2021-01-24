import { Component, OnInit } from '@angular/core';

import { MitzvahComponent } from './../mitzvah.component';

@Component({
	selector: 'app-mitzvos-list',
	templateUrl: './mitzvos-list.component.html',
	styleUrls: ['./mitzvos-list.component.scss']
})
export class MitzvosListComponent implements OnInit {
	
	protected previouslySelected: MitzvahComponent;

	constructor() { }

	ngOnInit(): void {
	}

	onMitzvahSelected(mitzvah: MitzvahComponent) {
		if (this.previouslySelected === mitzvah) {
			this.previouslySelected = null;
		}
		else {
			if (this.previouslySelected != null) {
				this.previouslySelected.deselect();
			}
			this.previouslySelected = mitzvah;
		}
	}
}
