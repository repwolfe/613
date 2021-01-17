import { Component, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';

import { MitzvosListComponent } from '../../mitzvos-list/mitzvos-list.component';
import { RambamModel } from '../rambam.model';
import { RambamService } from '../rambam.service';

@Component({
  selector: 'app-rambam-list',
  templateUrl: './rambam-list.component.html',
  styleUrls: ['./rambam-list.component.scss'],
  providers: [RambamService]
})
export class RambamListComponent extends MitzvosListComponent implements OnDestroy {

	rambams: RambamModel[];
	listSubscription: Subscription;

	constructor(private rambamService: RambamService) { super() }

	ngOnInit(): void {
		this.listSubscription = this.rambamService.listChanged.subscribe(rambams => {
			this.rambams = rambams;
		});
		this.rambams = this.rambamService.getRambams();
	}

	ngOnDestroy() {
		this.listSubscription.unsubscribe();
	}

}
