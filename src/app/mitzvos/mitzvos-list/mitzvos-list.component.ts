import { Component, OnDestroy, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';

import { MitzvahComponent } from './../mitzvah.component';
import { MitzvosService } from './../mitzvos.service';

@Component({
	selector: 'app-mitzvos-list',
	templateUrl: './mitzvos-list.component.html',
	styleUrls: ['./mitzvos-list.component.scss']//,
	//providers: [MitzvosService]
})
export class MitzvosListComponent<T> implements OnInit, OnDestroy {
	
	isLoading = false;
	protected listSubscription: Subscription;
	protected previouslySelected: MitzvahComponent;
	protected mitzvahList: T[];

	constructor(protected mitzvosService: MitzvosService<T>) { }

	ngOnInit(): void {
		this.listSubscription = this.mitzvosService.listChanged.subscribe(mitzvos => {
			this.mitzvahList = mitzvos;
			this.isLoading = false;
		});
		this.isLoading = true;
		this.mitzvahList = this.mitzvosService.getMitzvos();
		if (this.mitzvahList.length != 0) {
			this.isLoading = false;
		}
	}

	ngOnDestroy() {
		this.listSubscription.unsubscribe();
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
