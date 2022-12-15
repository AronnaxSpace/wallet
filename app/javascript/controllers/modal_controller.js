import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "modal", "modalContent" ]

  open() {
    this.modalTarget.classList.remove("hidden")
    document.body.classList.add("overflow-hidden")
  }

  close(event) {
    if (event.target.id == "modal") {
      this.modalTarget.classList.add("hidden")
      document.body.classList.remove("overflow-hidden")
    }
  }
}
