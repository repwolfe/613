import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoadingSpinnerComponent } from './shared/loading-spinner/loading-spinner.component';
import { HomeComponent } from './home/home.component';
import { MitzvahComponent } from './mitzvos/mitzvah.component';
import { MitzvosListComponent } from './mitzvos/mitzvos-list/mitzvos-list.component';
import { BahagComponent } from './mitzvos/bahag/bahag.component';
import { BahagListComponent } from './mitzvos/bahag/bahag-list/bahag-list.component';
import { RambamComponent } from './mitzvos/rambam/rambam.component';
import { RambamListComponent } from './mitzvos/rambam/rambam-list/rambam-list.component';
import { AboutComponent } from './about/about.component';

@NgModule({
	declarations: [
		AppComponent,
		HomeComponent,
		LoadingSpinnerComponent,
		MitzvahComponent,
		MitzvosListComponent,
		RambamComponent,
		RambamListComponent,
		BahagComponent,
		BahagListComponent,
		AboutComponent
	],
	imports: [
		BrowserModule, HttpClientModule, AppRoutingModule
	],
	providers: [],
	bootstrap: [AppComponent]
})
export class AppModule { }
