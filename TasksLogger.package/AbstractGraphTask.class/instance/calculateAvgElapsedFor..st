global
calculateAvgElapsedFor: tasksResults
	| avg size |
	avg := 0.
	tasksResults
		ifNotEmpty: [ size := tasksResults sum: [ :taskResult | taskResult ellapsedMs ].
			avg := (size / tasksResults size) asFloat / 1000.
			avg := avg truncateTo: 0.01.
			].
	^ avg