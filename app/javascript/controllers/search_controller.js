import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["form", "name","team","position","min","max", "list"]

  connect() {
  }

  update(event) {
    event.preventDefault();
    const url = `${this.formTarget.action}?first_name=${this.nameTarget.value}&current_team=${this.teamTarget.value}&position=${this.positionTarget.value}&min_price=${this.minTarget.value}&max_price=${this.maxTarget.value}`
    console.log("TODO: send request in AJAX", url)
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
    })
  }
}
