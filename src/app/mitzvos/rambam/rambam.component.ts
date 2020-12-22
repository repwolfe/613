import { Component, Input } from '@angular/core';

import { MitzvahComponent } from '../mitzvah.component';
import { RambamModel } from './rambam.model';

@Component({
	selector: 'app-rambam',
	templateUrl: './rambam.component.html',
	styleUrls: ['../mitzvah.component.scss', './rambam.component.scss']		// inherit super's scss
})
export class RambamComponent extends MitzvahComponent {

	@Input() model: RambamModel;

	constructor() { super() }

	ngOnInit(): void {
	}

}
