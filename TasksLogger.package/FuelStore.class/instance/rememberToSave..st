saving
rememberToSave: anObject
	monitor
		critical: [ anObject class == Experiment
				ifTrue: [ self addIfNew: anObject ] ]