var join = function (sessionId) {
  try {
    browser.runtime.sendMessage({ methodName: 'joinSession', arguments: { id: sessionId } });
  } catch { console.log('Background is not ready yet: ') }
}

var leave = function () {
  try {
    browser.runtime.sendMessage({ methodName: 'leaveSession', arguments: {} });
  } catch (error) { console.log('Background is not ready yet: ', JSON.stringify(error)) }
}

var retrieveSession = async function () {
  try {
    session = await browser.runtime.sendMessage({ methodName: 'getSession', arguments: {} });
    console.log("Session: ", JSON.stringify(session));
  } catch { console.log('Background is not ready yet: ') }
}

var updateButtons = function (session) {
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
    b.onclick = function () { join(i) };
    document.getElementById("popup-content").appendChild(b);
  }
}

var addLeaveButton = function (sessionId) {
  let b = document.createElement('div');
  b.textContent = 'Leave session ' + sessionId;
  b.classList.add("button");
  b.onclick = function () { leave() };
  document.getElementById("popup-content").appendChild(b);
}

browser.runtime.sendMessage({ methodName: 'getSession', arguments: {} }).then(updateButtons)





