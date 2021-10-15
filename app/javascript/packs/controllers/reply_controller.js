import {Controller} from 'stimulus';

export default class extends Controller {
  static targets = ["form"];

  toggle(e) {
    e.preventDefault();
    this.formTarget.classList.toggle('d-none');
  }
}