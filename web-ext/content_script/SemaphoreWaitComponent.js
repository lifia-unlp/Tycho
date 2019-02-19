class SemaphoreWaitComponent extends UIComponent {
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
            '<p>Waiting for <div id="statusDiv">many</div> other users to do something</p>'
        );
        return messageDiv;
    }

    async refreshSemaphoreStatus() {
        let me = this;
        let semaphore = await BackgroundProxy.getSingleton().getStatusOfGlobalSemaphore(this.model.semaphoreId);
        $("#statusDiv").html(semaphore.status);
        if (semaphore.status == 0) {
            this.done();
        } else {
            setTimeout(() => {
                me.refreshSemaphoreStatus();
            }, 1000);
        }
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
}