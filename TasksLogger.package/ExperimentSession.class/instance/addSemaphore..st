globals
addSemaphore: anExperimentSemaphore
	(self semaphores anySatisfy: [ :semaphore | semaphore id = anExperimentSemaphore id ])
		ifFalse: [ self semaphores add: anExperimentSemaphore ]