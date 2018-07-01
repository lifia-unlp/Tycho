callbacks
addExample
	| exp clone |
	exp := Experiment id: self store newExperimentId notes: 'a sample experiment'.
	self store prototypes
		do: [ :each | 
			clone := each clone.
			exp addTask: clone.
			self store rememberToSave: clone ].
	self store rememberToSave: exp.
	self store savePending .