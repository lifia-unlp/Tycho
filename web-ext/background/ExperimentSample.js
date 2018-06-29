class ExperimentSample {
  constructor(experimentDesignId, notes, sequence) {
    this.componentSpecSequence = sequence;
    this.experimentDesignId = experimentDesignId;
    this.notes = notes;
    this.current = -1;
    this.id = this.uuidv4();
  }

  getId() {
    return this.id;
  }

  getexperimentDesignId() {
      return this.experimentDesignId;
  }

  start() {
    this.current = 0;
    ContentProxy.getSingleton().update();
  }

  next() {
    if (this.current + 1 < this.componentSpecSequence.length) {
      this.current = this.current + 1;
    }
    ContentProxy.getSingleton().update();
  }

  getActiveComponentSpec() {
    if (0 <= this.current && this.current < this.componentSpecSequence.length) {
      return this.componentSpecSequence[this.current];
    } else {
      return {
        componentClass: "NullComponent",
        parameters: { notice: "Session component index is out of bounds" }
      };
    }
  }

  startActiveTask() {
    let params = this.getActiveComponentSpec().parameters;
    params.paused = false;
    params.startTime = new Date().getTime();
    params.ellapsedMs = 0;
    ContentProxy.getSingleton().update();
  }

  pauseActiveTask() {
    let params = this.getActiveComponentSpec().parameters;
    params.paused = true;
    params.ellapsedMs += new Date().getTime() - params.startTime;
    ContentProxy.getSingleton().update();
  }

  resumeActiveTask() {
    let params = this.getActiveComponentSpec().parameters;
    params.paused = false;
    params.startTime = new Date().getTime();
    ContentProxy.getSingleton().update();
  }

  finishActiveTask() {
    let params = this.getActiveComponentSpec().parameters;
    params.paused = false;
    params.ellapsedMs += new Date().getTime() - params.startTime;
    params.finished = true;
    ContentProxy.getSingleton().update();
  }

  finish() {
    this.current = -1;
    ContentProxy.getSingleton().update();
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
  static fromExperimentDesignJson(designJson) {
    let session = new ExperimentSample(designJson.id, designJson.notes, designJson.tasks);
    return session;
  }
}
