request handlers
updateTaskResultOf: taskId runBy: participantId with: jsonBody
	"Updates the result of the task with the given ID ran by the given partipitant with the data sent in JSON format"	
	| participant task taskResult nextTaskResult taskResultData |
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
			nextTaskResult:= participant nextTaskResultAfter: taskResult.	
			nextTaskResult ifNotNil: [ 
				nextTaskResult start.
			 ].
			"Mark the participant's execution as completed if it was the last task"
			(participant taskResults last == taskResult) ifTrue: [ 
				participant complete.				
			].
			self store save: participant.
			^ RestResponseWriter new taskResultAsJson: taskResult.
		]