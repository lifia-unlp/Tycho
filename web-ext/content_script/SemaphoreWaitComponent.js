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
        messageDiv.append("<p>"+this.model.message+"</p>");
        return messageDiv;
    }

    render() {
        this.model.startTime = new Date().getTime();
        super.render();
        this.showOverlay();
    }
}
