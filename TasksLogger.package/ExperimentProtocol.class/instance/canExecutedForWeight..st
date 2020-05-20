global
canExecutedForWeight: aSession
	(aSession totalJoins = 0) ifFalse:   [ 
		^ ((self cantJoins / aSession totalJoins) asFloat * 100 < self weight)
 ] ifTrue: [ ^ true ]