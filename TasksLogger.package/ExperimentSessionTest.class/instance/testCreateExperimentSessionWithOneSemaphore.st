testing
testCreateExperimentSessionWithOneSemaphore
	"Check the creation of a session from an experiment that has a protocol with one semaphore."
			
	| testProtocol testSession |
		
	testProtocol:= (ExperimentProtocol name: 'Test protocol with one semaphore'  notes: '...')
		addTask: messageTask;
		addTask: instructionsTask;
		addTask: signalSemTask;
		addTask: questionaireTask;
		yourself.
	
	testSession:= ExperimentSession 
		id: '123456' 
		experiment: ((Experiment name: 'Experiment with one semaphore' notes: '...') addProtocol: testProtocol).
	
	self assertCollection: (testSession semaphores size) equals: 1.
	self assert: (testSession semaphores first id) equals: 'testSemaphore'.
	
	self assertCollection: (testSession variables) equals: (OrderedCollection empty).