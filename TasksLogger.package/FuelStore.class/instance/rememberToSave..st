saving
rememberToSave: anObject
	monitor
		critical: [ anObject class == ExperimentProtocol
				ifTrue: [ self addIfNew: anObject ] ]