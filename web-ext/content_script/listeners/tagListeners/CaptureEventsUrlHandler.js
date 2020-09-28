let captureEventsUrlHandlerSingleton = null;

class CaptureEventsUrlHandler {

    constructor(){
        this.tags = [];
    }

    static getSingleton() {
		if (captureEventsUrlHandlerSingleton == null) {
			captureEventsUrlHandlerSingleton = new CaptureEventsUrlHandler();
		};
		return captureEventsUrlHandlerSingleton;
    };
    
    parse(model){
        this.clearTags();
        let urlsPatterns = model.captureEventsTag.split(/\r?\n/g);
        urlsPatterns.forEach(urlPattern => {
            let tag = new Tag(urlPattern);
            if(tag.isValid()){
                this.tags.push(tag);
            }
        });
        return this.tags;
    }

    clearTags(){
        this.tags = [];
    }
    
}