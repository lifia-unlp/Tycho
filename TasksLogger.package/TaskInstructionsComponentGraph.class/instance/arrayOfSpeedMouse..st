private - access
arrayOfSpeedMouse: tasksResults
	| data serie taskSorted |
	data := OrderedCollection new.
	taskSorted := tasksResults asOrderedCollection.
	taskSorted
		sort:
			[ :task1 :task2 | (self speedMouseOf: task1) < (self speedMouseOf: task2)].
	taskSorted
		doWithIndex: [ :taskResult :i | 
			serie := HighchartsSeriesLineData new.
			serie x: i.
			serie y: (self speedMouseOf: taskResult).
			data add: serie ].
	^ data