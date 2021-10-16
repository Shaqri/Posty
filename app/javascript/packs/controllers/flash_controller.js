import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = [ "message" ]

  initialize() {
    const notices = this.data.get('notice');
    const alerts = this.data.get('alert');
    const message = !notices.length && !alerts.length ? null : this.messageTarget;
    
    const time = setTimeout(() => {
     if (message) message.remove();
      clearTimeout(time);
    }, 2000)
  }
}