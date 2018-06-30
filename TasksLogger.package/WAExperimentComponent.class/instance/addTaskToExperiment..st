callbacks
addTaskToExperiment: aTask
	| taskClone |
	taskClone := aTask clone.
	self store rememberToSave: taskClone.
	experiment addTask: taskClone.
	self store rememberToSave: experiment.
	self store savePending