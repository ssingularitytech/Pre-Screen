import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["container", "overlay"];

  connect() {
    // Add event listener for escape key
    this.handleKeyPress = this.handleKeyPress.bind(this);
    document.addEventListener("keydown", this.handleKeyPress);
  }

  disconnect() {
    document.removeEventListener("keydown", this.handleKeyPress);
  }

  open() {
    this.containerTarget.classList.remove("hidden");
    document.body.classList.add("overflow-hidden");
  }

  close() {
    this.containerTarget.classList.add("hidden");
    document.body.classList.remove("overflow-hidden");
  }

  handleKeyPress(event) {
    if (event.key === "Escape") {
      this.close();
    }
  }
}
