class HelloGoodbyeComponent extends UIComponent {
  constructor(model) {
    super(model);
  }

  buildComponent() {
    let me = this;
    let messageDiv = $(
      '<div id="wen-message-component" class="topNotification"></div>'
    );

    if (!this.model.experiment) {
      messageDiv.append(
        "<h1>Which experiment would you like to join?</h1><p></p>"
      );
      messageDiv.append(
        '<input type="text" size="10" id="experiment"><p><input id="join-button" type="submit" class="tracker-btn" value="Join"/></p>'
      );
      messageDiv.on("click", "#join-button", e => {
        me.join();
      });
    } else {
      messageDiv.append(
        "<h1>Thanks for taking part in this experiment</h1><p></p>"
      );

      messageDiv.append(
        '<input id="join-button" type="submit" class="tracker-btn" value="You\'re welcome"/>'
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

  logUrl() {
    //I do not do this.
  }

  render() {
    super.render();
    this.showOverlay();
  }
}
