import { Component } from '@angular/core';

import { MitzvosListComponent } from './../../mitzvos-list/mitzvos-list.component';
import { BahagModel } from '../bahag.model';
import { BahagService } from '../bahag.service';

@Component({
    selector: 'app-bahag-list',
    templateUrl: './bahag-list.component.html',
    styleUrls: ['../../mitzvos-list/mitzvos-list.component.scss', './bahag-list.component.scss'],
    providers: [BahagService]
})
export class BahagListComponent extends MitzvosListComponent<BahagModel> {

    constructor(private bahagService: BahagService) { super(bahagService) }
}