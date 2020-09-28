class TagListener extends Listener {

    constructor(name, captureIndicator) {
       super(name, captureIndicator);
       this.tags = [];
    }

    prepareResultForModel(model, result, tag) {
		model[this.keyLocalStorage(tag)] = result;
		this.clearLocalStorage(this.keyLocalStorage(tag));
		return model;
	}

	getTagForEvent(event){
		return this.tags.find(tag => tag.isTagOfEvent(event));
	}

	clearTags(){
		this.tags = [];
	}

	keyLocalStorage(tag){
		return (this.name + "-" + tag.pattern);
	}

}