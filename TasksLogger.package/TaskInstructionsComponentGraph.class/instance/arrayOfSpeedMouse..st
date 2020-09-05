private - access
arrayOfSpeedMouse: tasksResults
	| data serie taskSorted |
	data := OrderedCollection new.
	taskSorted := tasksResults asOrderedCollection.
	taskSorted sort: [ :task1 :task2 | (task1 atProperty: 'distance') < (task2 atProperty: 'distance') ].
	taskSorted
		doWithIndex: [ :taskResult :i |
			serie := HighchartsSeriesLineData new.
			serie x: i.
			serie y: ((taskResult properties at: 'distance') / (taskResult ellapsedMs / 1000)) asFloat .
			data add: serie ].
	^ data