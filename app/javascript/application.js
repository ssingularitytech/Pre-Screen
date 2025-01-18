// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";

// Disable Turbo Drive for forms to prevent the map.get error
document.addEventListener("turbo:load", function () {
  document.addEventListener("submit", function (event) {
    if (event.target.matches("form")) {
      event.target.setAttribute("data-turbo", "false");
    }
  });
});
