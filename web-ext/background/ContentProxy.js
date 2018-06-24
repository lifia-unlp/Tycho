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
        return contentProxySingleton
    }

    //notify the contentFacade that an update is needed
    async update() {
        return await this.send({ methodName: 'update', arguments: {} });
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
                    browser.tabs.sendMessage(tabs[i].id, rmc);
                } catch {
                    console.log('Content scripts are not ready yet in that tab: ', error);
                }
            }
        } else {
            console.log("Sending a message to the content scripts when no tab is active")
        }
    }


    /**
     * The following version send messages only to the active tab (1 tab only)
     * It will get an answer in return
     */
    // async send(rmc) {
    //     let activeTabs = await browser.tabs.query({ active: true });
    //     if (activeTabs.length > 0) {
    //         try {
    //             var response = await browser.tabs.sendMessage(activeTabs[0].id, rmc);
    //         } catch (error) { console.log('Content scripts are not ready yet: ', error) }
    //     } else {
    //         console.log("Sending a message to the content scripts when no tab is active")
    //     }
    //     return response;
    // }
}