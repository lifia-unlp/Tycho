callbacks
createSession
	"Creates a new session with default data and then call the view to configure it"
	
	| session participants |	
	session:= ExperimentSession id: (self store newExperimentId) experiment: (self experiment).
	participants:= self experiment protocols collect: [ :protocol | | participant |
		participant:= ExperimentParticipant id: (self store newParticipantId) session: session protocol: protocol.
		participant initializeTaskResults.
		participant yourself.
	].
	session updateParticipants: participants.		
	self 
		call: (WASessionCreationComponent on: session) 
		onAnswer: [ :result | result ifNotNil: [ 
			self experiment sessions add: result.
			self store save: self experiment ] ]
	
