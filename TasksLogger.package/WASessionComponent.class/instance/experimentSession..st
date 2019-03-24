accessing
experimentSession: anExperimentSession
	originalSession := anExperimentSession veryDeepCopy.
	experimentSession := anExperimentSession.
	sessionResultsComponent session: experimentSession