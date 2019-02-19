accessing
protocols
	^ protocols
		ifNil: [ self attemptToInitializeFromFile.
			protocols ]