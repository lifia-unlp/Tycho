setup - tear down
setUp
	"Setup the context required (experiment, protocol, session, ...) by the tests defined in this class"
			
	| experiment protocol session |
	experiment := Experiment name: 'Testing experiment' notes: '...'.
	protocol:= ExperimentProtocol name: 'Testing protocol' notes: '...'.
	session:= ExperimentSession id: 1 experiment: experiment.
	session addVariable: (ExperimentVariable id: 'testVar' session: session  value: 'initialValue').
	
	botParticipant:= (ExperimentParticipantBot new: protocol) assignToSession: session withId: 1.
