prototypes
preparePrototypes
	| newTask  |
	prototypes := OrderedCollection new.
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
	newTask := self prepareQuestionairePrototype.
	TaskLoggerStore store rememberToSave: newTask.
	prototypes add: newTask.
	TaskLoggerStore store savePending.
	^ prototypes