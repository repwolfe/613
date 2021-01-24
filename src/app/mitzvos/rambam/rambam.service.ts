import { HttpService } from './../../shared/http.service';
import { Injectable } from '@angular/core';

import { MitzvosService } from '../mitzvos.service';
import { RambamModel } from './rambam.model';

@Injectable()
export class RambamService extends MitzvosService<RambamModel> {

	constructor(protected http: HttpService) {
		super('/rambam', http);
	}
}