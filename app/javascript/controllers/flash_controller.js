import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "flash" ]

  flashTargetConnected(element) {
    setTimeout(() => {
      element.remove()
    }, 2000);
  }
}
