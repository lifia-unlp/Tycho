factory
addExampleProtocol
	| protocol clone |
	protocol := nil.
	self monitor
		critical: [ protocol := ExperimentProtocol name: self newExperimentId notes: 'a sample experiment'.
			self prototypes
				do: [ :each | 
					clone := each clone.
					protocol addTask: clone.
					self rememberToSave: clone ].
			self rememberToSave: protocol.
			self savePending ].
	^ protocol