import {Controller} from '@hotwired/stimulus';
import Rails from "@rails/ujs"
export default class extends Controller {

  initialize() {
    this.button = this.targets.find("button");
    this.state = this.data.get("state");
    this.id = this.data.get("post")
    this.buttonText(this.state, this.button);
  }

  get postID() {
    return this.id;
  }

  get likeState() {
    return this.state;
  }

  set likeState(newState) {
    this.state = newState;
  }

  success(data) {
    this.likeState = data.message === 'created' ? true : false;
    this.buttonText(this.likeState, this.button)
  }

   buttonText(state, button) {
    console.log(state)
    if(state === true) {
      console.log("sapa");
    }else if(state === false){
      console.log("feria");
    }else {
      console.log("null");
    }
    button.textContent = state ? "Unlike" : "Like";
  }

  handle() {
    const url = `/posts/${this.postID}/like`;
    const type = this.likeState ? 'DELETE' : 'POST';
    Rails.ajax({
      url: url, 
      type: type,
      success: (data) => this.success(data),
      error: function(data) {console.log(data)}
    });
  }
}