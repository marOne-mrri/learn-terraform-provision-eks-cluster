import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  url: string = '';
  title = 'frontend';
  constructor(private http: HttpClient) {
    // this.http.get("http://localhost:8080").subscribe((data: any) => {
    //   this.title = data.message
    // })
  }
  onClick() {
    this.http.get(this.url).subscribe((data: any) => {
      this.title = data.message
    })
  }
}
