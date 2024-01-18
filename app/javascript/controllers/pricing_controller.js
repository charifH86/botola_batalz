import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pricing"
export default class extends Controller {
  connect() {
  }
  // Inside your Stimulus controller
update(event) {
  event.preventDefault();
  const input = event.target;
  const valueDisplay = input.nextElementSibling; // Assumes the <span> immediately follows the <input>
  valueDisplay.textContent = `€${input.value}`;
}

}
