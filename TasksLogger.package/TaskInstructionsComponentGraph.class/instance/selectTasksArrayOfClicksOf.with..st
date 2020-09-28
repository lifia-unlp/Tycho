private - access - tags
selectTasksArrayOfClicksOf: tasksResults with: key
	^ tasksResults
		select: [ :t | 
			(t properties includesKey: key)
				ifTrue: [ (t properties at: key) isNotNil
						ifTrue: [ (t properties at: key) size > 0 ]
						ifFalse: [ false ] ]
				ifFalse: [ false ] ]