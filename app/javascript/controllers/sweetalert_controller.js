import Swal from 'https://cdn.jsdelivr.net/npm/sweetalert2@11.10.1/+esm'
import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sweetalert"
export default class extends Controller {
  connect() {
    console.log("Alert controller connected");
  }
  static values = {
    icon: String,
    title: String,
    html: String,
    confirmButtonText: String,
    showCancelButton: Boolean,
    cancelButtonText: String
  }

  initSweetalert(event) {
    event.preventDefault(); // Prevent the form to be submited after the submit button has been clicked
    console.log("Alert controller connected",this)
    const form = event.target.closest('form');

    Swal.fire({
      icon: this.iconValue,
      title: this.titleValue,
      html: this.htmlValue,
      confirmButtonText: this.confirmButtonTextValue,
      showCancelButton: this.showCancelButtonValue,
      cancelButtonText: this.cancelButtonTextValue,
      reverseButtons: true
    }).then((result) => {
      if (result.isConfirmed) {
        form.submit();
      }
    });
  }
}
