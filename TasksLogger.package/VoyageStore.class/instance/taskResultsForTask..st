tasks
taskResultsForTask: aTask
	^ (repository selectAll: ExperimentTaskResult) select: [ :experimentTaskResult | experimentTaskResult task equals: aTask ].