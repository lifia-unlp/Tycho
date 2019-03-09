factory
addShowcaseExampleProtocol
	| protocol clone |
	protocol := nil.
	self monitor
		critical: [ protocol := ExperimentProtocol name: 'Showcase example' notes: 'A simple protocol that showcases all tools/tasks'.
			self prototypes
				do: [ :each | 
					clone := each clone.
					clone id: self newTaskId.
					protocol addTask: clone.
					self rememberToSave: clone ].
			self rememberToSave: protocol.
			self savePending ].
	^ protocol