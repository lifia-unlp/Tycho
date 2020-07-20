tasks
taskResultsForTask: aTask withComponentClassname: aClassname
	^ (repository selectAll: ExperimentTaskResult)
		select: [ :experimentTaskResult | (experimentTaskResult task = aTask & experimentTaskResult task componentClassname) = aClassname ]