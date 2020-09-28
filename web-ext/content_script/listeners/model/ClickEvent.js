class ClickEvent {
    constructor(event) {
        this.id = event.target.id;
        this.tag = event.target.localName;
        this.timestamp = new Date().getTime();
        this.url = event.target.baseURI;
        this.x = event.x;
        this.y = event.y;
    }
}
