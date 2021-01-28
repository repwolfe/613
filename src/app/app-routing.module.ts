import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { HomeComponent } from './home/home.component';
import { RambamListComponent } from './mitzvos/rambam/rambam-list/rambam-list.component';
import { BahagListComponent } from './mitzvos/bahag/bahag-list/bahag-list.component';
import { AboutComponent } from './about/about.component';

const appRoutes: Routes = [
    { path: '', component: HomeComponent },
    { path: 'rambam', redirectTo: 'rambam/', pathMatch: 'full' },
    { path: 'rambam/:id', component: RambamListComponent },
    { path: 'bahag', redirectTo: 'bahag/', pathMatch: 'full' },
    { path: 'bahag/:id', component: BahagListComponent },
    { path: 'about', component: AboutComponent }
];

@NgModule({
    imports: [
        RouterModule.forRoot(appRoutes)
    ],
    exports: [RouterModule]
})
export class AppRoutingModule {

}