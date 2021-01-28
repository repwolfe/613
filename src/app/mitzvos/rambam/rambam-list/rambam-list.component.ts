import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

import { MitzvosListComponent } from '../../mitzvos-list/mitzvos-list.component';
import { RambamModel } from '../rambam.model';
import { RambamService } from '../rambam.service';

@Component({
  selector: 'app-rambam-list',
  templateUrl: './rambam-list.component.html',
  styleUrls: ['../../mitzvos-list/mitzvos-list.component.scss', './rambam-list.component.scss'],
  providers: [RambamService]
})
export class RambamListComponent extends MitzvosListComponent<RambamModel> {

	constructor(private rambamService: RambamService,
				protected router: Router,
				protected route: ActivatedRoute) {
		super(rambamService, router, route);
	}
}
