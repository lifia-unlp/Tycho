class SemaphoreSignalComponent extends UIComponent {
    constructor(model) {
        super(model);
    }

    buildComponent() {
        let me = this;
        let messageDiv = $(
            '<div id="wen-message-component" class="topNotification"></div>'
        );
        messageDiv.append("<h1>Please wait ...</h1><p></p>");
        messageDiv.append(
            '<p>Just a second so I can signal the semaphore</p>'
        );
        return messageDiv;
    }

    render() {
        this.model.startTime = new Date().getTime();
        let me = this;
        super.render();
        this.showOverlay();
        setTimeout(() => {
            me.refreshSemaphoreStatus();
        }, 1000);
    }

    async refreshSemaphoreStatus() {
        let me = this;
        let semaphore = await BackgroundProxy.getSingleton().getStatusOfGlobalSemaphore(this.model.semaphoreId);
        semaphore.status = 0;
        BackgroundProxy.getSingleton().patchSemaphore(semaphore);
        this.done();
    }
}
