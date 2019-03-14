callbacks
addNewSession
	| newSession |
	newSession := ExperimentSession name: 'Unnamed' notes: ''.
	self session account addSession: newSession.
	self store
		rememberToSave: self session account;
		savePending.
	self call: (WASessionComponent on: newSession)