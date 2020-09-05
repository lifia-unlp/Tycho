/**
 * This class is a simple access point to the browser.storage.local 
 */
class BrowserStorageLocalHandler {

	/** If the parameter key is null or undefined return all data of browser.storage.local
	 *  If the parameter key is a set of strings, then it returns all elements with this string as the key.
	 * 	A promise is not returned. The return is made when the data has already been obtained.
	 */
	static async get(key) {
		var result = await browser.storage.local.get(key);
		return result;
	}

	static set(object) {
		browser.storage.local.set(object);
	}

	static set(key, value) {
		var object = {};
		object[key] = value;
		browser.storage.local.set(object);
	}
}