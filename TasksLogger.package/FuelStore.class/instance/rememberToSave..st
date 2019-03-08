saving
rememberToSave: anObject
	monitor
		critical: [ anObject class == ExperimentProtocol
				ifTrue: [ self rememberToSaveProtocol: anObject ].
			anObject class == ExperimentSession
				ifTrue: [ self addSessionIfNew: anObject ] ]