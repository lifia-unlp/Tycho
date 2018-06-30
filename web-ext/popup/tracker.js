//TO-DO if server is not available, the catch clause is nt triggered... fix it.

var retrieveSession = function() {
  return browser.runtime.sendMessage({
    methodName: "getExperiment",
    arguments: {}
  });
};

var joinSession = function(sessionId) {
  browser.runtime
    .sendMessage({ methodName: "joinExperiment", arguments: { id: sessionId } })
    .catch(error => {
      window.alert("Cannot connect to server");
      console.log("El error es: ", JSON.stringify(error));
    });
};

var leave = function() {
  browser.runtime
    .sendMessage({ methodName: "leaveExperiment", arguments: {} })
    .catch(error => {
      console.log(error);
    });
  window.close();
};

var join = function() {
  let session = document.getElementById("session").value;
  if (session) {
    joinSession(session);
    window.close();
  }
};

var updateForms = function(session) {
  if (session == null) {
    document.getElementById("join-form").hidden = false;
    document.getElementById("leave-form").hidden = true;
  } else {
    document.getElementById("join-form").hidden = true;
    document.getElementById("leave-form").hidden = false;
  }
};

retrieveSession()
  .then(updateForms)
  .catch("I was not able to get anything...");
