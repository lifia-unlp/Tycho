testing
testCreateExperimentSession
	"Checks that experiment sessions are created correctly"
			
	| messageTask instructionsTask questionaireTask signalSemTask protocolWithoutGlobals sessionWithoutGlobals |

	messageTask:= (ExperimentTask messageScreenPrototype) cloneWithNewId: 1.
	instructionsTask:= (ExperimentTask basicTaskInstructionsPrototype) cloneWithNewId: 2.
	questionaireTask:= (ExperimentTask questionairePrototype) cloneWithNewId: 3.
	
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