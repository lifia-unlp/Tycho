browser.storage.local.get('config').then(data => {
    var config = data.config;
    if (config) {
        document.getElementById("api-url").value = config.apiUrl;
    };
});

var saveConfiguration = function() {
    var config = {};
    config.apiUrl = document.getElementById("api-url").value;
    browser.storage.local.set({config});
};

document.getElementById("submit-button").addEventListener("click", event => {
    saveConfiguration();
});
