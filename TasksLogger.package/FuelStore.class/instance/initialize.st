initialize
initialize
	super initialize.
	templateProtocols := nil.
	prototypes := nil.
	lastSampleId := nil.
	lastTaskId := nil.
	users := nil. 
	monitor := Monitor new.
	self attemptToInitializeFromFile