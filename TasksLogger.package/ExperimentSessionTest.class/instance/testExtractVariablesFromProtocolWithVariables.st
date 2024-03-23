tests
testExtractVariablesFromProtocolWithVariables
	"Checks the method #extractVariablesFrom: passing a protocol made up of tasks that includes multiple variables"
			
	protocol
		addTask: messageTaskOne;
		addTask: messageTaskTwo.
	session extractVariablesFrom: protocol.
	
	self assert: session variables size equals: 3.
	self 
		assertCollection: ((session variables collect: [ :each | each id ]) asSet)
		equals: (Set with: 'one' with: 'two'  with: 'three').