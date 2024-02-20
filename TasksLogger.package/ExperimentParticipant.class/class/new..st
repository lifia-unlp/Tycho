instance creation
new: anExperimentProtocol 
	"Create a candidate participant for the execution of the given protocol.
	Later, when the participant is assigned to a session, receives the unique ID that let him to join the session."
			
	^ (self new) protocol: anExperimentProtocol