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
    }

    setModel(model) {
        this.model = model;
        BackgroundProxy.getSingleton().setModelOfTask(this.model);
    }

    submitResults() {
        this.model.startTime = new Date(this.model.startTime);
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
}
