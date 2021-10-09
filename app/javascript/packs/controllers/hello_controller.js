 import { Controller } from '@hotwired/stimulus';
 
 export default class extends Controller {
   initialize() {
    this.nameElement.value = this.name;
   }

   log() {
     console.log(this.nameElement.value);
   }

   paste(event) {
     console.log('paste are not allowed')
     event.preventDefault();
   }

   get name() {
     if(this.data.has("name")) {
      return this.data.get("name")
     }else {
       return "Default User"
     }
   }

   get nameElement() {
     return this.targets.find("name");
   }

 }