class BrowserStorageLocalHandler{
	
	static async get(key){
		var result = await browser.storage.local.get(key);
		return result;
	}

	static set(object){
		browser.storage.local.set(object);
	}

	static set(key, value){
		var object = {};
		object[key] = value;
		browser.storage.local.set(object);
	}
}