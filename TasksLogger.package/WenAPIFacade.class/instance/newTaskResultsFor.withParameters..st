store
newTaskResultsFor: task withParameters: parameters
	| result modelFromClient |
	result := ExperimentTaskResult new.
	result task: task.
	modelFromClient := parameters at: #model.
	result startTime: (modelFromClient at: 'startTime') asDateAndTime.
	result ellapsedMs: (modelFromClient at: 'ellapsedMs').
	modelFromClient removeKey: 'ellapsedMs'.
	modelFromClient removeKey: 'startTime'.
	modelFromClient removeKey: 'id'.
	result properties: modelFromClient.
	result koboldReport: (parameters at: #koboldEvents).
	self store rememberToSave: result.
	^ result