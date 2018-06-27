callbacks
addTaskToDesign: aTask
	| taskClone |
	taskClone := aTask clone.
	taskClone save.
	experimentDesign addTask: taskClone.
	experimentDesign save