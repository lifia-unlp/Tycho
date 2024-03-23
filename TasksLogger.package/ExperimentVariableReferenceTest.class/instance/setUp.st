setup - tear down
setUp
	"Setup de the context (experiment, session, protocol, bot, participant) required by the tests defined in this class"
			
	| experiment session protocol |
	
	experiment := Experiment name: 'Testing experiment' notes: '...'.
	protocol := ExperimentProtocol name: 'Testing protocol' notes: '...'.
	session := ExperimentSession id: 1 experiment: experiment.
	session addVariable: (ExperimentVariable id: 'testVar' session: session value: 'initialValue').
	botParticipant := (ExperimentParticipantBot new: protocol) assignToSession: session withId: 1.
	
	
	
	
