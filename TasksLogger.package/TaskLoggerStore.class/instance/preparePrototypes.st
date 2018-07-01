prototypes
preparePrototypes
	| newTask |
	prototypes := OrderedCollection new.
	newTask := self prepareSimpleDemographicsPrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareBasicTaskInstructionsPrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareSUSPrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareMessageScreenPrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareYoutubeVideoPrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	^ prototypes