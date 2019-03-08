callbacks
addNewSession
	| newSession |
	newSession := ExperimentSession name: 'Unnamed' notes: ''.
	self store save: newSession.
	self call: (WASessionComponent on: newSession)