api
receiveTaskResult
	<post>
	<path: '/create/'>
	| parameters task taskResult |
	parameters := self requestContext request fields.
	task := self taskFromParameters: parameters.
	taskResult := self taskResultsFor: task fromParameters: parameters.
	taskResult save.
	self respondOk