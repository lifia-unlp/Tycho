let inactiveListenerHandlerSingleton = null;

class InactiveListenerHandler extends Listener {
	constructor(model) {
		super("inactiveTime", "captureInactivity", "inactiveTime");
		this.typeEvents = ["mousemove", "mousedown", "keypress", "DOMMouseScroll", "mousewheel", "touchmove", "MSPointerMove"];
	}

	static getSingleton() {
		if (inactiveListenerHandlerSingleton == null) {
			inactiveListenerHandlerSingleton = new InactiveListenerHandler();
		};
		return inactiveListenerHandlerSingleton;
	};

	inactiveStartTime = 0;
	timeoutID = null;

	/*Add a inactive listener and clear the count*/
	addClearListener() {
		BrowserStorageLocalHandler.set(this.keyLocalStorage(), 0);
		this.inactiveStartTime = 0;
		this.addListener();
	};

	resetTimer = async function (e) {
		window.clearTimeout(this.timeoutID);
		await this.goActive();
	}.bind(this);

	goInactive = function () {
		this.inactiveStartTime = new Date().getTime();
	}.bind(this);

	goActive = async function () {
		if (this.inactiveStartTime > 0) {
			var msInactive = new Date().getTime() - this.inactiveStartTime;
			var inactiveTimeCounter = await BrowserStorageLocalHandler.get(this.keyLocalStorage());
			var totalMsInactive = msInactive + inactiveTimeCounter.inactiveTime;
			BrowserStorageLocalHandler.set(this.keyLocalStorage(), totalMsInactive);
			this.inactiveStartTime = 0;
		}
		this.startTimer();
	}.bind(this);

	/*add an inactive listener (don't clear the count)*/
	addListener() {
		this.typeEvents.forEach(typeEvent => document.addEventListener(typeEvent, this.resetTimer, false));
		this.startTimer();
	};

	async removeListener() {
		this.typeEvents.forEach(typeEvent => document.removeEventListener(typeEvent, this.resetTimer, false));
		window.clearTimeout(this.timeoutID);
		var totalInactiveTime = await BrowserStorageLocalHandler.get(this.keyLocalStorage());
		BrowserStorageLocalHandler.set(this.keyLocalStorage(), 0);
		return totalInactiveTime.inactiveTime;
	};

	startTimer() {
		// wait 2 seconds before calling goInactive
		this.timeoutID = window.setTimeout(this.goInactive, 2000);
	}
}