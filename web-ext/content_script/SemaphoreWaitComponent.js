class SemaphoreWaitComponent extends UIComponent {
    constructor(model) {
        super(model);
        this.semaphoreStatus = 0;
    }

    buildComponent() {
        let me = this;
        let messageDiv = $(
            '<div id="wen-message-component" class="topNotification"></div>'
        );
        messageDiv.append("<h1>Waiting</h1><p></p>");
        messageDiv.append(
            '<p>Waiting for something to happen - <div id="statusDiv">unset</div></p>'
        );
        return messageDiv;
    }

    async refreshSemaphoreStatus() {
        let me = this;
        let semaphoreStatus = await BackgroundProxy.getSingleton().getStatusOfGlobalSemaphore(
            "1"
        );
        $("#statusDiv").html(semaphoreStatus.status);
        if (semaphoreStatus.status == "0") {
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
