setup - tear down
setUp
	"Set up the context required by the tests that checks the behaviour of the experiment variables"	
			
	session:= ExperimentSession id: 1 experiment: (Experiment name: 'Testing experiment' notes: '').