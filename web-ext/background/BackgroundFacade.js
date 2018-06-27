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
    this.experiment = null;
    this.serverApi = new ServerAPI();
  }

  getExperiment() {
    return this.experiment;
  }

  static getSingleton() {
    if (backgroundFacadeSingleton == null) {
      backgroundFacadeSingleton = new BackgroundFacade();
    }
    return backgroundFacadeSingleton;
  }

  submitTaskReport(partialReport) {
    //Complete the report with the sampleId
    partialReport.sampleId = this.experiment.getId();
    partialReport.experimentDesignId = this.experiment.getexperimentDesignId();
    this.serverApi.submitTaskReport(partialReport);
    console.log("Submitted: ", partialReport)
  }

  getActiveComponentSpec() {
    if (!this.experiment) {
      return null;
    } else {
      return this.experiment.getActiveComponentSpec();
    }
  }

  /**
   * 
   * @param {id: id of the session to join} args 
   * @returns a Promise that will resolve to the joined session, or reject with the error. 
   */
  joinExperiment(args) {
    new Promise((resolve, reject) => {
      this.serverApi
        .getExperimentDesignFromServer(args.id)
        .then(response => {
          if (response) {
            this.experiment = ExperimentSample.fromExperimentDesignJson(response.data);
            this.experiment.start();
            resolve(this.experiment);
          }
        })
        .catch(error => {
          reject(error);
        });
    });
  }

  leaveExperiment() {
    this.experiment = null;
    ContentProxy.getSingleton().update();
  }

  activeComponetIsDone(args) {
    this.experiment.next();
  }

  // UnnecSession management
  // start() {
  //     this.session.start();
  // }

  //Utility method to call from the debuger console
  next() {
    this.activeComponetIsDone({});
  }

  //Task status
  startTask() {
    this.experiment.startActiveTask();
  }

  pauseTask() {
    this.experiment.pauseActiveTask();
  }

  resumeTask() {
    this.experiment.resumeActiveTask();
  }

  finishTask() {
    this.experiment.finishActiveTask();
  }
}
