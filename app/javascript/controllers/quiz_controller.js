import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz"
export default class extends Controller {

  static targets = ["imgs", "radio"]
  connect() {
    console.log(this.imgsTargets)
  }

  test(){
    console.log(event.currentTarget.nextElementSibling)
    event.currentTarget.nextElementSibling.checked = true

    this.imgsTargets.forEach(element => {
      element.children[0].classList.remove("d-none")
      element.children[1].classList.add("d-none")
    });

    event.currentTarget.children[0].classList.add("d-none")

    event.currentTarget.children[1].classList.remove("d-none")
  }
}
