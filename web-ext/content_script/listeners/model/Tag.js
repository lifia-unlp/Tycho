class Tag {
    constructor(urlTagPattern) {
        this.url = null;
        this.tagSelector = null;
        this.pattern = urlTagPattern;
        let urlTag = urlTagPattern.split(",");
        if (
            urlTag.length == 2 &&
            (urlTag[1].startsWith("#") || urlTag[1].startsWith("."))
        ) {
            this.url = urlTag[0].trim();
            this.tagSelector = urlTag[1].trim();
        }
    }

    isValid() {
        return this.url != null && this.tagSelector != null;
    }

    urlMatchWith(anUrl) {
        return anUrl.includes(this.url);
    }

    isTagOfEvent(event){
        if(this.isIdSelector()){
            return (event.currentTarget.id.trim() == this.tagWithoutCssSelector()) 
        }
        if(this.isClassSelector()){
            return (event.currentTarget.classList.contains(this.tagWithoutCssSelector())) 
        }

        return false;
    }

    tagWithoutCssSelector(){
        return this.tagSelector.substring(1);
    }

    isIdSelector(){
        return this.tagSelector.startsWith("#");
    }

    isClassSelector(){
        return this.tagSelector.startsWith(".");
    }

    getElements() {
        return document.querySelectorAll(this.tagSelector);
    }
}