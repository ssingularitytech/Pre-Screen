import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["input", "filename", "submit"];

  connect() {
    this.submitTarget.disabled = true;
  }

  handleFileSelect(event) {
    const file = event.target.files[0];
    if (file) {
      this.filenameTarget.textContent = `Selected file: ${file.name}`;
      this.submitTarget.disabled = false;
    } else {
      this.filenameTarget.textContent = "";
      this.submitTarget.disabled = true;
    }
  }

  submit(event) {
    const file = this.inputTarget.files[0];
    if (!file) {
      event.preventDefault();
      return;
    }

    // File validation
    if (!file.name.toLowerCase().endsWith(".csv")) {
      event.preventDefault();
      alert("Please select a CSV file");
      return;
    }

    this.submitTarget.disabled = true;
    this.submitTarget.value = "Uploading...";
  }
}
