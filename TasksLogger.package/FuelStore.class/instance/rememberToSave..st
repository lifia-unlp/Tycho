saving
rememberToSave: anObject
	monitor
		critical: [ anObject class == ExperimentProtocol
				ifTrue: [ self addProtocolIfNewTemplate: anObject ].
			anObject class == ExperimentSession
				ifTrue: [ self addSessionIfNew: anObject ] ]