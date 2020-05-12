/**
 * This class implement the Facade pattern. It is the only entry point
 * in the content script subsystem for remote messages from the background scripts.
 * See content.js to learn how I receive messages from a remote object (the background scripts)
 * All my methods have one argument (arguments)
 */

let version = "1";
let backgroundFacadeSingleton = null;

class BackgroundFacade extends Facade {
    constructor() {
        super();
        this.experiment = null;
        this.serverApi = new ServerAPI();
        this.visible = false;
    }

    static getSingleton() {
        if (backgroundFacadeSingleton == null) {
            backgroundFacadeSingleton = new BackgroundFacade();
        }
        return backgroundFacadeSingleton;
    }

    setApiUrl(url) {
        this.serverApi.setApiUrl(url);
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
            experimentId: this.experiment.getExperimentId()
        };
        let updatedTask = this.experiment.getTask(args.model.id);
        updatedTask.model = args.model;
        report.model = args.model;
        report.koboldEvents = updatedTask.koboldEvents;
        this.serverApi.submitTaskReport(report);
    }

    getActiveTask() {
        if (!this.experiment) {
            return {
                componentClassname: "HelloGoodbyeComponent",
                model: null
            };
        } else {
            return this.experiment.getActiveTask();
        }
    }

    setVisible(visible) {
        // always abort (set experiment to null) when enabling/disabling the extension
        this.experiment = null;
        this.visible = visible;
        ContentProxy.getSingleton().render(this.visible);
    }

    getVisible() {
        return this.visible;
    }

    setModelOfTask(args) {
        this.experiment.getTask(args.model.id).setModel(args.model);
        ContentProxy.getSingleton().render(this.visible);
    }

    /**
     *
     * @param {id: id of the protocol to join} args
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
                        ContentProxy.getSingleton().render(this.visible);
                        resolve(this.experiment);
                    }
                })
                .catch(error => {
                    reject(error);
                });
        });
    }

      /**
     *
     * @param {id: id of the experiment to join} args
     * @returns a Promise that will resolve to the joined session, or reject with the error.
     */
    joinSession(args) {
        new Promise((resolve, reject) => {
            this.serverApi
                .getExperimentDesignForSessionFromServer(args.id)
                .then(response => {
                    if (response) {
                        this.experiment = ExperimentSample.fromJson(
                            response.data
                        );
                        this.experiment.start();
                        ContentProxy.getSingleton().render(this.visible);
                        resolve(this.experiment);
                    }
                })
                .catch(error => {
                    reject(error);
                });
        });
    }

    /**
     * Ask for the value of global variables. Some globals are resolved locally. Others
     * need to be queries to the server.
     * @param {args.variableId is the id of the variable} args
     * @returns a Promise that will resolve to the value of the variable, or reject with the error.
     */
    getVariable(args) {
        if (args.variableId.toLowerCase() == "sampleid") {
            return new Promise((resolve, reject) => {
                resolve({id: "sampleid", value: this.experiment.id});
            });
        } else {
            return new Promise((resolve, reject) => {
                this.serverApi
                    .getVariable(
                        args.variableId.toLowerCase(),
                        this.experiment.getExperimentId()
                    )
                    .then(response => {
                        let status = response.data;
                        resolve(status);
                    })
                    .catch(error => {
                        reject(error);
                    });
            });
        }
    }

    /**
     * Ask for the status of a global semaphore (0 should be understood as move on,
     * negative numbers wait for signales, positive numbers indicate already signaled)
     * @param {args.semaphoreId is the id of the global semaphore whose status we need} args
     * @returns a Promise that will resolve to the status, or reject with the error.
     */
    getSemaphore(args) {
        let me = this;
        return new Promise((resolve, reject) => {
            this.serverApi
                .getSemaphore(args.semaphoreId, me.experiment.getExperimentId())
                .then(response => {
                    let status = response.data;
                    resolve(status);
                })
                .catch(error => {
                    reject(error);
                });
        });
    }

    /**
     * calls activeComponetIsDone() when the semaphore has status == 0
     * @param {*} semaphoreId
     */
    autoDoneOnSemaphore(semaphoreId) {
        // Check that the experiment still exists to deal abort during a semaphore.
        if (this.experiment) {
            let experimentId = this.experiment.getExperimentId();
            this.serverApi
                .getSemaphore(semaphoreId, experimentId)
                .then(response => {
                    this.handleSemaphoreStatus(response.data);
                });
        }
    }

    handleSemaphoreStatus(semaphore) {
        if (
            //Check that the WaitComponent is still the active one.
            //The skip functionality may have changed the active task during the delay.
            this.getActiveTask().componentClassname ==
                "SemaphoreWaitComponent" &&
            this.getActiveTask().model.semaphoreId == semaphore.id
        ) {
            let me = this;
            if (semaphore.status == 0) {
                this.activeComponetIsDone();
            } else {
                setTimeout(() => {
                    me.autoDoneOnSemaphore(semaphore.id);
                }, 1000);
            }
        }
    }

    signalSemaphoreAndProceed(semaphoreId) {
        this.serverApi.signalSemaphore(
            semaphoreId,
            this.experiment.getExperimentId()
        );
        this.activeComponetIsDone();
    }

    leaveExperiment() {
        this.experiment = null;
        ContentProxy.getSingleton().render(this.visible);
    }

    activeComponetIsDone(args) {
        if (this.experiment) {
            this.experiment.next();
        }
        ContentProxy.getSingleton().render(this.visible);
    }

    logExternalKoboldEvent(args) {
        if (this.experiment != null) {
            this.experiment.logExternalKoboldEvent(args.event);
        }
    }

    skipForwards(args) {
        this.activeComponetIsDone();
    }

    skipBackwards(args) {
        this.experiment.previous();
        ContentProxy.getSingleton().render(this.visible);
    }
}
