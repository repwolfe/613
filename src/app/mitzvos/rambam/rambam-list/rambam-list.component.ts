import { Component } from '@angular/core';

import { MitzvosListComponent } from '../../mitzvos-list/mitzvos-list.component';
import { RambamModel } from '../rambam.model';
import { RambamService } from '../rambam.service';

@Component({
  selector: 'app-rambam-list',
  templateUrl: './rambam-list.component.html',
  styleUrls: ['./rambam-list.component.scss'],
  providers: [RambamService]
})
export class RambamListComponent extends MitzvosListComponent {

	rambams: RambamModel[];

	constructor(private rambamService: RambamService) { super() }

	ngOnInit(): void {
		this.rambams = this.rambamService.getRambams();
	}

}
