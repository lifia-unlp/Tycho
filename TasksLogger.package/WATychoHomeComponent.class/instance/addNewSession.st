callbacks
addNewSession
	| newSession |
	newSession := ExperimentSession name: 'Unnamed' notes: ''.
	self store
		rememberToSave: newSession;
		savePending.
	self call: (WASessionComponent on: newSession)