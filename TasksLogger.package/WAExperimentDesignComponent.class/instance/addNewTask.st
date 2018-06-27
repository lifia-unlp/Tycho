obsolete
addNewTask
	| task id tasks |
	tasks := ObsoleteExperimentTask selectAll.
	tasks isEmpty
		ifTrue: [ id := 1 ]
		ifFalse: [ id := (ObsoleteExperimentTask selectAll collect: [ :each | each id asNumber ]) max + 1 ].
	task := ObsoleteExperimentTask id: id asString description: 'undescribed' componentClassname: 'NullComponent'.
	task save.
	experimentDesign addTask: task.
	experimentDesign save