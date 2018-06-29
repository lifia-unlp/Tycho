route handlers
handleTaskResultPostRequest: parameters
	| task taskResult sample design payload |
	payload := NeoJSONReader fromString: parameters entity string.
	design := self experimentFromParameters: payload.
	sample := self sampleForExperiment: design fromParameters: payload.
	task := self taskFromParameters: payload.
	taskResult := self newTaskResultsFor: task withParameters: payload.
	taskResult save.
	sample addTaskResult: taskResult.
	sample save.
	^ 'ok'