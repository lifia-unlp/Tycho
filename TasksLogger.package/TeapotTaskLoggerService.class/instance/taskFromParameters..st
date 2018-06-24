voyage-access
taskFromParameters: parameters
	^ self
		fetchOrSave:
			(TestTask
				id: (parameters at: #taskId)
				description: (parameters at: #taskDescription))