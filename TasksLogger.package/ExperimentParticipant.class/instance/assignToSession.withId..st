as yet unclassified
assignToSession: anExperimentSession withId: anId
	"Assign the participan as part of the given session with the specified id"
			
	self id: anId.
	self session: anExperimentSession.
	self initializeTaskResults.