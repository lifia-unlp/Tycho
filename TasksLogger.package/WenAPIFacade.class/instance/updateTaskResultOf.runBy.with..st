request handlers
updateTaskResultOf: taskId runBy: participantId with: jsonBody
	"Updates the result of the task with the given ID ran by the given partipitant with the data sent in JSON format"	
	| participant task taskResult taskResultData |
	monitor
		critical: [
			participant:= self store participantWithId: participantId.	
			participant ifNil: [ ^ nil ].
			task:= self store taskId: taskId.	
			task ifNil: [ ^ nil ].
			taskResult:= participant getTaskResult: task.
			taskResult ifNil: [ ^ nil ].			
			"Task result exists"
			taskResultData := self getTaskResultDataFrom: (NeoJSONReader fromString: jsonBody).
			taskResult updateWith: taskResultData.			
			self store save: taskResult.
			^ RestResponseWriter new taskResultAsJson: taskResult.
		]