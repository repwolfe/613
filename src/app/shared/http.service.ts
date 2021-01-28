import { Injectable } from "@angular/core";
import { HttpClient } from '@angular/common/http';

import { MitzvahModel } from "../mitzvos/mitzvah.model";

@Injectable({providedIn: 'root'})
export class HttpService {
    private apiUrl = '/db';

    constructor(private http: HttpClient) {}

    getMitzvos<T extends MitzvahModel[]>(moneiMitzvah: string) {
        return this.http.get<T>(this.apiUrl + moneiMitzvah);
    }

    getMitzvah<T extends MitzvahModel>(moneiMitzvah: string, id: number) {
        return this.http.get<T>(this.apiUrl + moneiMitzvah + '/' + id);
    }
}