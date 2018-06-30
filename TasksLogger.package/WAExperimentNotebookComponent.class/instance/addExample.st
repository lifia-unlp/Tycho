callbacks
addExample
	| exp clone |
	exp := Experiment id: 99 notes: 'a sample experiment'.
	ExperimentTask prototypes
		do: [ :each | 
			clone := each clone.
			exp addTask: clone.
			self store rememberToSave: clone ].
	self store rememberToSave: exp.
	self store savePending .