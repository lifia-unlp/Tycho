task results
getTaskResult: anExperimentTask
	"Returns the result of the given task for the participant"
			
	^ self taskResults detect: [ :taskResult | taskResult task = anExperimentTask ] ifNone: [ nil ].