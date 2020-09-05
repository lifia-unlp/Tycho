private - accessing
arrayOfElapsedMs: tasksResults
	| data serie taskSorted |
	data := OrderedCollection new.
	taskSorted := tasksResults asOrderedCollection.
	taskSorted sort:[:task1 :task2 | (task1 ellapsedMs / 1000) < (task2 ellapsedMs / 1000)].
	taskSorted
		doWithIndex: [ :taskResult :i | 
			serie := HighchartsSeriesLineData new.
			serie x: i.
			serie y: taskResult ellapsedMs / 1000.
			data add: serie ].
	^ data