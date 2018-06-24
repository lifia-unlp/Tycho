accessing
getCompletedTasksResults
	| testTasks |
	testTasks := experimentSession tasks.
	^ TaskResult selectAll select: [ :each | testTasks includes: each task ]