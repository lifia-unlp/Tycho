callbacks
addNewSemaphore
	self
		call: (WASemaphoreComponent on: ExperimentSemaphore new)
		onAnswer: [ :newSemaphore | self store addSemaphore: newSemaphore ]