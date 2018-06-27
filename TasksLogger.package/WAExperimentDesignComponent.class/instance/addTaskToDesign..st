callbacks
addTaskToDesign: aTask
	| taskClone |
	self halt.
	taskClone := aTask clone.
	taskClone save.
	experimentDesign addTask: taskClone.
	experimentDesign save