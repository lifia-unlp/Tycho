let overTagListenerSingleton = null;

class OverTagListener extends TagListener {

	constructor() {
		super("overTag", "overTag");
		this.arrivalTimeTagListener = ArrivalTimeTagListener.getSingleton();
	}

	static getSingleton() {
		if (overTagListenerSingleton == null) {
			overTagListenerSingleton = new OverTagListener();
		};
		return overTagListenerSingleton;
	};

	mouseEnter = async function (event) {
		let tag = this.getTagForEvent(event);
		if(!tag)
			return;
		let key = this.keyLocalStorage(tag);
		let value = await BrowserStorageLocalHandler.get(key);
		let countMouseEnter = value[key];
		this.arrivalTimeTagListener.evaluateFirstOver(countMouseEnter, tag);
		BrowserStorageLocalHandler.set(key, (countMouseEnter + 1));
	}.bind(this);

	addClearListener(tag) {
		this.initializeLocalStorage(tag);
		this.addListener(tag);
	};

	initializeLocalStorage(tag){
		this.arrivalTimeTagListener.initializeLocalStorage(tag);
		BrowserStorageLocalHandler.set(this.keyLocalStorage(tag) , 0);
		return 0;
	}

	async addListener(tag) {
		var value = await BrowserStorageLocalHandler.get(this.keyLocalStorage(tag));
		if (typeof value[this.keyLocalStorage(tag)] == "undefined"){
			this.initializeLocalStorage(tag);
		}
		this.tags.push(tag);
		tag.getElements().forEach(element => {
			element.addEventListener("mouseenter", this.mouseEnter);
		});
	};

	async removeListener(tag) {
		this.clearTags();
		tag.getElements().forEach(element => {
			element.removeEventListener("mouseenter", this.mouseEnter);
		});
		var overTagCount = await BrowserStorageLocalHandler.get(this.keyLocalStorage(tag));
		return overTagCount[this.keyLocalStorage(tag)];
	};

}