callbacks
addTaskToExperiment: aTask
	| taskClone |
	taskClone := aTask clone.
	taskClone save.
	experiment addTask: taskClone.
	experiment save