voyage-access
taskFromParameters: parameters
	| tasks theId |
	tasks := ExperimentTask selectAll.
	theId := parameters at: #taskId.
	^ tasks detect: [ :each | each id = theId ] ifNone: [ nil ]