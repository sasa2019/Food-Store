import { Component, OnInit } from '@angular/core';
import { httpService } from '../http.services';


@Component({
  selector: 'app-store',
  templateUrl: './store.component.html',
  styleUrls: ['./store.component.css']
})

export class StoreComponent implements OnInit {
  public products = [ ]
  
 
  constructor(public HttpService:httpService) { }

  ngOnInit() {
    this.HttpService.getProducts().subscribe(
      (res:any)=>{
            console.log(res)
            this.products = res.message
          },
        err=>console.log(err)
    )
}

}
