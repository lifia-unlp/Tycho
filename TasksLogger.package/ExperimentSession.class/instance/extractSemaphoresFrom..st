accessing
extractSemaphoresFrom: anExperimentProtocol
	| semaphoreIds |
	semaphoreIds := anExperimentProtocol tasks flatCollect: [ :task | task extractSemaphoreIds ].
	semaphoreIds do: [ :semaphoreId | self addSemaphore: (ExperimentSemaphore id: semaphoreId session: self status: 1) ]