factory
waitForSemaphoreExample
	| protocol clone |
	protocol := ExperimentProtocol name: 'Waiting on a sepaphore' notes: 'A simple protocol that shows how to wait for another protocol to reach a certain state.'.
	clone := ExperimentTask messageScreenPrototype clone.
	clone id: self newTaskId.
	clone
		atProperty: 'title' setValue: 'You will wait';
		atProperty: 'message' setValue: 'Next, you will wait until someone else gives a signal'.
	protocol addTask: clone.
	self rememberToSave: clone.
	clone := ExperimentTask semaphoreWaitPrototype clone.
	clone id: self newTaskId.
	protocol addTask: clone.
	self rememberToSave: clone.
	clone := ExperimentTask messageScreenPrototype clone.
	clone id: self newTaskId.
	clone
		atProperty: 'title' setValue: 'Done';
		atProperty: 'message' setValue: 'Someone gave the signal you were waiting for. Congratulations.'.
	protocol addTask: clone.
	^ protocol