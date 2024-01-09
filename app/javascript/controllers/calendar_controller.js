import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {
  connect() {
    console.log("connect")
  }
  openCalendar() {
    console.log("hover")
    document.getElementById("flatpickr").click()
  }
}
