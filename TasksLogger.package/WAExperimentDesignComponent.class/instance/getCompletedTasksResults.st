obsolete
getCompletedTasksResults
	| sessionTaskIds |
	sessionTaskIds := experimentDesign tasks collect: [ :each | each id ].
	ExperimentTaskResult selectAll asSet.
	^ ExperimentTaskResult selectAll select: [ :each | sessionTaskIds includes: each task id ]