import { Injectable } from "@angular/core";
import { Subject } from "rxjs";

import { HttpService } from './../shared/http.service';
import { MitzvahModel } from './mitzvah.model';

@Injectable()
export class MitzvosService<T extends MitzvahModel> {
	private mitzvahList: T[] = [];      // Cached list of the basic details of the mitzvos
	private mitzvahDetails: T[] = [];   // Cached list of detailed mitzvos that were requested

	listChanged = new Subject<T[]>();
	mitzvahLoaded = new Subject<T>();
	
	constructor(protected _mitzvahUrl: string, protected http: HttpService) {}

	get mitzvahUrl() {
		return this._mitzvahUrl;
	}

	/**
	 * Returns a copy of the list of mitzvos
	 */
	getMitzvos() {
		if (this.mitzvahList.length == 0) {
			this.http.getMitzvos<T[]>(this.mitzvahUrl)
				.subscribe(mitzvos => {
					this.mitzvahList = mitzvos;
					this.listChanged.next(this.mitzvahList.slice());
				}, error => {
					console.log(error);
				});
		}
		return this.mitzvahList.slice();
	}
	
	/**
	 * Returns the details of a particular mitzvah
	 */
	getMitzvah(id: number) {
		if (this.mitzvahDetails[id] == null) {
			this.http.getMitzvah<T>(this.mitzvahUrl, id)
				.subscribe(mitzvah => {
					this.mitzvahDetails[id] = mitzvah;
					this.mitzvahLoaded.next(Object.assign({}, mitzvah));  // Return a copy
				});
		}
		return Object.assign({}, this.mitzvahDetails[id]);
	}
}