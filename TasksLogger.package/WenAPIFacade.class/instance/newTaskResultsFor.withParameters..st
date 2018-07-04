store
newTaskResultsFor: task withParameters: parameters
	| result |
	result := ExperimentTaskResult new.
	result task: task.
	result properties: (parameters at: #model). 
	result koboldReport: (parameters at: #koboldEvents).
	self store rememberToSave: result.
	^result.
	