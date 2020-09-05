private - access
calculateInactivityTime: tasksResults
	| size avg |
	avg := 0.
	tasksResults
		ifNotEmpty: [ size := tasksResults
				sum: [ :taskResult | taskResult atProperty: 'inactiveTime' ].
			avg := (size / tasksResults size) asFloat / 1000 round:2].
	^ avg