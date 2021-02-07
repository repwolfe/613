import { Injectable } from "@angular/core";
import { HttpClient } from '@angular/common/http';

import  { map } from 'rxjs/operators';

import { MitzvahModel } from "../mitzvos/mitzvah.model";

@Injectable({providedIn: 'root'})
export class HttpService {
    private apiUrl = '/db';

    constructor(private http: HttpClient) {}

    getMitzvos<T extends MitzvahModel>(moneiMitzvah: string) {
        return this.http
            .get<T[]>(this.apiUrl + moneiMitzvah)
            .pipe(map(mitzvos => {
                let newMitzvos : T[] = [];      // index by mitzvah id
                for (let mitzvah of mitzvos) {
                    newMitzvos[mitzvah._id] = {...mitzvah, _id: +mitzvah._id};  // Make sure id is a number
                }
                return newMitzvos;
            }));
    }

    getMitzvah<T extends MitzvahModel>(moneiMitzvah: string, id: number) {
        return this.http.
            get<T>(this.apiUrl + moneiMitzvah + '/' + id)
            .pipe(map(mitzvah => {
                return {...mitzvah, _id: +mitzvah._id}
            }));
    }
}