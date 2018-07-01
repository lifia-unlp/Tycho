callbacks
addTaskToExperiment: aTask
	| taskClone |
	taskClone := aTask cloneWithNewId: self store newTaskId.
	(experiment tasks detect: [ :each | each id = taskClone id ] ifNone: [ nil ])
		ifNotNil: [ self error: 'cannot have to task with the same id.' ].
	self store rememberToSave: taskClone.
	experiment addTask: taskClone.
	self store rememberToSave: experiment.
	self store savePending