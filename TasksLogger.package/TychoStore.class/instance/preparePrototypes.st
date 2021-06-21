prototypes-LEGACY
preparePrototypes
	| newTask |
	prototypes := OrderedCollection new.
	newTask := self prepareBasicTaskInstructionsPrototype.
	self rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareSUSPrototype.
	self rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareMessageScreenPrototype.
	self rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareYoutubeVideoPrototype.
	self rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareQuestionairePrototype.
	self rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareInputVariablePrototype. 
	self rememberToSave: newTask.
	prototypes add: newTask.

	self savePending.
	^ prototypes