callbacks
addTaskToProtocol: aTask
	| taskClone |
	taskClone := aTask cloneWithNewId: self store newTaskId.
	(protocol tasks detect: [ :task | task id = taskClone id ] ifNone: [ nil ])
		ifNotNil: [ self error: 'Cannot have two tasks with the same id.' ].
	self store save: taskClone.
	protocol addTask: taskClone.
	self store save: protocol