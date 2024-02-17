testing
testCreateExperimentSessionWithOneVariable
	"Check the creation of a session from an experiment that has a protocol with one variable."
			
	| testProtocol testSession |
		
	testProtocol:= (ExperimentProtocol name: 'Test protocol with one variable'  notes: '...')
		addTask: messageTaskWithVariable;
		addTask: instructionsTask;
		addTask: questionaireTask;
		yourself.
	
	testSession:= ExperimentSession 
		id: '123456' 
		experiment: ((Experiment name: 'Experiment with one variable' notes: '...') addProtocol: testProtocol).
	
	self assertCollection: (testSession semaphores) equals: (OrderedCollection empty).
	self assertCollection: (testSession variables size) equals: 1.
	self assert: (testSession variables first id) equals: 'one'.
	
	