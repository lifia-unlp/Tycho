setup - tear down
setUp

	| experiment |

	experiment:= Experiment name: 'Test experiment' notes: '...'.	
	protocol:= ExperimentProtocol name: 'Test protocol one' notes: '...'.
	
	protocol
		addTask: (ExperimentTask messageScreenPrototype cloneWithNewId: 1);
		addTask: (ExperimentTask basicTaskInstructionsPrototype cloneWithNewId: 2);
		addTask: (ExperimentTask semaphoreSignalPrototype cloneWithNewId: 3);
		addTask: (ExperimentTask questionairePrototype cloneWithNewId: 4).
		

	experiment addProtocol: protocol.
	
	session:= ExperimentSession id: '123456' experiment: experiment.