class QuestionaireComponent extends UIComponent {
    constructor(model) {
        super(model);
        this.questions = this.model.questions.split(/\r?\n/g);
    }

    render() {
        this.model.startTime = new Date().getTime();
        super.render();
        this.showOverlay();
    }

    buildComponent() {
        let me = this;
        let panel = $('<div id="welcome" class="topNotification"></div>');
        panel.append("<h2>" + this.model.introduction + "</h2>");
        for (let i = 0; i < this.questions.length; i = i + 1) {
            panel.append("<p>" + this.questions[i] + "</p>");
            panel.append(
                '<input id="response' +
                    i +
                    '" type="text" maxlength="100" size="100">'
            );
        }
        panel.append(
            '<p><input id="welcome-button" type="submit" class="tracker-btn" value="' +
                browser.i18n.getMessage("submitButtonText") +
                '"/></p>'
        );
        panel.on("click", "#welcome-button", e => {
            me.collectResponses();
            me.submitAndFinish();
        });
        return panel;
    }

    activate() {
        super.activate();
        this.showOverlay();
    }

    collectResponses() {
        let responses = [];
        for (let i = 0; i < this.questions.length; i = i + 1) {
            responses.push({
                q: this.questions[i],
                a: document.getElementById("response" + i).value
            });
        }
        this.model.responses = responses;
    }

    async submitAndFinish() {
        this.model.ellapsedMs = new Date().getTime() - this.model.startTime;
        this.submitResults();
        this.done();
    }
}
