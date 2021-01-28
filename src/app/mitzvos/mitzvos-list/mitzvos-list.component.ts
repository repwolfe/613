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
	protected mitzvahList: T[];

	protected mitzvahDetailSub: Subscription;
	protected mitzvahDetail: T = null;

	protected previouslySelected: MitzvahComponent<T>;
	protected selectedId: number = null;

	constructor(protected mitzvosService: MitzvosService<T>,
				protected router: Router,
				protected route: ActivatedRoute) { }

	ngOnInit(): void {
		this.route.paramMap.subscribe(params => {
			this.selectedId = +params.get('id');
			console.log('Mitzvah id: ' + this.selectedId);
			this.mitzvahDetail = this.mitzvosService.getMitzvah(this.selectedId);
		});

		this.listSubscription = this.mitzvosService.listChanged.subscribe(mitzvos => {
			this.mitzvahList = mitzvos;
			this.isLoading = false;
		});

		this.mitzvahDetailSub = this.mitzvosService.mitzvahLoaded.subscribe(mitzvah => {
			this.mitzvahDetail = mitzvah;
			console.log(mitzvah);
		});

		this.isLoading = true;
		this.mitzvahList = this.mitzvosService.getMitzvos();
		if (this.mitzvahList.length != 0) {
			this.isLoading = false;
		}
	}

	ngOnDestroy() {
		this.listSubscription.unsubscribe();
		this.mitzvahDetailSub.unsubscribe();
	}

	onMitzvahSelected(mitzvah: MitzvahComponent<T>) {
		if (this.previouslySelected === mitzvah) {
			this.previouslySelected = null;
			this.router.navigate([this.mitzvosService.mitzvahUrl]);
		}
		else {
			if (this.previouslySelected != null) {
				this.previouslySelected.deselect();
			}
			this.previouslySelected = mitzvah;
			this.selectedId = mitzvah.id;
			this.router.navigate([this.mitzvosService.mitzvahUrl, this.selectedId]);
		}
	}
}
