import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="shop"
export default class extends Controller {
  static targets = ["avatar", "price"]
  connect() {
    this.avatarTarget.classList.remove("d-none")
    this.priceTarget.classList.remove("d-none")
  }
  droite(){
    let index = 0
    this.avatarTargets.forEach((avatar,i) => {
      if (!Array.from(avatar.classList).includes("d-none")){
        index=i
      }
    })
    this.priceTargets.forEach((price,i) => {
      if (!Array.from(price.classList).includes("d-none")){
        index=i
      }
    })

    console.log(index)
    console.log(this.avatarTargets)
    this.avatarTargets[index].classList.add("d-none")
    this.priceTargets[index].classList.add("d-none")
    if (this.avatarTargets.length - 1 === index){
      this.avatarTargets[0].classList.remove("d-none")
    } else {
      this.avatarTargets[index+1].classList.remove("d-none")
    }
    if (this.priceTargets.length - 1 === index){
      this.priceTargets[0].classList.remove("d-none")
    } else {
      this.priceTargets[index+1].classList.remove("d-none")
    }

  }
  gauche(){
    console.log('gauche')
  }
}
