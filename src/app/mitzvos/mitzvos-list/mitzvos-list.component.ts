import { Component, OnDestroy, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Subscription } from 'rxjs';

import { MitzvahComponent } from './../mitzvah.component';
import { MitzvosService } from './../mitzvos.service';
import { MitzvahModel } from '../mitzvah.model';

@Component({
	selector: 'app-mitzvos-list',
	templateUrl: './mitzvos-list.component.html',
	styleUrls: ['./mitzvos-list.component.scss']
})
export class MitzvosListComponent<T extends MitzvahModel> implements OnInit, OnDestroy {
	
	isLoading = false;
	
	protected listSubscription: Subscription;
	private _mitzvahList: readonly T[];

	constructor(protected mitzvosService: MitzvosService<T>,
				protected router: Router,
				protected route: ActivatedRoute) { }

	ngOnInit(): void {
		this.route.paramMap.subscribe(params => {
			// Preselect a mitzvah
			const selectedId = params.get('id');
			if (selectedId !== '') {	// Only if actually selected
				this.mitzvosService.selectMitzvah(+selectedId);
			}
		});

		this.listSubscription = this.mitzvosService.listChanged.subscribe(mitzvos => {
			this._mitzvahList = mitzvos;
			this.isLoading = false;
		});

		this.isLoading = true;
		this._mitzvahList = this.mitzvosService.getMitzvos();
		if (this._mitzvahList.length != 0) {
			this.isLoading = false;
		}
	}

	ngOnDestroy() {
		this.listSubscription.unsubscribe();
	}

	protected get mitzvahList() {
		// mitzvahList could contain null entries, as it,s sorted by mitzvahIds
		return this.filterNullMitzvos();
	}
	
	private filterNullMitzvos() : T[] {
		return this._mitzvahList.filter((x): x is T => x != null);
	}

	onMitzvahSelected(mitzvah: MitzvahComponent<T>) {
		if (this.mitzvosService.selectedId === mitzvah.id) {
			// Deselect
			this.mitzvosService.selectMitzvah(mitzvah.id);
			this.router.navigate([this.mitzvosService.mitzvahUrl]);
		}
		else {
			this.router.navigate([this.mitzvosService.mitzvahUrl, mitzvah.id]);
		}
	}
}
