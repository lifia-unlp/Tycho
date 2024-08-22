callbacks
accept
	newParticipant assignToSession: self session withId: editedParticipant id.
	session participants at: editedParticipant protocol id put: newParticipant.
	editedParticipant := nil.