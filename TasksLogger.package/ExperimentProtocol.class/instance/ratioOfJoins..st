weights-methods
ratioOfJoins: aSession
	aSession totalJoins isZero ifTrue: [ ^ 0 ].
	^ (self cantJoins / aSession totalJoins) asFloat * 100