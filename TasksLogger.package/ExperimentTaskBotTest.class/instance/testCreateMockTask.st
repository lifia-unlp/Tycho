testing
testCreateMockTask
	"Test the creation of a mock bot task from a protocol task, checking that the delay time is 0"
			
	| protocolTask mockTask |
	protocolTask:= (ExperimentTask messageScreenPrototype) cloneWithNewId: 1.
	mockTask:= BotMockTask task: protocolTask.
	
	self assert: (mockTask delay) equals: 0.