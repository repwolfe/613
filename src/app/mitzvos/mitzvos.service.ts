import { Injectable } from "@angular/core";
import { Subject } from "rxjs";

import { HttpService } from './../shared/http.service';
import { MitzvahModel } from './mitzvah.model';

@Injectable()
export class MitzvosService<T extends MitzvahModel> {
	private _mitzvahList: T[] = [];      // Cached list of the basic details of the mitzvos
	private loadedDetails: Set<number> = new Set<number>();
	private lastLoadedDetail: T;
	private _selectedId: number = null;

	listChanged = new Subject<readonly T[]>();
	
	constructor(protected _mitzvahUrl: string, protected http: HttpService) {}

	get mitzvahUrl() {
		return this._mitzvahUrl;
	}

	get mitzvahList() : readonly T[] {
		return this._mitzvahList;
	}

	get selectedId() : number {
		return this._selectedId;
	}

	selectMitzvah(id: number) {
		if (this._selectedId != null) {
			// Deselect the previous mitzvah
			this._mitzvahList[this._selectedId].selected = false;

			// Clicked the same mitzvah as before. Do nothing more
			if (this._selectedId == id) {
				this._selectedId = null;
				return;
			}
		}
		this._selectedId = id;
		this.loadMitzvah(id);
	}

	/**
	 * Returns a copy of the list of mitzvos
	 */
	getMitzvos() {
		if (this.mitzvahList.length == 0) {
			this.http.getMitzvos<T>(this.mitzvahUrl)
				.subscribe(mitzvos => {
					this._mitzvahList = mitzvos;

					// If loaded a mitzvah detail before the list was populated
					if (this.lastLoadedDetail != null) {
						this._mitzvahList[this.lastLoadedDetail._id] = this.lastLoadedDetail;
						this.lastLoadedDetail = null;
					}

					this.listChanged.next(this.mitzvahList);
				}, error => {
					console.log(error);
				});
		}
		return this.mitzvahList;
	}
	
	/**
	 * Loads the details of a particular mitzvah
	 */
	private loadMitzvah(id: number) {
		if (!this.loadedDetails.has(id)) {
			this.http.getMitzvah<T>(this.mitzvahUrl, id)
				.subscribe(mitzvah => {
					if (this._selectedId == id) {
						mitzvah.selected = true;
					}
					this.loadedDetails.add(id);
					this.lastLoadedDetail = mitzvah;

					// Put the mitzvah detail in the list, if populated
					if (this._mitzvahList.length != 0) {
						this._mitzvahList[id] = mitzvah;
						this.listChanged.next(this.mitzvahList);
					}	// If not, will add when it's loaded
				});
		}
	}
}