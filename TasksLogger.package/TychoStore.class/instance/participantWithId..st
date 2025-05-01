participants
participantWithId: participantId
	"Search through all sessions for the participant with the given ID (the ID is unique)"
			
	^ self sessions
		detect: [ :each | each participants anySatisfy: [ :participant | participant id = participantId ] ]
		ifFound: [ :session | session participantWithId: participantId ]
		ifNone: [ nil ]
	
