callbacks
addNewSession
	| newSession |
	newSession := ExperimentSession name: 'Unnamed' notes: ''.
	self
		call: (WASessionComponent on: newSession)
		onAnswer: [ :answer | 
			answer
				ifNil: [ self store removeSession: newSession ]
				ifNotNil: [ self session account addSession: newSession.
					self store save: self session account ] ]