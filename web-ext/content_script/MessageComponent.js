class MessageComponent extends UIComponent {
  constructor(taskSpec) {
    super(taskSpec);
    this.title = taskSpec.parameters.title;
    this.message = taskSpec.parameters.message;
  }

  buildComponent() {
    let me = this;
    let messageDiv = $('<div id="wen-message-component" class="topNotification"></div>');
    messageDiv.append('<h1>' + this.title + '</h1><p></p>');
    messageDiv.append(this.message);
    messageDiv.append(
      '<p><input id="close-button" type="submit" class="tracker-btn" value="Entendido"/></p>'
    );
    messageDiv.on("click", "#close-button", e => {
      me.done();
    });
    return messageDiv;
  }

  activate() {
    super.activate();
    this.showOverlay();
  }

  submitAndFinish() {
    this.submitResults(this.data);
    this.done();
  }
}
