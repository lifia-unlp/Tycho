retrieving
semaphore: id forWorkspace: workspaceId
	^ self semaphores
		detect: [ :each | each id = id & (each workspace = workspaceId) ]
		ifNone: [ self semaphores add: (ExperimentSemaphore id: id session: workspaceId status: 1) ]