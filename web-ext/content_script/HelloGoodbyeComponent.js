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
            '<p><label>Protocol ID (ex-Experiemnt) </label><br><input type="text" size="10" id="protocolId"></p>'
        );
        messageDiv.append(
            '<p><label>Session ID </label><br><input type="text" size="10" id="sessionId"></p>'
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
        let protocolId = document.getElementById("protocolId").value;
        let sessionId = document.getElementById("sessionId").value;
        if (protocolId) {
            BackgroundProxy.getSingleton().joinExperiment(protocolId);
        } else if (sessionId){
            BackgroundProxy.getSingleton().joinSession(sessionId);
        }
        this.done();
    }

    render() {
        super.render();
        this.showOverlay();
    }
}
