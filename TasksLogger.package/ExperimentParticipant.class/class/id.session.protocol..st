instance creation
id: anId session: anExperimentSession protocol: anExperimentProtocol 
	"Creates a participant for the execution of the given protocol in the session  with the id specified as his access code to join the session"
			
	^ (self new) 
		id: anId;
		session: anExperimentSession;
		protocol: anExperimentProtocol;
		yourself.