import { MitzvahModel } from './mitzvos/mitzvah.model';
import { Injectable } from "@angular/core";
import { HttpClient } from '@angular/common/http';

@Injectable({providedIn: 'root'})
export class HttpService {
    private apiUrl = '/db';

    constructor(private http: HttpClient) {}

    getMitzvah(moneiMitzvah: string, id: string) {
        return this.http.get<MitzvahModel>(this.apiUrl + moneiMitzvah + '/' + id);
    }

    getMitzvos(moneiMitzvah: string) {
        return this.http.get<MitzvahModel[]>(this.apiUrl + moneiMitzvah);
    }
}