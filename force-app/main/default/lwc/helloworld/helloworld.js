import { LightningElement, track } from "lwc";
import getContactList from '@salesforce/apex/ContactController.getContactList';
export default class HelloWorld extends LightningElement {
    @track greeting = 'World';
    @track contacts;
    @track error;
    //changeHandler(event) {
    changeHandler() {
       getContactList()
            .then(result => {
                this.contacts = result;
            })
            .catch(error => {
                this.error = error;
            });

        //this.greeting = event.target.value;
    }
}