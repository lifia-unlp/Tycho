endpoints
receiveTaskResult
	<post>
	<path: '/create/'>
	| parameters task taskResult user |
	parameters := self requestContext request fields.
	user := self userFromParameters: parameters.
	task := self taskFromParameters: parameters.
	taskResult := self taskResultsFor: task fromParameters: parameters.
	user
		addTaskResult: taskResult;
		save.
	taskResult save.
	self respondOk