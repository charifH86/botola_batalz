import { Controller } from "@hotwired/stimulus"
import flatpickr from "stimulus-flatpickr";

// Connects to data-controller="flatpicker"
export default class extends Controller {
  connect() {
  //   const flat = new flatpickr()
  //   const f = flat(this, {inline: true})
    console.log("TEST", flatpickr)
  }
}
