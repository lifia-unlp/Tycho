voyage-access
taskFromParameters: parameters
	| tasks theId |
	tasks := ExperimentTask selectAll.
	theId := (parameters at: #model) at: #id.
	^ tasks detect: [ :each | each id = theId ] ifNone: [ nil ]