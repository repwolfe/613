import { Component } from "@angular/core";

@Component({
    selector: 'app-loading-spinner',
    styleUrls: ['./loading-spinner.component.scss'],
    template: `<div class="lds-ring"><div></div><div></div><div></div><div></div></div>`
})
export class LoadingSpinnerComponent {

}