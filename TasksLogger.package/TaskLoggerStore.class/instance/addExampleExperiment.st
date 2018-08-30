factory
addExampleExperiment
	| exp clone |
	exp := nil.
	self monitor
		critical: [ exp := Experiment id: self newExperimentId notes: 'a sample experiment'.
			self prototypes
				do: [ :each | 
					clone := each clone.
					exp addTask: clone.
					self rememberToSave: clone ].
			self rememberToSave: exp.
			self savePending ].
	^ exp