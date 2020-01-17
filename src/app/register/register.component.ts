import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { httpService } from '../http.services';
import { Validators } from '@angular/forms';





@Component({
  selector: 'register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent implements OnInit {

  public newUser;
  firstName: any;

  constructor(public hs:httpService) { }

  isShown: boolean = false ; // hidden by default


toggleShow() {

this.isShown = ! this.isShown;

}

  ngOnInit() {
    this.newUser = new FormGroup({
      firstName: new FormControl, 
      lastName: new FormControl,
      Email: new FormControl ('', [Validators.required, Validators.email]),
      IDnumber: new FormControl,
      Password: new FormControl,
      City: new FormControl,
      Address: new FormControl,
     
    })
  }
  public addUser(){
    console.log(this.newUser.value);
    this.hs.newUser(this.newUser.value).subscribe();
  }

}
