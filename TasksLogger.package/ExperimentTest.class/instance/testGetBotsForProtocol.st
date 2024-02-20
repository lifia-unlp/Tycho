testing
testGetBotsForProtocol
	"Checks the method that retrieves the bots that understand some specific protocol in an experiment"
			
	| experiment protocolOne protocolTwo botOne botTwo|
	
	experiment:= Experiment name: 'Test experiment' notes: '...'.	
	protocolOne:= ExperimentProtocol name: 'Test protocol one' notes: '...'.
	protocolTwo:= ExperimentProtocol name: 'Test protocol two' notes: '...'.
	
	protocolOne
		addTask: (ExperimentTask messageScreenPrototype cloneWithNewId: 1);
		addTask: (ExperimentTask basicTaskInstructionsPrototype cloneWithNewId: 2);
		addTask: (ExperimentTask semaphoreSignalPrototype cloneWithNewId: 3);
		addTask: (ExperimentTask questionairePrototype cloneWithNewId: 4).
		
	protocolTwo
		addTask: (ExperimentTask messageScreenPrototype cloneWithNewId: 1);
		addTask: (ExperimentTask youtubeVideoPrototype cloneWithNewId: 2);
		addTask: (ExperimentTask basicTaskInstructionsPrototype cloneWithNewId: 3);
		addTask: (ExperimentTask susPrototype cloneWithNewId: 4).
	
	botOne:= (ExperimentBot name: 'Test bot one' notes: 'Test bot that knwows how to execute protocol one').
	botOne bindProtocol: protocolOne.
	
	botTwo:= (ExperimentBot name: 'Test bot two' notes: 'Another test bot that knwows how to execute protocol one').
	botTwo bindProtocol: protocolOne.
	
	experiment
		addProtocol: protocolOne; addProtocol: protocolTwo;
		addBot: botOne; addBot: botTwo.
	
	self assertCollection: (experiment getBotsForProtocol: protocolOne) equals: (OrderedCollection with: botOne with: botTwo).
	self assertCollection: (experiment getBotsForProtocol: protocolTwo) equals: (OrderedCollection empty).
	

	