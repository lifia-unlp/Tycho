let countClicksListener = null;

class CountClicksListener extends Listener {

	constructor() {
		super("clicks", "captureClicks");
	}

	static getSingleton() {
		if (countClicksListener == null) {
			countClicksListener = new CountClicksListener();
		};
		return countClicksListener;
	};

	countClicks = async function count(event) {
		var value = await BrowserStorageLocalHandler.get("countClicks");
		var eventsArray = value.countClicks;
		eventsArray.push(new ClickEvent(event));
		BrowserStorageLocalHandler.set("countClicks", eventsArray);
	}.bind(this);


	addClearListener() {
		BrowserStorageLocalHandler.set("countClicks", []);
		this.addListener();
	};

	addListener() {
		document.addEventListener('click', this.countClicks);
	};

	async removeListener() {
		document.removeEventListener('click', this.countClicks);
		var capturedEvents = await BrowserStorageLocalHandler.get("countClicks");
		return capturedEvents.countClicks;
	};

}

class ClickEvent {

	constructor(event) {
		this.id = event.srcElement.id;
		this.tag = event.srcElement.localName;
		this.timestamp = new Date().getTime();
		this.url = event.srcElement.baseURI;
		this.x = event.x;
		this.y = event.y;
	}

}