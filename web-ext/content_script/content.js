/**
 * rmcRequest is a remote method call (RMC) with the following form:
 * 
 *  { methodName: 'messageX', arguments: { arg1: 'value', arg2: 'value'}}
 * 
 *  messageX: must be one of the messages that the ContentFacade object understands. 
 *  arguments: is an object 
 */

var facade = ContentFacade.getSingleton();
browser.runtime.onMessage.addListener(rmcRequest => { return facade.handle(rmcRequest) });
BackgroundProxy.getSingleton().getVisible().then(answer => { facade.render({ visible: answer }) });
facade.attachSkipKeysListener();

