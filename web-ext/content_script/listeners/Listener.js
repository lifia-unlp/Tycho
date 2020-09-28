class Listener {

    constructor(name, captureIndicator, keyLocalStorage) {
        this.name = name;
        this.captureIndicator = captureIndicator;
        this._keyLocalStorage = keyLocalStorage;
    }

    /**
     * This method add a listener with a clear constructor
     */
    addClearListener() { }

    /**
     * This method add a listener but no clear the constructor
     */
    addListener() { }

    /**
     * This method remove the listener and return results
     */
    removeListener() { }

    keyLocalStorage() {
       return this._keyLocalStorage;
    }

    /* This method prepare the result of this listeners to return format to backend */
    prepareResultForModel(model, result) {
        model[this.name] = result;
        this.clearLocalStorage();
		return model;
    }
    
    clearLocalStorage(key = this.keyLocalStorage()) {
        BrowserStorageLocalHandler.remove(key);
    }
}