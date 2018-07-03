initialize
initialize
	super initialize.
	experiments := nil.
	prototypes := nil.
	lastSampleId := nil.
	lastTaskId := nil.
	monitor := Monitor new.
	monitor critical: [ experiments ifNil: [ self attemptToInitializeFromFile ] ]