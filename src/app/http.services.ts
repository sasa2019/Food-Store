import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';


//Links frontend to backend


@Injectable({
    providedIn: 'root'
  })
  export class httpService {
  
    constructor(public http: HttpClient) { }
  
    public newUser(user) {
      console.log("Post Works")
      return this.http.post('http://localhost:3000/register', user)
    }
  
    public getProducts() {
      console.log("Store works")
      return this.http.get('http://localhost:3000/store')
  }

}


  
  