adding
addNewSession
	| newSession idSession |
	idSession := self store newSessionId.
	newSession := ExperimentSession id: idSession name: 'Unnamed' notes: ''.
	self
		call: (WASessionComponent on: newSession)
		onAnswer: [ :answer | 
			answer
				ifNil: [ self store removeSession: newSession ]
				ifNotNil: [ self session account addSession: newSession.
					self store save: self session account ] ]