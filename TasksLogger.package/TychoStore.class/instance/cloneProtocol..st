protocols
cloneProtocol: aProtocol
	| clone |
	clone := ExperimentProtocol name: 'A copy of ' , aProtocol name notes: ''.
	clone id: self newExperimentId.
	aProtocol tasks do: [ :each | clone addTask: (each cloneWithNewId: self newTaskId) ].
	^ clone