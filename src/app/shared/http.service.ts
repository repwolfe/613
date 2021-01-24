import { Injectable } from "@angular/core";
import { HttpClient } from '@angular/common/http';

@Injectable({providedIn: 'root'})
export class HttpService {
    private apiUrl = '/db';

    constructor(private http: HttpClient) {}

    getMitzvah<T>(moneiMitzvah: string, id: string) {
        return this.http.get<T>(this.apiUrl + moneiMitzvah + '/' + id);
    }

    getMitzvos<T>(moneiMitzvah: string) {
        return this.http.get<T>(this.apiUrl + moneiMitzvah);
    }
}