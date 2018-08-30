factory
addCleanExperiment
	| newId exp |
	exp := nil.
	self monitor
		critical: [ newId := self store newExperimentId.
			exp := Experiment id: newId asString notes: ''.
			self store rememberToSave: exp.
			self store savePending ].
	^ exp