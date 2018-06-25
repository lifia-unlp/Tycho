

var join = function (sessionId) {
  browser.runtime.sendMessage({ methodName: 'joinSession', arguments: { id: sessionId } })
    .then(retrieveSession).then(updateButtons).catch((error) => { 
      window.alert("Cannot connect to server")
    });
}

var leave = function () {
  browser.runtime.sendMessage({ methodName: 'leaveSession', arguments: {} })
    .then(retrieveSession).then(updateButtons).catch((error) => {console.log(error) });
}

var retrieveSession =  function () {
  return browser.runtime.sendMessage({ methodName: 'getSession', arguments: {} });
}

var updateButtons = function (session) {
  document.getElementById("popup-content").innerHTML = '';
  if (session == null) {
    addJoinButtons();
  } else {
    addLeaveButton(session.id);
  }
}

var addJoinButtons = function () {
  for (let i = 1; i <= 5; i = i + 1) {
    let b = document.createElement('div');
    b.textContent = 'Join session ' + i;
    b.classList.add("button");
    b.onclick = () => {join(i) };
    document.getElementById("popup-content").appendChild(b);
  }
}

var addLeaveButton = function (sessionId) {
  let b = document.createElement('div');
  b.textContent = 'Leave session ' + sessionId;
  b.classList.add("button");
  b.onclick = () => {leave() };
  document.getElementById("popup-content").appendChild(b);
}

retrieveSession().then(updateButtons).catch("I was not able to get anything...");





