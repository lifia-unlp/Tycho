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

  static getSingleton() {
    if (backgroundFacadeSingleton == null) {
      backgroundFacadeSingleton = new BackgroundFacade();
    }
    return backgroundFacadeSingleton;
  }

  getExperiment() {
    return this.experiment;
  }

  /**
   * Submit a report to the server. The report includes the 
   * model and the koboldModel of the task.
   * This method also uptades the model of the local version of the task
   * with the one received. 
   * @param {args.model is the updated model from the UIComponent} args 
   */
  submitResultsOfTask(args) {
    let report = {
      sampleId: this.experiment.getId(),
      experimentId: this.experiment.getexperimentId()
    };
    let updatedTask = this.experiment.getTask(args.model.id);
    updatedTask.model = args.model; 
    report.model = args.model;
    report.koboldModel = updatedTask.koboldModel;
    this.serverApi.submitTaskReport(report);
  }

  getActiveTask() {
    if (!this.experiment) {
      return null;
    } else {
      return this.experiment.getActiveTask();
    }
  }

  setModelOfTask(args) {
    this.experiment.getTask(args.model.id).setModel(args.model);
    ContentProxy.getSingleton().render();
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
            this.experiment = ExperimentSample.fromJson(
              response.data
            );
            this.experiment.start();
            ContentProxy.getSingleton().render();
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
    ContentProxy.getSingleton().render();
  }

  activeComponetIsDone(args) {
    this.experiment.next();
    ContentProxy.getSingleton().render();
  }

  logUrlForTask(args) {
    this.experiment.getTask(args.taskId).logUrl(args.url, args.tabId);
  }

}
