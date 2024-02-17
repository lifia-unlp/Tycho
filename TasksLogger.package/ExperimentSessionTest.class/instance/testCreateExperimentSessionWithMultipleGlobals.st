testing
testCreateExperimentSessionWithMultipleGlobals
	"Check the creation of a session from an experiment that has a protocol which uses multiple variables and semaphores"
			
	| testProtocol testSession |
		
	testProtocol:= (ExperimentProtocol name: 'Test protocol with multiple globals'  notes: '...')
		addTask: messageTaskOne; addTask: instructionsTask; addTask: signalSemTask; addTask: questionaireTask; 
		addTask: waitSemTask; addTask: signalSemTask; addTask: messageTaskWithVariable;
		yourself.
	
	testSession:= ExperimentSession 
		id: '123456' 
		experiment: ((Experiment name: 'Experiment with one semaphore' notes: '...') addProtocol: testProtocol).
	
	self assertCollection: (testSession semaphores size) equals: 2.
	self assert: (testSession semaphores at: 1) id equals: 'testSemaphore'.
	self assert: (testSession semaphores at: 2) id equals: 'anotherSemaphore'.
	
	self assertCollection: (testSession variables size) equals: 2.
	self assert: (testSession variableWithId: 'one') isNotNil.
	self assert: (testSession variableWithId: 'two') isNotNil.	