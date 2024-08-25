initialization
initializeOn: experimentParticipants
			
	participants:= experimentParticipants.
	detailedParticipants:= OrderedCollection new.
	tasksResultsComponents:= Dictionary new.
	experimentParticipants do: [ :participant | 
		tasksResultsComponents at: participant put: (WAParticipantTasksResultsComponent on: participant taskResults ) ]