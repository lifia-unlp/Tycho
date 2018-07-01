/**
 * Create a BackgroundFacaade and delegate everything to it.
 * The BackgroundFacade is the interface between the external, non-OO world 
 * and our object oriented background subsystem.
 */

var facade = BackgroundFacade.getSingleton();
browser.runtime.onMessage.addListener(rmcRequest => {return facade.handle(rmcRequest)} );
browser.browserAction.onClicked.addListener(() => {console.log('Clicked')});
