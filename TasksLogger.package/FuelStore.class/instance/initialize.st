initialize
initialize
	monitor := Monitor new.
	monitor critical: [ experiments ifNil: [ self attemptToInitializeFromFile ] ]