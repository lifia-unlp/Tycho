private - access - tags
arrayOfTimeOverOnTagOf: tasksResults tag: captureEventTag
	| data serie taskSorted key |
	data := OrderedCollection new.
	key := self arrivalTimeTagPropertyNameFor: captureEventTag.
	taskSorted := tasksResults asOrderedCollection.
	taskSorted := self selectTasksArrayOfTimeOverOf: tasksResults with: key.
	taskSorted sort: [ :task1 :task2 | (task1 atProperty: key) < (task2 atProperty: key) ].
	taskSorted
		doWithIndex: [ :taskResult :i | 
			serie := HighchartsSeriesLineData new.
			serie x: i.
			serie y: (taskResult properties at: key) / 1000.
			data add: serie ].
	^ data