request handlers
handleTaskResultPostRequest: parameters
	| task taskResult sample experiment payload |
	payload := NeoJSONReader fromString: parameters entity string.
	experiment := self experimentFromParameters: payload.
	sample := self sampleFromParameters: payload.
	(experiment samples includes: sample)
		ifFalse: [ experiment addSample: sample.
			self store rememberToSave: experiment ].
	task := self taskFromParameters: payload.
	taskResult := self newTaskResultsFor: task withParameters: payload.
	sample addTaskResult: taskResult.
	self store rememberToSave: sample.
	self store savePending.
	^ 'ok'