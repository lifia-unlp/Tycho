factory
showcaseExampleProtocol
	| protocol clone |
	protocol := ExperimentProtocol
		name: 'Showcase example'
		notes: 'A simple protocol that showcases all tools/tasks'.
	self prototypes
		do: [ :each | 
			clone := each clone.
			clone id: self newTaskId.
			protocol addTask: clone ].
	^ protocol