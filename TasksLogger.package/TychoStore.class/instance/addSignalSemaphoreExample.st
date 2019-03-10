factory
addSignalSemaphoreExample
	| protocol clone |
	protocol := nil.
	monitor
		critical: [ protocol := ExperimentProtocol name: 'Signaling a sepaphore' notes: 'A simple protocol that shows how signal a semaphore that other protocols are waiting for.'.
			clone := ExperimentTask messageScreenPrototype clone.
			clone id: self newTaskId.
			clone
				atProperty: 'title' setValue: 'You will signal';
				atProperty: 'message' setValue: 'Next, you will give other users a signal to go forward'.
			protocol addTask: clone.
			self rememberToSave: clone.
			clone := ExperimentTask semaphoreSignalPrototype clone.
			clone id: self newTaskId.
			protocol addTask: clone.
			self rememberToSave: clone.
			clone := ExperimentTask messageScreenPrototype clone.
			clone id: self newTaskId.
			clone
				atProperty: 'title' setValue: 'Done';
				atProperty: 'message' setValue: 'You just gave a signal other users were waiting for. Congratulations.'.
			protocol addTask: clone.
			self rememberToSave: clone.
			self rememberToSave: protocol.
			self savePending ].
	^ protocol