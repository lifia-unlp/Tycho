callbacks
addNewTask
	| task id tasks |
	tasks := ExperimentTask selectAll.
	tasks isEmpty
		ifTrue: [ id := 1 ]
		ifFalse: [ id := (ExperimentTask selectAll collect: [ :each | each id asNumber ]) max + 1 ].
	task := ExperimentTask id: id asString description: 'undescribed' componentClassname: 'NullComponent'.
	task save.
	experimentDesign addTask: task.
	experimentDesign save