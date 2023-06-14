import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="shop"
export default class extends Controller {
  static targets = ["avatar"]
  connect() {
    this.avatarTarget.classList.remove("d-none")
  }
  droite(){
    let index = 0
    this.avatarTargets.forEach((avatar,i) => {
      if (!Array.from(avatar.classList).includes("d-none")){
        index=i
      }
    })
    this.avatarTargets[index].classList.add("d-none")
    if (this.avatarTargets.length - 1 === index){
      this.avatarTargets[0].classList.remove("d-none")
    } else {
      this.avatarTargets[index+1].classList.remove("d-none")
    }

  }
  gauche(){
    let index = 0
    this.avatarTargets.forEach((avatar,i) => {
      if (!Array.from(avatar.classList).includes("d-none")){
        index=i
      }
    })
    this.avatarTargets[index].classList.add("d-none")
    if (0 === index){
      this.avatarTargets[this.avatarTargets.length - 1].classList.remove("d-none")
    } else {
      this.avatarTargets[index-1].classList.remove("d-none")
    }

  }
}
