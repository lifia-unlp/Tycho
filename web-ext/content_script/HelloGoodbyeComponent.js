class HelloGoodbyeComponent extends UIComponent {
    constructor(model) {
        super(model);
    }

    buildComponent() {
        let me = this;
        let messageDiv = $(
            '<div id="wen-message-component" class="topNotification"></div>'
        );
        messageDiv.append(
            "<h2>" +
                browser.i18n.getMessage("helloGoodbyeWelcomeTitle") +
                "</h2><p></p>"
        );
        messageDiv.append(
            '<p><input type="text" size="10" id="participant"></p>'
        );
        messageDiv.append(
            '<p><input id="join-button" type="submit" class="tracker-btn" value="' +
                browser.i18n.getMessage("helloGoodbyeJoinButtonText") +
                '"/></p>'
        );
        messageDiv.on("click", "#join-button", e => {
            me.join();
        });
        return messageDiv;
    }

    join() {
        let participant = document.getElementById("participant").value;
        if (participant) {
            BackgroundProxy.getSingleton().joinExperiment(participant);
        }
        this.done();
    }

    render() {
        super.render();
        this.showOverlay();
    }
}
