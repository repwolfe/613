import { HttpService } from './../../http.service';
import { Injectable } from '@angular/core';
import { Subject, Observable } from 'rxjs';

import { RambamModel } from './rambam.model';

@Injectable()
export class RambamService {
	private rambamUrl = '/rambam';
	private rambams: RambamModel[] = [];
	listChanged = new Subject<RambamModel[]>();

	constructor(private http: HttpService) {}

	/**
	 * Returns a copy of the list of mitzvos
	 */
	getRambams() {
		if (this.rambams.length == 0) {
			this.http.getMitzvos(this.rambamUrl).subscribe(mitzvos => {
				this.rambams = mitzvos as RambamModel[];
				this.listChanged.next(this.rambams.slice());
			});
		}
		return this.rambams.slice();
	}
}