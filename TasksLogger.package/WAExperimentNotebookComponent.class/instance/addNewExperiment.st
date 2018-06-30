callbacks
addNewExperiment
	| newId exp |
	newId := self store newExperimentId.
	exp := Experiment id: newId asString notes: ''.
	self store rememberToSave: exp.
	self store savePending