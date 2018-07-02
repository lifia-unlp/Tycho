class TaskInstructionsComponent extends UIComponent {

  constructor(model) {
    super(model);
  }

  //This is not the right hook to do this. Need a new one
  render() {
    super.render();
    if (!this.model.startTime || this.model.paused) {
      this.showOverlay();
    }
  }

  buildComponent() {
    const me = this;
    let tracker = $(
      '<div id="tracker"><span id="trackerInstructions">' +
        this.model.instructions +
        "</span> </div>"
    );
    this.addButton(
      tracker,
      "startButton",
      "Iniciar",
      () => {
        me.startTask();
      },
      !me.model.startTime
    );
    this.addButton(
      tracker,
      "pauseButton",
      "Pausar",
      () => {
        me.pauseTask();
      },
      me.model.startTime && !me.model.paused
    );
    this.addButton(
      tracker,
      "resumeButton",
      "Reanudar",
      () => {
        me.resumeTask();
      },
      me.model.paused
    );
    this.addButton(
      tracker,
      "endButton",
      "Finalizar",
      () => {
        me.finishTask();
      },
      me.model.startTime && !me.model.paused
    );
    return tracker;
  }

  startTask() {
    this.model.paused = false;
    this.model.startTime = new Date().getTime();
    this.model.ellapsedMs = 0;
    this.setModel(this.model);
  }

  pauseTask() {
    this.model.paused = true;
    this.model.ellapsedMs += new Date().getTime() - this.model.startTime;
    this.setModel(this.model);
  }

  resumeTask() {
    this.model.paused = false;
    this.model.startTime = new Date().getTime();
    this.setModel(this.model);
  }

  finishTask() {
    this.model.paused = false;
    this.model.ellapsedMs += new Date().getTime() - this.model.startTime;
    this.model.finished = true;
    this.model.successful = eval(this.model.successCondition);
    this.submitResults();
    this.done();
  }

  addButton(tracker, id, text, func, show) {
    let button = $("<input/>", {
      value: text,
      class: "tracker-button",
      type: "submit",
      id: id
    });
    tracker.append(button);
    if (!show) {
      button.hide();
    }
    tracker.append(" ");
    tracker.on("click", "#" + id, func);
  }
}
