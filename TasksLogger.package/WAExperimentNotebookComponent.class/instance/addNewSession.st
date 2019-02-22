callbacks
addNewSession
	self
		call: (WASessionComponent on: ExperimentSession new)
		onAnswer: [ :sessionOrNil | 
			sessionOrNil
				ifNotNil: [ :session | self store addSession: session ] ]