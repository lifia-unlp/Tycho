persistence-access
taskFromParameters: parameters
	^ self store taskId: ((parameters at: #model) at: #id)