factory
addCleanProtocol
	| newId protocol |
	protocol := nil.
	self monitor
		critical: [ newId := self newExperimentId.
			protocol := ExperimentProtocol name: newId asString notes: ''.
			self rememberToSave: protocol.
			self save ].
	^ protocol