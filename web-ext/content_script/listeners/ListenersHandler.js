let listenersHandlerSingleton = null;

class ListenersHandler {

	constructor() {
		this.listeners = [CountClicksListener.getSingleton(), InactiveListenerHandler.getSingleton(), DistanceListenerHandler.getSingleton()];
	}

	static getSingleton() {
		if (listenersHandlerSingleton == null) {
			listenersHandlerSingleton = new ListenersHandler();
		};
		return listenersHandlerSingleton;
	};

	addNewListeners(model) {
		this.listeners.forEach(listener => { if (model[listener.captureIndicator]) { listener.addClearListener(model) } });
	}

	continueListeners(model) {
		this.listeners.forEach(listener => { if (model[listener.captureIndicator]) { listener.addListener(model) } });
	}

	pauseListeners(model) {
		this.listeners.forEach(listener => { if (model[listener.captureIndicator]) { listener.removeListener(model) } });
	}

	async finishCaptureEvents(model) {

		for (const listener of this.listeners) {
			if (model[listener.captureIndicator]) {
				model[listener.name] = await listener.removeListener();
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
