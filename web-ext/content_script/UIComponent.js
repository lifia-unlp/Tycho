class UIComponent {
    constructor(model) {
        this.model = model;
    }

    getId() {
        return this.model.id;
    }

    render() {
        if (!this.component) {
            this.component = this.buildComponent();
            this.component.addClass("wen-component");
            this.notification = $(
                '<div id="notification" style="display: none;"></div>'
            );
            this.overlay = $('<div id="overlay" style="display: none;"></div>');
        }
        $("body").append(this.component);
        $("body").append(this.overlay);
        $("body").append(this.notification);
        this.updateVariables();
    }

    setModel(model) {
        this.model = model;
        BackgroundProxy.getSingleton().setModelOfTask(this.model);
    }

    submitResults() {
        this.model.startTime = new Date(this.model.startTime).toLocaleString('en-US');
        BackgroundProxy.getSingleton().submitResultsOfTask(this.model);
    }

    showOverlay() {
        $("#overlay").show();
    }

    hideOverlay() {
        $("#overlay").hide();
    }

    deactivate() {
        this.component.remove();
        this.notification.remove();
        this.overlay.remove();
    }

    done() {
        BackgroundProxy.getSingleton().activeComponetIsDone();
    }

    leave() {
        BackgroundProxy.getSingleton().leaveExperiment();
        this.done();
    }

    updateVariables() {
        let varElements = document.querySelectorAll("tyvar");
        varElements.forEach(elem => {
            if (elem.getAttribute("default")) {
                elem.innerHTML = elem.getAttribute("default");
            } else {
                elem.innerHTML = elem.getAttribute("var") + "?";
            }
            this.updateVariable(elem);
        });
    }

    updateVariable(elem) {
        let varName = elem.getAttribute("var");
        if (varName) {
            BackgroundProxy.getSingleton()
                .getVariable(varName)
                .then(variable => {
                    elem.innerHTML = variable.value;
                })
                .catch(error => {
                    console.lor(error);
                });
        }
    }
}
