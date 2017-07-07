objects creation
taskResultsFor: aTestTask fromParameters: parameters
	^ TaskResult
		task: aTestTask
		milliseconds: (parameters at: #milliseconds) asNumber
		successful: (parameters at: #successful) asNumber = 1