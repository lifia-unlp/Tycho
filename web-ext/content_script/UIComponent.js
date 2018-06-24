class UIComponent {

    activate() {
        if (! this.component) {
            this.component = this.buildComponent();
            this.notification = $("<div id=\"notification\" style=\"display: none;\"></div>"); 
            this.overlay = $("<div id=\"overlay\" style=\"display: none;\"></div>"); 
        }
        $("body").append(this.component);
        $("body").append(this.overlay);
        $("body").append(this.notification);
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

    startTask() {
        BackgroundProxy.getSingleton().startTask();
    }

    pauseTask() {
        BackgroundProxy.getSingleton().pauseTask();
    }

    resumeTask() {
        BackgroundProxy.getSingleton().resumeTask();
    }

    finishTask() {
        BackgroundProxy.getSingleton().finishTask();
    }

}