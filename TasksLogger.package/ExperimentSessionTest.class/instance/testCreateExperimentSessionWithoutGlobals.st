testing
testCreateExperimentSessionWithoutGlobals
	"Check the creation of a session from an experiment that has a protocol without semaphores or variables"
			
	| protocolWithoutGlobals sessionWithoutGlobals |
		
	protocolWithoutGlobals:= (ExperimentProtocol name: 'Test protocol without globals'  notes: '...')
		addTask: messageTask;
		addTask: instructionsTask;
		addTask: questionaireTask;
		yourself.
	
	sessionWithoutGlobals:= ExperimentSession 
		id: '123456' 
		experiment: ((Experiment name: 'Experiment without globals' notes: '...') addProtocol: protocolWithoutGlobals).
	
	self assertCollection: (sessionWithoutGlobals semaphores) equals: (OrderedCollection empty).
	self assertCollection: (sessionWithoutGlobals variables) equals: (OrderedCollection empty).