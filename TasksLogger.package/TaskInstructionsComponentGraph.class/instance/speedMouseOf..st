private - access
speedMouseOf: taskResult
	^ ((taskResult properties at: 'distance')
		/ (taskResult ellapsedMs / 1000)) asFloat