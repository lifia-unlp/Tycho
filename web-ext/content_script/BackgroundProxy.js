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
    return backgroundProxySingleton;
  }

  async submitResultsOfTask(model) {
    return await this.send({
      methodName: "submitResultsOfTask",
      arguments: { model: model }
    });
  }

  async setModelOfTask(model) {
    return await this.send({
      methodName: "setModelOfTask",
      arguments: { model: model }
    });
  }

  async activeComponetIsDone() {
    return await this.send({
      methodName: "activeComponetIsDone",
      arguments: {}
    });
  }

  async getActiveTask() {
    return await this.send({ methodName: "getActiveTask", arguments: {} });
  }

  async getVisible() {
    return await this.send({ methodName: "getVisible", arguments: {} });
  }

  async joinExperiment(id) {
    return await this.send({ methodName: "joinExperiment", arguments: {id: id} });
  }

  async leaveExperiment() {
    return await this.send({ methodName: "leaveExperiment", arguments: {} });
  }

  async getSemaphore(semaphoreId) {
    let status = await this.send({ methodName: "getSemaphore", arguments: {semaphoreId: semaphoreId} });
    return status
  }

  // Private protocol down here
  async send(rmc) {
    try {
      return browser.runtime.sendMessage(rmc);
    } catch (error) {
      console.log("Background are not ready yet: ");
    }
  }
}
