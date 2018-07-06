//These globals are a very bad idea
var enabled = true;
var facade = BackgroundFacade.getSingleton();

var updateIcon = function() {
    if (!enabled) {
        browser.browserAction.setIcon({ path: "resources/wen-disabled.png" });
    } else {
        browser.browserAction.setIcon({ path: "resources/wen-enabled.png" });
    }
};

var startBackground = function(config) {
    facade = BackgroundFacade.getSingleton();
    facade.setApiUrl(config.apiUrl);
    enabled = facade.visible;

    browser.runtime.onMessage.addListener(rmcRequest => {
        return facade.handle(rmcRequest);
    });

    browser.runtime.onMessageExternal.addListener(rmcRequest => {
        return facade.handle(rmcRequest);
    });

    browser.browserAction.onClicked.addListener(() => {
        enabled = !enabled;
        facade.setVisible(enabled);
        updateIcon();
    });

    browser.storage.onChanged.addListener((change, area) => {
        if (area == "local" && change.config) {
            facade.setApiUrl(change.config.newValue.apiUrl);
        }
    });

    updateIcon();
};

browser.storage.local.get("config").then(data => {
    var config = data.config;
    if (!config) {
        config = { apiUrl: "http://localhost:8080/wen-api" };
        browser.storage.local.set({ config });
    }
    startBackground(config);
});
