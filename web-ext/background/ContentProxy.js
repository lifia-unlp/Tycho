/**
 * I am a proxy for the ContentFacade of the current tab.
 * If you see my protoco, it matches one to one the protocol of ContentFacade.
 * I encapsulate message serialization and transmission.
 */

let contentProxySingleton = null;

class ContentProxy {
  static getSingleton() {
    if (contentProxySingleton == null) {
      contentProxySingleton = new ContentProxy();
    }
    return contentProxySingleton;
  }

  //notify the contentFacade that an update is needed
  async render(visible) {
    return await this.send({
      methodName: "render",
      arguments: { visible: visible }
    });
  }

  /**
   * Send a rmc to all tabs. Return nothing
   * @param {the message to send} rmc
   */
  async send(rmc) {
    let tabs = await browser.tabs.query({});
    if (tabs.length > 0) {
      for (let i = 0; i < tabs.length; ++i) {
        try {
          browser.tabs.sendMessage(tabs[i].id, rmc).catch(() => { });
        } catch (error) {
          console.log("Content scripts are not ready yet in that tab: ", error);
        }
      }
    } else {
      console.log(
        "Sending a message to the content scripts when no tab is active"
      );
    }
  }
}
