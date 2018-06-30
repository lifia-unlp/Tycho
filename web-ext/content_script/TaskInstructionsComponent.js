class TaskInstructionsComponent extends UIComponent {
  constructor(componentSpec) {
    super(componentSpec);
    this.instructions = componentSpec.parameters.instructions;
    this.ellapsedMs = componentSpec.parameters.ellapsedMs;
    this.paused = componentSpec.parameters.paused;
    this.startTime = componentSpec.parameters.startTime;
    this.successCondition = componentSpec.parameters.successCondition;
    this.finished = componentSpec.parameters.finished;
  }

  //This is not the right hook to do this. Need a new one
  render() {
    super.render();
    if (!this.startTime || this.paused) {
      this.showOverlay();
    }
  }

  buildComponent() {
    const me = this;
    let tracker = $(
      '<div id="tracker"><span id="trackerInstructions">' +
        this.instructions +
        "</span> </div>"
    );
    this.addButton(
      tracker,
      "startButton",
      "Iniciar",
      () => {
        me.startTask();
      },
      !me.startTime
    );
    this.addButton(
      tracker,
      "pauseButton",
      "Pausar",
      () => {
        me.pauseTask();
      },
      me.startTime && !me.paused
    );
    this.addButton(
      tracker,
      "resumeButton",
      "Reanudar",
      () => {
        me.resumeTask();
      },
      me.paused
    );
    this.addButton(
      tracker,
      "endButton",
      "Finalizar",
      () => {
        me.finishTask();
      },
      me.startTime && !me.paused
    );
    return tracker;
  }

  startTask() {
    BackgroundProxy.getSingleton().startTask();
  }

  pauseTask() {
    BackgroundProxy.getSingleton().pauseTask();
  }

  resumeTask() {
    BackgroundProxy.getSingleton().resumeTask();
  }

  finishTask() {
    this.submitResults({
      milliseconds: this.ellapsedMs,
      successful: eval(this.successCondition)
    });
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
