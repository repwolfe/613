import { Component, Input } from '@angular/core';

import { MitzvahComponent } from './../mitzvah.component';
import { BahagModel } from './bahag.model';

@Component({
    selector: 'app-bahag',
    templateUrl: './bahag.component.html',
    styleUrls: ['../mitzvah.component.scss',  './bahag.component.scss']
})
export class BahagComponent extends MitzvahComponent {
    @Input() model: BahagModel;
}