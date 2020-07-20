class ListenersHandler {

	static addNewListeners() {
		CountClicksListener.getSingleton().addClearListener();
		InactiveListenerHandler.getSingleton().addClearListener();
		DistanceListenerHandler.getSingleton().addClearListener();
	}

	static continueListeners() {
		CountClicksListener.getSingleton().addListener();
		InactiveListenerHandler.getSingleton().addListener();
		DistanceListenerHandler.getSingleton().addListener();
	}

	static pauseListeners() {
		CountClicksListener.getSingleton().removeListener();
		InactiveListenerHandler.getSingleton().removeListener();
		DistanceListenerHandler.getSingleton().removeListener();
	}

	static async removeCountClick(){
		return await CountClicksListener.getSingleton().removeListener();
	}

	static async removeInactive() {
		return await InactiveListenerHandler.getSingleton().removeListener();
	}

	static async removeDistance() {
		return await DistanceListenerHandler.getSingleton().removeListener();
	}

}
   