import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menu", "backdrop"];

  connect() {
    // Initialize with menu hidden
    this.hide();

    // Create backdrop if it doesn't exist
    if (!this.hasBackdropTarget) {
      const backdrop = document.createElement("div");
      backdrop.setAttribute("data-dropdown-target", "backdrop");
      backdrop.setAttribute("data-action", "click->dropdown#hide");
      backdrop.className =
        "fixed inset-0 bg-black bg-opacity-25 transition-opacity hidden";
      document.body.appendChild(backdrop);
    }
  }

  disconnect() {
    // Clean up backdrop when controller is disconnected
    if (this.hasBackdropTarget) {
      this.backdropTarget.remove();
    }
  }

  toggle() {
    if (this.menuTarget.classList.contains("hidden")) {
      this.show();
    } else {
      this.hide();
    }
  }

  show() {
    this.menuTarget.classList.remove("hidden");
    this.backdropTarget.classList.remove("hidden");
    this.backdropTarget.classList.add("opacity-100");
  }

  hide() {
    this.menuTarget.classList.add("hidden");
    this.backdropTarget.classList.add("hidden");
    this.backdropTarget.classList.remove("opacity-100");
  }
}
