participants
updateParticipants: sessionParticipants
	"Update the participants that takes part of the experiment session"
			
	sessionParticipants do: [ :participant |
		self participants at: participant protocol id put: participant.
	]