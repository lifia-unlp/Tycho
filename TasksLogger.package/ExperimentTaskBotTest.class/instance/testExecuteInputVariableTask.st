testing
testExecuteInputVariableTask
	"Checks the execution of an input variable bot task"
			
	| task botTask |
	task:= ExperimentTask inputVariablePrototype cloneWithNewId: 1.
	task atProperty: 'variableName' setValue: 'testVar'.
	botTask:= InputVariableTask task: task.
	botTask value: (ExperimentValueHolder value: 'newValue').
		
	self 
		assert: (botParticipant session variableWithId: 'testVar') value
		equals: 'initialValue'.
		
	botTask executeBy: botParticipant.
		
	self 
		assert: (botParticipant session variableWithId: 'testVar') value
		equals: 'newValue'.
