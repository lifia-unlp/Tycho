weights-methods
canExecutedForWeight: aSession
	aSession totalJoins = 0
		ifFalse:
			[ ^ (self ratioOfJoins: aSession) < self weight ]
		ifTrue: [ ^ true ]