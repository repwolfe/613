import { Injectable } from '@angular/core';

import { MitzvosService } from './../mitzvos.service';
import { BahagModel } from './bahag.model';
import { HttpService } from './../../shared/http.service';

@Injectable()
export class BahagService extends MitzvosService<BahagModel> {
    constructor(protected http: HttpService) {
        super('/bahag', http);
    }
}