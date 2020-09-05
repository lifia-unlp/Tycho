let distanceListenerHandlerSingleton = null;

class DistanceListenerHandler extends Listener {

	constructor() {
		super("distance", "captureDistance");
	}

	static getSingleton() {
		if (distanceListenerHandlerSingleton == null) {
			distanceListenerHandlerSingleton = new DistanceListenerHandler();
		};
		return distanceListenerHandlerSingleton;
	};

	calculateDistance = async function (e) {
		var yTravelled = 0;
		var xTravelled = 0;
		var objectStorage = await BrowserStorageLocalHandler.get("distance");
		var prevDistance = new Distance().setDataFromStorage(objectStorage);
		prevDistance.y && (yTravelled = Math.abs(e.pageY - prevDistance.y));
		prevDistance.x && (xTravelled = Math.abs(e.pageX - prevDistance.x));
		var totalDistance = prevDistance.totalDistance + yTravelled + xTravelled;
		var newDistance = new Distance().setData(totalDistance, e.pageX, e.pageY);
		BrowserStorageLocalHandler.set("distance", newDistance);
	}.bind(this);

	addClearListener() {
		BrowserStorageLocalHandler.set("distance", new Distance());
		this.addListener();
	};

	addListener() {
		document.addEventListener("mousemove", this.calculateDistance);
	}

	async removeListener() {
		document.removeEventListener("mousemove", this.calculateDistance);
		var objectStorage = await BrowserStorageLocalHandler.get("distance");
		return new Distance().setDataFromStorage(objectStorage).totalDistance;
	}

}

class Distance {
	constructor() {
		this.initialize();
	}

	setData(totalDistance, x, y) {
		this.totalDistance = totalDistance;
		this.x = x;
		this.y = y;
		return this;
	}

	setDataFromStorage(objectStorage) {
		this.totalDistance = objectStorage.distance.totalDistance;
		this.x = objectStorage.distance.x;
		this.y = objectStorage.distance.y;
		return this;
	}

	initialize() {
		this.totalDistance = 0;
		this.y = 0;
		this.x = 0;
	}
}