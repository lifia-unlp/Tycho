accessing
extractSemaphoresFrom: anExperimentProtocol
	| semaphoreIds |
	semaphoreIds := anExperimentProtocol tasks flatCollect: [ :task | task extractSemaphoreIds ].
	semaphoreIds do: [ :semaphoreId | self addSemaphore: (ExperimentSemaphore id: semaphoreId workspace: self status: 1) ]