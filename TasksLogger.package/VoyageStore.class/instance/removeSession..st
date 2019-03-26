removing
removeSession: anExperimentSession
	repository remove: anExperimentSession.
	anExperimentSession protocols do: [ :protocol | repository remove: protocol ]