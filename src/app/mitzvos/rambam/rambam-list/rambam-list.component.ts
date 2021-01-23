import { Component, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';

import { MitzvosListComponent } from '../../mitzvos-list/mitzvos-list.component';
import { RambamModel } from '../rambam.model';
import { RambamService } from '../rambam.service';

@Component({
  selector: 'app-rambam-list',
  templateUrl: './rambam-list.component.html',
  styleUrls: ['../../mitzvos-list/mitzvos-list.component.scss', './rambam-list.component.scss'],
  providers: [RambamService]
})
export class RambamListComponent extends MitzvosListComponent implements OnDestroy {

	rambams: RambamModel[];
	isLoading = false;
	listSubscription: Subscription;

	constructor(private rambamService: RambamService) { super() }

	ngOnInit(): void {
		this.listSubscription = this.rambamService.listChanged.subscribe(rambams => {
			this.rambams = rambams;
			this.isLoading = false;
		});
		this.isLoading = true;
		this.rambams = this.rambamService.getRambams();
		if (this.rambams.length != 0) {
			this.isLoading = false;
		}
	}

	ngOnDestroy() {
		this.listSubscription.unsubscribe();
	}

}
