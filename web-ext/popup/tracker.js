
//TO-DO if server is not available, the catch clause is nt triggered... fix it.
var join = function(sessionId) {
  browser.runtime
    .sendMessage({ methodName: "joinExperiment", arguments: { id: sessionId } })
    .then(retrieveSession)
    .then(updateButtons)
    .catch(error => {
      window.alert("Cannot connect to server");
      console.log("El error es: ", JSON.stringify(error));
    });
};

var leave = function() {
  browser.runtime
    .sendMessage({ methodName: "leaveExperiment", arguments: {} })
    .then(retrieveSession)
    .then(updateButtons)
    .catch(error => {
      console.log(error);
    });
};

var retrieveSession = function() {
  return browser.runtime.sendMessage({
    methodName: "getExperiment",
    arguments: {}
  });
};

var updateButtons = function(session) {
  document.getElementById("popup-content").innerHTML = "";
  if (session == null) {
    addJoinButtons();
  } else {
    addLeaveButton(session.id);
  }
};

var addJoinButtons = function() {
  for (let i = 1; i <= 5; i = i + 1) {
    let b = document.createElement("div");
    b.textContent = "Join session " + i;
    b.classList.add("button");
    b.onclick = () => {
      join(i);
    };
    document.getElementById("popup-content").appendChild(b);
  }
};

var addLeaveButton = function(sessionId) {
  let b = document.createElement("div");
  b.textContent = "Leave session " + sessionId;
  b.classList.add("button");
  b.onclick = () => {
    leave();
  };
  document.getElementById("popup-content").appendChild(b);
};

retrieveSession()
  .then(updateButtons)
  .catch("I was not able to get anything...");
