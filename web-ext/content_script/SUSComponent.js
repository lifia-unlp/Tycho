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
            "<h2>" + browser.i18n.getMessage("susLegend") + "</h2>"
        );
        let table = $("<table></table>");
        for (let questionNumber = 0; questionNumber < 10; questionNumber++) {
            var question = this.getSusQuestions()[questionNumber];
            table.append($("<tr><td class='susQuestionTd' colspan=7><strong>" + question.description +"</strong></td></tr>"));
            let row = $("<tr></tr>");
            row.append('<td style="width:20%">' + browser.i18n.getMessage("susStronglyDisagree") + '</td>');
            for (let optionNumber = 1; optionNumber <= 5; optionNumber++) {
                var radio = $(
                    '<td style="width:10%"><input class="susRadio" type="radio" name="question' +
                        question.number +
                        '" value="' +
                        optionNumber +
                        '" /></td>'
                );
                row.append(radio);
            }
            row.append('<td style="width:20%">' + browser.i18n.getMessage("susStronglyAgree") + "</td>");
            table.append(row);
            table.append($("<tr><td colspan=7><p></td></tr>"));
        }
        susForm.append(table);
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
