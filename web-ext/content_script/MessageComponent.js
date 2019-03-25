class MessageComponent extends UIComponent {
    constructor(model) {
        super(model);
    }

    buildComponent() {
        let me = this;
        let messageDiv = $(
            '<div id="wen-message-component" class="topNotification"></div>'
        );
        messageDiv.append("<h1>" + this.model.title + "</h1>");
        messageDiv.append("<p>" + this.model.message + "</p>");
        messageDiv.append(
            '<p><input id="close-button" type="submit" class="tracker-btn" value="' +
                browser.i18n.getMessage("messageComponentAcceptButtonText") +
                '"/></p>'
        );
        messageDiv.on("click", "#close-button", e => {
            me.submit();
        });
        return messageDiv;
    }

    submit() {
        this.model.ellapsedMs = new Date().getTime() - this.model.startTime;
        this.submitResults();
        this.done();
    }

    render() {
        this.model.startTime = new Date().getTime();
        super.render();
        this.showOverlay();
    }
}
