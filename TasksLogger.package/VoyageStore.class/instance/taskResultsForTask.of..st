tasks
taskResultsForTask: aTask of: aProtocol
	^ (repository selectAll: ExperimentTaskResult) select: [ :experimentTaskResult | (self isTask: aTask ofProtocol: aProtocol) & experimentTaskResult task equals: aTask ].