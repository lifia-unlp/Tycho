prototypes
preparePrototypes
	| newTask |
	prototypes := OrderedCollection new.
	newTask := self prepareBasicTaskInstructionsPrototype.
	FuelStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareSUSPrototype.
	FuelStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareMessageScreenPrototype.
	FuelStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareYoutubeVideoPrototype.
	FuelStore store rememberToSave: newTask.
	prototypes add: newTask.
	newTask := self prepareQuestionairePrototype.
	FuelStore store rememberToSave: newTask.
	prototypes add: newTask.
	FuelStore store savePending.
	^ prototypes