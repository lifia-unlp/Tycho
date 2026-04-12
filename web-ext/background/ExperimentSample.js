class ExperimentSample {
    constructor(participantId, sessionId, experimentId, notes, sequence) {
        this.helloGoodbyeTask = {
            componentClassname: "HelloGoodbyeComponent",
            model: { experiment: this.experimentId },
            done: () => {},
            start: () => {}
        };
        this.taskSequence = sequence;
        this.experimentId = experimentId;
        this.notes = notes;
        this.current = -1;
        this.id = participantId;
        this.sessionId = sessionId;
    }

    getId() {
        return this.id;
    }

    getExperimentId() {
        return this.experimentId;
    }

    getSessionId() {
        return this.sessionId;
    }

    // reimplement with find()
    getTask(taskId) {
        var task = null;
        for (let i = 0; i < this.taskSequence.length; i = i + 1) {
            if (this.taskSequence[i].model.id == taskId) {
                task = this.taskSequence[i];
            }
        }
        return task;
    }

    start() {
        this.current = 0;
        this.getActiveTask().start();
    }

    next() {
        if (this.current < this.taskSequence.length) {
            this.activate(this.current + 1);
        }
    }

    previous() {
        if (this.current > 0) {
            this.activate(this.current - 1);
        }
    }

    activate(taskIndex) {
        let activeTask = this.getActiveTask();
        activeTask.done();
        this.current = taskIndex;
        activeTask = this.getActiveTask();
        activeTask.start();
    }

    getActiveTask() {
        if (0 <= this.current && this.current < this.taskSequence.length) {
            return this.taskSequence[this.current];
        } else {
            return this.helloGoodbyeTask;
        }
    }

    logExternalKoboldEvent(event) {
        if (this.getActiveTask() != this.helloGoodbyeTask) {
            this.getActiveTask().logExternalKoboldEvent(event);
        }
    }

    /**
     * Build a session from the Json description of an experiment design.
     * @param {*} json
     * 
     * Example of expected json:
     * {
     *   "id": 12345678,
     *   "sessionId": 7654321,
     *   "startTime": null,
     *   "duration": 0,
     *   "status": "non-started",
     *   "protocol": {
     *      "id": 1234,
     *      "notes": "Protocol A",
     *      "tasks": [
     *          "name": "Some Task",
     *          "notes": "More details about task",
     *          "isPrototype": false,
     *          "componentClassname": "ScreenMessage",
     *          "model": {
     *              "id": 100,
     *              "title": "Title of the screen message",
     *              "message": "Message content",
     *          }
     *      ]
     *   } 
     * }
     * 
     */
    static fromJson(experimentJson) {
        let tasks = [];
        experimentJson.protocol.tasks.forEach(element => {
            tasks.push(ExperimentTask.fromJson(element));
        });
        let session = new ExperimentSample(
            experimentJson.id,
            experimentJson.sessionId,
            experimentJson.protocol.id,
            experimentJson.protocol.notes,
            tasks
        );
        return session;
    }
}
