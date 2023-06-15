import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="shop"
export default class extends Controller {
  static targets = ["avatar", "price", "btn", "avatarid", "form"]
  connect() {
    this.avatarTarget.classList.remove("d-none")
    this.priceTarget.classList.remove("d-none")
    this.btnTarget.classList.remove("d-none")

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
    this.btnTargets.forEach((btn,i) => {
      if (!Array.from(btn.classList).includes("d-none")){
        index=i
      }
    })
    this.avatarTargets[index].classList.add("d-none")
    this.priceTargets[index].classList.add("d-none")
    this.btnTargets[index].classList.add("d-none")
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
    if (this.btnTargets.length - 1 === index){
      this.btnTargets[0].classList.remove("d-none")
    } else {
      this.btnTargets[index+1].classList.remove("d-none")
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

  buyAvatar(){

    const avatarId = event.currentTarget.dataset.avatarId;

    this.avataridTarget.value = avatarId

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })
  }
}
