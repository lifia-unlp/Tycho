factory
addCleanExperiment
	| newId exp |
	exp := nil.
	self monitor
		critical: [ newId := self newExperimentId.
			exp := Experiment id: newId asString notes: ''.
			self rememberToSave: exp.
			self savePending ].
	^ exp