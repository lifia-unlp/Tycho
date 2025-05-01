request handlers
joinParticipant: id
	"Finds a participant by ID, starts the session if needed, logs the start, and returns the participant as JSON"
	| participant session json |
	
	json:= nil.
	monitor
		critical: [
			participant:= self store participantWithId: id.			
			participant 
				ifNotNil: [
					session:= participant session.
					(session isStarted) ifFalse: [ session start ]. 
					participant start.
					self store save: session. "Save the session and the updated participant"
					json := (RestResponseWriter new) participantAsJson: participant.
					json ].
			^ json ]