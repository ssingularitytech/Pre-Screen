import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="test"
export default class extends Controller {
  connect() {
    console.log("Test controller connected");
    // this.requestFullscreen();
  }

  requestFullscreen() {
    console.log("Requesting fullscreen");
    const testContainer = document.getElementById("test-container");
    console.log(testContainer);
    if (testContainer.requestFullscreen) {
      testContainer.requestFullscreen();
    } else if (testContainer.webkitRequestFullscreen) {
      testContainer.webkitRequestFullscreen();
    } else if (testContainer.mozRequestFullScreen) {
      testContainer.mozRequestFullScreen();
    }
  }
}
