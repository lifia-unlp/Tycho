private - access - tags
arrayOfClicksOnTagOf: tasksResults tag: captureEventTag
	| data serie taskSorted key |
	data := OrderedCollection new.
	key := self countClicksPropertyNameFor: captureEventTag.
	taskSorted := tasksResults asOrderedCollection.
	taskSorted := self selectTasksArrayOfClicksOf: tasksResults with: key.
	taskSorted sort: [ :task1 :task2 | (task1 atProperty: key) size < (task2 atProperty: key) size ].
	taskSorted
		doWithIndex: [ :taskResult :i | 
			serie := HighchartsSeriesLineData new.
			serie x: i.
			serie y: (taskResult properties at: key) size.
			data add: serie ].
	^ data