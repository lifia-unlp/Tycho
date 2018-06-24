rendering
addNewTask
	| task id tasks |
	tasks := TestTask selectAll.
	tasks isEmpty
		ifTrue: [ id := 1 ]
		ifFalse: [ id := (TestTask selectAll collect: [ :each | each id asNumber ]) max + 1 ].
	task := TestTask id: id asString description: 'undescribed' componentClassname: 'NullComponent'.
	task save.
	experimentSession addTask: task.
	experimentSession save