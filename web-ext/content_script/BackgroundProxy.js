/**
 * I am a proxy for the BackgroundFacade.
 * If you see my protocol, it matches one to one the protocol of BackgroundFacade.
 * I encapsulate message serialization and transmission. 
 */

let backgroundProxySingleton = null;

class BackgroundProxy {

    static getSingleton() {
        if (backgroundProxySingleton == null) {
            backgroundProxySingleton = new BackgroundProxy();
        }
        return backgroundProxySingleton
    }

    /**
     * submitDemographic info so the background submits it to the server
     */
    async submitDemographics(demographics) {
        return await this.send({ methodName: 'submitDemographics', arguments: demographics });
    }

    /**
     * Submit report from a task to the server. UserId will be added by the background
     */
    async submitTaskReport(partialReport) {
        return await this.send({ methodName: 'submitTaskReport', arguments: partialReport });
    }

    async activeComponetIsDone(demographics) {
        return await this.send({ methodName: 'activeComponetIsDone', arguments: {} });
    }

    async getActiveComponentSpec() {
        return await this.send({ methodName: 'getActiveComponentSpec', arguments: {} });
    }

    async startTask() {
        return await this.send({ methodName: 'startTask', arguments: {} });
    }

    async pauseTask() {
        return await this.send({ methodName: 'pauseTask', arguments: {} });
    }

    async resumeTask() {
        return await this.send({ methodName: 'resumeTask', arguments: {} });
    }

    async finishTask() {
        return await this.send({ methodName: 'finishTask', arguments: {} });
    }

    // Private protocol down here
    async send(rmc) {
        try {
            return browser.runtime.sendMessage(rmc);
        } catch { console.log('Background are not ready yet: ') }
    }

}