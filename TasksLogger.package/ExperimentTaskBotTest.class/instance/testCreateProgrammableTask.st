testing
testCreateProgrammableTask
	"Test the creation of a programmable bot task from a protocol task, 
	checking that the sequence of instruction of the generated bot task is empty"
			
	| protocolTask programmableTask |
	protocolTask:= (ExperimentTask basicTaskInstructionsPrototype) cloneWithNewId: 1.
	programmableTask:= BotProgrammableTask task: protocolTask.
	
	self assert: (programmableTask instructions isEmpty).	