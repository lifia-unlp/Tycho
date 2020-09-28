let arrivalTimeTagListenerSingleton = null;

class ArrivalTimeTagListener extends TagListener {

    constructor() {
        super("arrivalTimeTag", "overTag");
    }

    static getSingleton() {
		if (arrivalTimeTagListenerSingleton == null) {
			arrivalTimeTagListenerSingleton = new ArrivalTimeTagListener();
		};
		return arrivalTimeTagListenerSingleton;
    };
    
    initializeLocalStorage(tag){
        BrowserStorageLocalHandler.set(this.keyLocalStorage(tag) , 0);
    }

    evaluateFirstOver(countMouseEnter, tag) {
        if (countMouseEnter == 0){
            BrowserStorageLocalHandler.set(this.keyLocalStorage(tag), new Date().getTime());
        }    
    }

    async removeListener(tag) {
        var overTagCount = await BrowserStorageLocalHandler.get(this.keyLocalStorage(tag));
		return overTagCount[this.keyLocalStorage(tag)];
    }

    prepareResultForModel(model, result, tag) {
        model[this.keyLocalStorage(tag)] = result - model.startTime;
        this.clearLocalStorage(this.keyLocalStorage(tag));
		return model;
	}
}