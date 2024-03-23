testing
testCreateInputVariableTask
	"Checks the creation of an input variable bot task from a protocol task."
			
	| task botTask |
	task:= ExperimentTask inputVariablePrototype cloneWithNewId: 1.
	task atProperty: 'variableName' setValue: 'testVar'.
	botTask:= InputVariableTask task: task.

	self assert: botTask variableId equals: 'testVar'.
	self assert: botTask value isNil.
