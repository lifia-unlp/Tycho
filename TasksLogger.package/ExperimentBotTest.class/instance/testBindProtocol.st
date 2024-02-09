testing
testBindProtocol
	"Test the method that assigns a protocolo to a bot, generating the sequence of tasks that the bot must execute."	
			
	| bot protocol |

	protocol:= ExperimentProtocol name: 'Test protocol' notes: 'Some description about the protocol ...'.
	protocol
		addTask: (ExperimentTask messageScreenPrototype cloneWithNewId: 1);
		addTask: (ExperimentTask basicTaskInstructionsPrototype cloneWithNewId: 2);
		addTask: (ExperimentTask semaphoreWaitPrototype cloneWithNewId: 3);
		addTask: (ExperimentTask semaphoreSignalPrototype cloneWithNewId: 4);
		addTask: (ExperimentTask questionairePrototype cloneWithNewId: 5);
		addTask: (ExperimentTask susPrototype cloneWithNewId: 6);
		addTask: (ExperimentTask youtubeVideoPrototype cloneWithNewId: 7).
		
	bot:= ExperimentBot name: 'Test Bot' notes: 'Some description about the bot ...'.
	bot bindProtocol: protocol.
	
	"Check that the bot has as many tasks as the protocol"
	self assert: (bot tasks size) equals: (protocol tasks size).
	
	"Check the class of each of the generated bot tasks"
	self assert: (bot tasks at: 1) class equals: BotMockTask.
	self assert: (bot tasks at: 2) class equals: BotProgrammableTask.
	self assert: (bot tasks at: 3) class equals: SemaphoreWaitingTask.
	self assert: (bot tasks at: 4) class equals: SemaphoreSignalingTask.
	self assert: (bot tasks at: 5) class equals: BotMockTask.
	self assert: (bot tasks at: 6) class equals: BotMockTask.
	self assert: (bot tasks at: 7) class equals: BotMockTask.
	
	
	
	
	
	
	
	