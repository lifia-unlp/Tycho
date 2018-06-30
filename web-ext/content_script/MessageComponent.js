class MessageComponent extends UIComponent {
  constructor(model) {
    super(model);
  }

  buildComponent() {
    let me = this;
    let messageDiv = $('<div id="wen-message-component" class="topNotification"></div>');
    messageDiv.append('<h1>' + this.model.title + '</h1><p></p>');
    messageDiv.append(this.model.message);
    messageDiv.append(
      '<p><input id="close-button" type="submit" class="tracker-btn" value="Entendido"/></p>'
    );
    messageDiv.on("click", "#close-button", e => {
      me.done();
    });
    return messageDiv;
  }

  render() {
    super.render();
    this.showOverlay();
  }

}
