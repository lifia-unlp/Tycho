session management
removeSession: anExperimentSession 
	"Remove the given session from the experiment sessions"
			
	self sessions remove: anExperimentSession ifAbsent: [].