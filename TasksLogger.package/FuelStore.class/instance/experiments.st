accesing
experiments
	^ experiments
		ifNil: [ self attemptToInitializeFromFile.
			experiments ]