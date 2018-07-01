class HelloGoodbyeComponent extends UIComponent {

  constructor(model) {
    super(model);
  }

  buildComponent() {
    let me = this;
    let messageDiv = $(
      '<div id="wen-message-component" class="topNotification"></div>'
    );
    messageDiv.append("<h1>Web usage experiment</h1><p></p>");
    if (! this.model.experiment) {
      messageDiv.append(
        '<input type="text" size="10" id="experiment"><p><input id="join-button" type="submit" class="tracker-btn" value="Join"/></p>'
      );
      messageDiv.on("click", "#join-button", e => {
        me.join();
      });
    } else {
      messageDiv.append(
        '<input id="join-button" type="submit" class="tracker-btn" value="Leave"/>'
      );
      messageDiv.on("click", "#join-button", e => {
        me.leave();
      });
    }
    return messageDiv;
  }

  join() {
    let experiment = document.getElementById("experiment").value;
    if (experiment) {
      BackgroundProxy.getSingleton().joinExperiment(experiment);
    }
    this.done();
  }

  leave() {
    BackgroundProxy.getSingleton().leaveExperiment();
    this.done();
  }

  logUrl() {
    //I do not do this. 
  }

  render() {
    super.render();
    this.showOverlay();
  }
}
