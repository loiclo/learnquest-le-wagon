import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="inventory"
export default class extends Controller {
  connect() {
    console.log("controller connected")
  }
  avatarProcess(){
    console.log(event.currentTarget)
  }
}
