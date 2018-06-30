class ExperimentSample {

  constructor(experimentId, notes, sequence) {
    this.taskSequence = sequence;
    this.experimentId = experimentId;
    this.notes = notes;
    this.current = -1;
    this.id = this.uuidv4();
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
    for (let i = 0; i < this.taskSequence.length; i = i + 1 ) {
      if (this.taskSequence[i].model.id == taskId) {
        task = this.taskSequence[i];
      }
    }
    return task
  }

  start() {
    this.current = 0;
  }

  next() {
    if (this.current + 1 < this.taskSequence.length) {
      this.current = this.current + 1;
    }
  }

  getActiveTask() {
    if (0 <= this.current && this.current < this.taskSequence.length) {
      return this.taskSequence[this.current];
    } else {
      return {
        componentClass: "NullComponent",
        model: { notice: "Session component index is out of bounds" }
      };
    }
  }

  uuidv4() {
    return ([1e7] + -1e3 + -4e3 + -8e3 + -1e11).replace(/[018]/g, c =>
      (
        c ^
        (crypto.getRandomValues(new Uint8Array(1))[0] & (15 >> (c / 4)))
      ).toString(16)
    );
  }

  /**
   * Build a session from the Json description of an experiment design.
   * @param {*} json
   */
  static fromJson(experimentJson) {
    let tasks = [];
    experimentJson.tasks.forEach(element => {
      tasks.push(ExperimentTask.fromJson(element))
    });
    let session = new ExperimentSample(
      experimentJson.id,
      experimentJson.notes,
      tasks
    );
    return session;
  }
}
