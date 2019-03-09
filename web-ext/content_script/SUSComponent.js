class SUSComponent extends UIComponent {
    constructor(model) {
        super(model);
    }

    //This is not the right hook to do this. Need a new one
    render() {
        this.model.startTime = new Date().getTime();
        super.render();
        this.showOverlay();
    }

    buildComponent() {
        const me = this;
        let susForm = $('<div id="sus" class="topNotification"></div>');
        susForm.append(
            "<legend>" + browser.i18n.getMessage("susLegend") + "</legend>"
        );
        for (let questionNumber = 0; questionNumber < 10; questionNumber++) {
            var question = this.getSusQuestions()[questionNumber];
            var paragraph = $("<p></p>");
            var table = $("<table></table>");
            var row = $("<tr></tr>");
            table.append(row);
            paragraph.append(
                "<label>" +
                    question.number +
                    ". " +
                    question.description +
                    "</label>"
            );
            paragraph.append(table);
            for (let optionNumber = 1; optionNumber <= 5; optionNumber++) {
                var radio = $(
                    '<td><input class="susRadio" type="radio" name="question' +
                        question.number +
                        '" value="' +
                        optionNumber +
                        '" /></td>'
                );
                if (optionNumber == 1)
                    radio.append(
                        "<p>" +
                            browser.i18n.getMessage("susStronglyDisagree") +
                            "</p>"
                    );
                if (optionNumber == 5)
                    radio.append(
                        "<p>" +
                            browser.i18n.getMessage("susStronglyAgree") +
                            "</p>"
                    );
                if (optionNumber > 1 && optionNumber < 5)
                    radio.append("<p>&nbsp;<br/>&nbsp;</p>");
                row.append(radio);
            }
            susForm.append(paragraph);
        }
        susForm.append(
            '<input id="susbutton" class="tracker-button" type="submit" value="' +
                browser.i18n.getMessage("submitButtonText") +
                '"/>'
        );
        susForm.on("click", "#susbutton", () => {
            me.finishSus();
        });
        return susForm;
    }

    finishSus() {
        let answers = {};
        for (let questionNumber = 1; questionNumber <= 10; questionNumber++) {
            answers["question" + questionNumber] = $(
                'input:radio[name="question' + questionNumber + '"]:checked'
            ).val();
            if (!answers["question" + questionNumber]) {
                answers["question" + questionNumber] = 0;
            }
        }
        this.model.answers = answers;
        this.model.ellapsedMs = new Date().getTime() - this.model.startTime;
        this.submitResults();
        this.done();
    }

    getSusQuestions() {
        let questions = [];
        for (let i = 1; i <= 10; i++) {
            questions.push({
                number: i,
                description: browser.i18n.getMessage("susQ" + i)
            });
        }
        return questions;
    }
}
