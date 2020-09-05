globals
averageTimeElapsed
	| avg |
	avg := 0.
	self taskResults size > 0
		ifTrue: [ avg := (self taskResults inject: 0 into: [ :sum :result | sum + result ellapsedMs ]) / self taskResults size asFloat ].
	^ avg