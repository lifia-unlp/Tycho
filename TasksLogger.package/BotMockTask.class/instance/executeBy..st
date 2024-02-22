executing
executeBy: anExperimentParticipant
	"Executes a protocol task through a simulation that consists of waiting for a configured time interval"
			
	(Delay forSeconds: self delay) wait.