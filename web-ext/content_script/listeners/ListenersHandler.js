let listenersHandlerSingleton = null;

class ListenersHandler {
    constructor() {
        this.genericListeners = [
            CountClicksListener.getSingleton(),
            InactiveListenerHandler.getSingleton(),
            DistanceListenerHandler.getSingleton(),
        ];
        this.tagListeners = [
            OverTagListener.getSingleton(),
            ArrivalTimeTagListener.getSingleton(),
            CountClicksTagListener.getSingleton(),
        ];
        this.captureEventsUrlHandler = CaptureEventsUrlHandler.getSingleton();
    }

    static getSingleton() {
        if (listenersHandlerSingleton == null) {
            listenersHandlerSingleton = new ListenersHandler();
        }
        return listenersHandlerSingleton;
    }

    addNewListeners(model) {
        this.genericListeners.forEach((listener) => {
            if (model[listener.captureIndicator]) {
                listener.addClearListener(model);
            }
        });
        let tags = this.captureEventsUrlHandler.parse(model);
        tags.forEach((tag) => {
            if (tag.urlMatchWith(window.location.href)) {
                this.tagListeners.forEach((tagListener) => {
                    if (model[tagListener.captureIndicator]){
                        tagListener.addClearListener(tag);
                    }    
                });
            }
        });
    }

   async continueListeners(model) {
        this.genericListeners.forEach((listener) => {
            if (model[listener.captureIndicator]) {
                listener.addListener(model);
            }
        });
        let tags = this.captureEventsUrlHandler.parse(model);
        tags.forEach((tag) => {
            if (tag.urlMatchWith(window.location.href)) {
                this.tagListeners.forEach((tagListener) => {
                    if (model[tagListener.captureIndicator]){
                        tagListener.addListener(tag);
                    }    
                });
            }
        });
    }

    pauseListeners(model) {
        this.genericListeners.forEach((listener) => {
            if (model[listener.captureIndicator]) {
                listener.removeListener(model);
            }
        });
        let tags = this.captureEventsUrlHandler.parse(model);
        tags.forEach((tag) => {
            this.tagListeners.forEach((tagListener) => {
                if (model[tagListener.captureIndicator]){
                    tagListener.removeListener(tag);
                }    
            });
        });
    }

    async finishCaptureEvents(model) {
        for (const genericListener of this.genericListeners) {
            if (model[genericListener.captureIndicator]) {
                let result = await genericListener.removeListener();
                model = genericListener.prepareResultForModel(model, result);
            }
        }
        let tags = this.captureEventsUrlHandler.parse(model);
        for (const tag of tags) {
            for (const tagListener of this.tagListeners) {
                if (model[tagListener.captureIndicator]) {
                    let result = await tagListener.removeListener(tag);
                    model = tagListener.prepareResultForModel(model, result, tag);
                }
            }
        }
        return model;
    }

    async removeCountClick() {
        return await CountClicksListener.getSingleton().removeListener();
    }

    async removeInactive() {
        return await InactiveListenerHandler.getSingleton().removeListener();
    }

    async removeDistance() {
        return await DistanceListenerHandler.getSingleton().removeListener();
    }
}
