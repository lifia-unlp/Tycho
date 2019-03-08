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
                "<h2>" +
                    browser.i18n.getMessage("helloGoodbyeWelcomeTitle") +
                    "</h2><p></p>"
            );
            messageDiv.append(
                '<p><input type="text" size="10" id="experiment"></p>'
            );
            messageDiv.append(
                '<p><input id="join-button" type="submit" class="tracker-btn" value="' +
                    browser.i18n.getMessage("helloGoodbyeJoinButtonText") +
                    '"/></p>'
            );
            messageDiv.on("click", "#join-button", e => {
                me.join();
            });
        } else {
            messageDiv.append(
                "<h2>" +
                    browser.i18n.getMessage("helloGoodbyeThanksTitle") +
                    "</h2><p></p>"
            );

            messageDiv.append(
                '<input id="join-button" type="submit" class="tracker-btn" value="' +
                    browser.i18n.getMessage(
                        "helloGoodbyeYoureWelcomeButtonText"
                    ) +
                    '"/>'
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

    render() {
        super.render();
        this.showOverlay();
    }
}
