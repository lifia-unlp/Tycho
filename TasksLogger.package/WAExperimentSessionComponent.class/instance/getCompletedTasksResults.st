accessing
getCompletedTasksResults
	| sessionTaskIds |
	sessionTaskIds := experimentSession tasks collect: [ :each | each id ].
	TaskResult selectAll asSet.
	^ TaskResult selectAll select: [ :each | sessionTaskIds includes: each task id ]