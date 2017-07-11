endpoints
receiveTaskResult
	<post>
	<path: '/create/'>
	| parameters task taskResult user sus |
	parameters := self requestContext request fields.
	user := self userFromParameters: parameters.
	task := self taskFromParameters: parameters.
	sus := self susFromParameters: parameters.
	taskResult := self taskResultsFor: task fromParameters: parameters.
	taskResult susResponse: sus.
	user
		addTaskResult: taskResult;
		save.
	taskResult save.
	sus save.
	self respondOk