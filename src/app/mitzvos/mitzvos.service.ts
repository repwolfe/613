import { Injectable } from "@angular/core";
import { Subject } from "rxjs";

import { HttpService } from './../shared/http.service';

@Injectable()
export class MitzvosService<T> {
	private mitzvahList: T[] = [];
    listChanged = new Subject<T[]>();
    
    constructor(protected mitzvahUrl: string, protected http: HttpService) {}

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
}