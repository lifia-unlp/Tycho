let countClicksTagListenerSingleton = null;

class CountClicksTagListener extends TagListener {

	constructor() {
		super("countClicksTag", "countClicksTag");
	}

	static getSingleton() {
		if (countClicksTagListenerSingleton == null) {
			countClicksTagListenerSingleton = new CountClicksTagListener();
		};
		return countClicksTagListenerSingleton;
    };

	countClicksTag = async function count(event) {
		let tag = this.getTagForEvent(event);
		if(!tag)
			return;
		let key = this.keyLocalStorage(tag);
		var value = await BrowserStorageLocalHandler.get(key);
        var eventsArray = value[key];
		eventsArray.push(new ClickEvent(event));
        BrowserStorageLocalHandler.set(key, eventsArray);
    }.bind(this);

    addClearListener(tag) {
		this.initializeLocalStorage(tag);
		this.addListener(tag);
	};

	initializeLocalStorage(tag){
		BrowserStorageLocalHandler.set(this.keyLocalStorage(tag) ,[]);
		return [];
	}

	async addListener(tag) {
		this.tags.push(tag);
		var value = await BrowserStorageLocalHandler.get(this.keyLocalStorage(tag));
		if (typeof value[this.keyLocalStorage(tag)] == "undefined"){
			this.initializeLocalStorage(tag);
		}
		tag.getElements().forEach(element => {
			element.addEventListener("click", this.countClicksTag);
		});
	};

	async removeListener(tag) {
		this.clearTags();
		let key = this.keyLocalStorage(tag);
		tag.getElements().forEach(element => {
			element.removeEventListener("click", this.countClicksTag);
		});
		var countClicks = await BrowserStorageLocalHandler.get(key);
		return countClicks[key];
	};

}    