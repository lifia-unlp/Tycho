callbacks
addNewSession
	| newSession |
	newSession := ExperimentSession name: 'Unnamed' notes: ''.
	self
		call: (WASessionComponent on: newSession)
		onAnswer: [ :answer | 
			answer
				ifNotNil: [ self session account addSession: newSession.
					self store save: self session account ] ]