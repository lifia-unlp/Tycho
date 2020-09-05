class TaskInstructionsComponent extends UIComponent {
  constructor(model) {
    super(model);
    this.lockedDown = true;
    this.listenersHandler = ListenersHandler.getSingleton();
  }

  //This is not the right hook to do this. Need a new one
  render() {
    this.reloadListeners();
    super.render();
    if (!this.model.startTime || this.model.paused) {
      this.showOverlay();
    }
  }

  buildComponent() {
    const me = this;
    const cssClass = (!this.model.startTime || this.model.paused) ? 'trackerNotStartedOrPaused' : 'trackerRunning';
    let tracker = $(
      '<div id="tracker" class="' + cssClass + '">Basic Task instructions with <span id="trackerInstructions">' +
      this.model.instructions +
      "</span><p id='buttonsInstructions'> Click <strong>Start</strong> to begin with the task, and <strong>Finish</strong> when you're done.</p></div>"
    );
    tracker.css("bottom", "0");
    this.addButton(
      tracker,
      "toggleTrackerPositionButton",
      browser.i18n.getMessage("toggleTrackerPosition"),
      () => {
        me.toggleTrackerPosition();
      },
      me.model.startTime && !me.model.paused
    );

    this.addButton(
      tracker,
      "startButton",
      browser.i18n.getMessage("startTaskButtonTest"),
      () => {
        me.startTask();
      },
      !me.model.startTime
    );
    this.addButton(
      tracker,
      "pauseButton",
      browser.i18n.getMessage("pauseTaskButtonTest"),
      () => {
        me.pauseTask();
      },
      me.model.startTime && !me.model.paused
    );
    this.addButton(
      tracker,
      "resumeButton",
      browser.i18n.getMessage("resumeTaskButtonTest"),
      () => {
        me.resumeTask();
      },
      me.model.paused
    );
    this.addButton(
      tracker,
      "endButton",
      browser.i18n.getMessage("finishTaskButtonTest"),
      () => {
        me.finishTask();
      },
      me.model.startTime && !me.model.paused
    );
    if ((this.model.completionChoices = "#doneOrAbandon")) {
      this.addButton(
        tracker,
        "abandonButton",
        browser.i18n.getMessage("abandonTaskButtonTest"),
        () => {
          me.abandonTask();
        },
        me.model.startTime && !me.model.paused
      );
    }
    return tracker;
  }

  startTask() {
    this.model.paused = false;
    this.model.startTime = new Date().getTime();
    this.model.ellapsedMs = 0;
    this.model.clicks = 0;
    this.model.inactiveTime = 0;
    this.model.distance = 0;
    this.listenersHandler.addNewListeners(this.model);
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

  async finishTask() {
    this.model = await this.listenersHandler.finishCaptureEvents(this.model);
    this.model.paused = false;
    this.model.ellapsedMs += new Date().getTime() - this.model.startTime;
    this.model.finished = true;
    this.model.abandoned = false;
    this.model.successful = eval(this.model.successCondition);
    this.submitResults();
    this.done();
  }

  async abandonTask() {
    this.model = await this.listenersHandler.finishCaptureEvents(this.model);
    this.model.paused = false;
    this.model.ellapsedMs += new Date().getTime() - this.model.startTime;
    this.model.finished = false;
    this.model.abandoned = true;
    this.model.successful = eval(this.model.successCondition);
    this.submitResults();
    this.done();
  }

  toggleTrackerPosition() {
    this.lockedDown = !this.lockedDown;
    if (this.lockedDown) {
      this.component.css("bottom", "0");
      this.component.css("top", "");
    } else {
      this.component.css("top", "0");
      this.component.css("bottom", "");
    };

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

  reloadListeners() {
    if (this.isActiveTask()) {
      this.listenersHandler.continueListeners(this.model);
    } else {
      this.listenersHandler.pauseListeners(this.model);
    }
  }

  isActiveTask() {
    return (this.model && !this.model.paused && !this.model.abandoned && !this.model.finished && this.model.startTime > 0);
  }
}
