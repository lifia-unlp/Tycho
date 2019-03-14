callbacks
addNewSession
	| newSession |
	newSession := ExperimentSession name: 'Unnamed' notes: ''.
	self session account addSession: newSession.
	self store save: self session account.
	self call: (WASessionComponent on: newSession)