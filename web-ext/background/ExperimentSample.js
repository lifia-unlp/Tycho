class ExperimentSample {
    constructor(experimentId, sampleId, notes, sequence) {
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
        this.id = sampleId;
    }

    getId() {
        return this.id;
    }

    getexperimentId() {
        return this.experimentId;
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
        let activeTask = this.getActiveTask();
        activeTask.done();
        this.current = this.current + 1;
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
     */
    static fromJson(experimentJson) {
        let tasks = [];
        experimentJson.tasks.forEach(element => {
            tasks.push(ExperimentTask.fromJson(element));
        });
        let session = new ExperimentSample(
            experimentJson.id,
            experimentJson.suggestedSampleId,
            experimentJson.notes,
            tasks
        );
        return session;
    }
}
