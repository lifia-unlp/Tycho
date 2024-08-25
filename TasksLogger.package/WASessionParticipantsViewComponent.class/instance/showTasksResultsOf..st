callbacks
showTasksResultsOf: anExperimentParticipant

	(detailedParticipants includes: anExperimentParticipant)
    	ifFalse: [ detailedParticipants add: anExperimentParticipant ]