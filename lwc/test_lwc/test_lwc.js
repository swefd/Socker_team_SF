/**
 * Created by swefd on 11.10.2021.
 */

import {LightningElement} from 'lwc';

export default class TestLwc extends LightningElement {
    greeting = 'World';
    changeHandler(event) {
        this.greeting = event.target.value;
    }

}