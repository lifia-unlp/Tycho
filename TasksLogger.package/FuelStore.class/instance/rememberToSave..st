saving
rememberToSave: anObject
	anObject class == Experiment
		ifTrue: [ self addIfNew: anObject ]