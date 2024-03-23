tests
testExtractVariablesFromProtocolWithoutVariables
	"Checks the method #extractVariablesFrom: passing a protocol made up of tasks that do not include variables"
			
	protocol
		addTask: messageTask;
		addTask: instructionsTask.
	session extractVariablesFrom: protocol.
	
	self assert: session variables size equals: 0.