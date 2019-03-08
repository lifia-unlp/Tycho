ids
newExperimentId
	| id attemps |
	id := self randomExperimentId.
	attemps := 0.
	[ (self sessionProtocols collect: [ :each | each name ]) asSet includes: id ]
		whileTrue: [ id := self randomExperimentId.
			attemps := attemps + 1.
			attemps = 10
				ifTrue: [ TimedOut signal: 'took to long to find an available id' ] ].
	^ id