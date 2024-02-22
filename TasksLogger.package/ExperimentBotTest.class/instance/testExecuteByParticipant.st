tests
testExecuteByParticipant
	"Tests the method that executes the bot tasks by a participant that takes part in the session"	
			
	| experiment session bot protocol participant now |

	protocol:= ExperimentProtocol name: 'Test protocol' notes: 'Some description about the protocol ...'.
	protocol
		addTask: (ExperimentTask messageScreenPrototype cloneWithNewId: 1).
			
	bot:= ExperimentBot name: 'Test Bot' notes: 'Some description about the bot ...'.
	bot bindProtocol: protocol.
	
	experiment:= Experiment name: 'Test experiment' notes: '...'.	
	experiment addProtocol: protocol; addBot: bot.
		
	session:= ExperimentSession id: '123456' experiment: experiment.
	
	participant:= ExperimentParticipantBot new: protocol.
	participant assignToSession: session withId: '123456789'.
	
	
	"Check that the bot has as many tasks as the protocol"
	now:= DateAndTime now.
	bot executeBy: participant.	
		

	self assert: (participant taskResults first startTime) isNotNil.
	self assert: ((participant taskResults first startTime - now) asSeconds) closeTo: 0.
	self assert: (participant taskResults first ellapsedMs) isNotNil.
	self assert: (participant taskResults first status) equals: 'completed'.	
	