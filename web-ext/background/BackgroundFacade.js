/**
 * This class implement the Facade pattern. It is the only entry point
 * in the content script subsystem for remote messages from the background scripts.
 * See content.js to learn how I receive messages from a remote object (the background scripts)
 * All my methods have one argument (arguments)
 */

let serviceURL = "http://localhost:8888";
let version = "1";
let backgroundFacadeSingleton = null;

class BackgroundFacade extends Facade {
  constructor() {
    super();
    this.session = null;
    this.serverApi = new ServerAPI();
  }

  static getSingleton() {
    if (backgroundFacadeSingleton == null) {
      backgroundFacadeSingleton = new BackgroundFacade();
    }
    return backgroundFacadeSingleton;
  }

  submitDemographics(partialDemographics) {
    partialDemographics.userId = this.session.getUserId();
    partialDemographics.version = version;
    this.serverApi.submitDemographics(partialDemographics);
  }

  submitTaskReport(partialReport) {
    //Complete the report with the userId
    partialReport.userId = this.session.getUserId();
    this.serverApi.submitTaskReport(partialReport);
  }

  getActiveComponentSpec() {
    if (!this.session) {
      return null;
    } else {
      return this.session.getActiveComponentSpec();
    }
  }

  getSession() {
    return this.session;
  }

  joinSession(args) {
    return this.loadSessionFromServer(args.id);
  }

  leaveSession() {
    this.session = null;
    ContentProxy.getSingleton().update();
  }

  activeComponetIsDone(args) {
    this.session.next();
  }

  // UnnecSession management
  // start() {
  //     this.session.start();
  // }

  //Utility method to call from the debuger console
  next() {
    this.activeComponetIsDone({});
  }

  async loadSessionFromServer(id) {
    let response = await this.serverApi.getSessionFromServer(id);
    if (response) {
      this.session = ExperimentSession.fromJson(response.data);
      this.session.start();
    }
    return response;
  }

  //Task status
  startTask() {
    this.session.startActiveTask();
  }

  pauseTask() {
    this.session.pauseActiveTask();
  }

  resumeTask() {
    this.session.resumeActiveTask();
  }

  finishTask() {
    this.session.finishActiveTask();
  }
}
