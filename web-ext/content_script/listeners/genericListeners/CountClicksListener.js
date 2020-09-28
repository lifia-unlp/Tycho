let countClicksListener = null;

class CountClicksListener extends Listener {
    constructor() {
        super("clicks", "captureClicks", "countClicks");
    }

    static getSingleton() {
        if (countClicksListener == null) {
            countClicksListener = new CountClicksListener();
        }
        return countClicksListener;
    }

    countClicks = async function count(event) {
        var value = await BrowserStorageLocalHandler.get(this.keyLocalStorage());
        var eventsArray = value.countClicks;
        eventsArray.push(new ClickEvent(event));
        BrowserStorageLocalHandler.set(this.keyLocalStorage(), eventsArray);
    }.bind(this);

    addClearListener() {
        BrowserStorageLocalHandler.set(this.keyLocalStorage(), []);
        this.addListener();
    }

    addListener() {
        document.addEventListener("click", this.countClicks);
    }

    async removeListener() {
        document.removeEventListener("click", this.countClicks);
        var capturedEvents = await BrowserStorageLocalHandler.get(this.keyLocalStorage());
        return capturedEvents.countClicks;
    }
}
