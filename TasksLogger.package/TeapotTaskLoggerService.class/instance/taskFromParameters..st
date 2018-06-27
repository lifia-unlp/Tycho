voyage-access
taskFromParameters: parameters
	^ self
		fetchOrSave:
			(ObsoleteExperimentTask
				id: (parameters at: #taskId)
				description: (parameters at: #taskDescription))