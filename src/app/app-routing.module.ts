import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { RegisterComponent } from './register/register.component';
import { MainComponent } from './main/main.component';
import { StoreComponent } from './store/store.component';


const routes: Routes = [
  {path: '', component: MainComponent},
  {path:'register', component: RegisterComponent},
  {path: 'store', component: StoreComponent},
  


  {path:"**", redirectTo:""},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
