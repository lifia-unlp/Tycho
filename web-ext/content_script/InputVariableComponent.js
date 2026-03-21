class InputVariableComponent extends UIComponent {
    constructor(model) {
        super(model);
    }

    buildComponent() {
        let me = this;
        let messageDiv = $(
            '<div id="wen-message-component" class="topNotification"></div>'
        );
        messageDiv.append("<p>" + this.model.instructions + "</p>");
        messageDiv.append('<input id="variableValue" name="variableValue" />');
        messageDiv.append(
            '<p><input id="close-button" type="submit" class="tracker-btn" value="' +
                browser.i18n.getMessage("submitButtonText") +
                '"/></p>'
        );
        messageDiv.on("click", "#close-button", e => {
            me.submit();
        });
        return messageDiv;
    }

    /**
     * Handles the submission of the variable input by the participant.
     *
     * - Reads the value entered by the user.
     * - Updates the elapsed time for the task.
     * - Triggers the variable update via BackgroundProxy.
     * - Submits the task results and finalizes the interaction.
     */
    submit() {
        let variableValue = document.getElementById("variableValue").value;
        if (variableValue) {
            this.model.ellapsedMs = new Date().getTime() - this.model.startTime;
            this.setVariable(this.model.variableName, variableValue);
            this.submitResults();
            this.done();            
        }

    }

    render() {
        this.model.startTime = new Date().getTime();
        super.render();
        this.showOverlay();
    }

    setVariable(variableName, variableValue) {
        BackgroundProxy.getSingleton().setVariable(
            variableName,
            variableValue
        );           
    }

}
