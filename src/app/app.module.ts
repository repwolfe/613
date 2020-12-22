import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { MitzvahComponent } from './mitzvos/mitzvah.component';
import { MitzvosListComponent } from './mitzvos/mitzvos-list/mitzvos-list.component';
import { RambamComponent } from './mitzvos/rambam/rambam.component';
import { RambamListComponent } from './mitzvos/rambam/rambam-list/rambam-list.component';

@NgModule({
	declarations: [
		AppComponent,
		MitzvahComponent,
		MitzvosListComponent,
		RambamComponent,
		RambamListComponent
	],
	imports: [
		BrowserModule
	],
	providers: [],
	bootstrap: [AppComponent]
})
export class AppModule { }
