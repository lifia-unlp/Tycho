ids
newExperimentId
	| id attemps |
	id := self randomExperimentId.
	attemps := 0.
	[ (self experiments collect: [ :each | each id ]) asSet includes: id ]
		whileTrue: [ id := self randomExperimentId.
			attemps := attemps + 1.
			attemps = 10
				ifTrue: [ TimedOut signal: 'took to long to find an available id' ] ].
	^ id