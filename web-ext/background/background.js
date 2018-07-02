/**
 * Create a BackgroundFacaade and delegate everything to it.
 * The BackgroundFacade is the interface between the external, non-OO world
 * and our object oriented background subsystem.
 */

var facade = BackgroundFacade.getSingleton();
var enabled = facade.visible;

var updateIcon = function() {
  if (! enabled) {
    browser.browserAction.setIcon({ path: "resources/rut-disabled.svg" });
  } else {
    browser.browserAction.setIcon({ path: "resources/rut.svg" });
  };
}

updateIcon();

browser.runtime.onMessage.addListener(rmcRequest => {
  return facade.handle(rmcRequest);
});

browser.browserAction.onClicked.addListener(() => {
  enabled = ! enabled;
  facade.setVisible(enabled);
  updateIcon();
});
