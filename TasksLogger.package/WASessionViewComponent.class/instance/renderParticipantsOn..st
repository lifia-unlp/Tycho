rendering
renderParticipantsOn: html
	"Displays the list of participants that takes part of the session"

		html heading level: 3; with: 'Participants'.
		self session participants
			ifEmpty: [ html paragraph: 'There are no participants in this session' ]
			ifNotEmpty: [ :participants | 
				self participantsList participants: self session participants values.
				html render: participantsList ]