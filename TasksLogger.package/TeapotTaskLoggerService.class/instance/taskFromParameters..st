voyage-access
taskFromParameters: parameters
	^ self
		fetchOrSave:
			(ExperimentTask
				id: (parameters at: #taskId)
				description: (parameters at: #taskDescription))