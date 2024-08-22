callbacks
deleteSession: anExperimentSession
	"Remove the specified session from the experiment"

	self experiment removeSession: anExperimentSession.
	self store save: self experiment