instance creation
id: anId experiment: anExperiment
	"Creates a session of the given experiment with the specified id."
	"Besides, loads in the session the globals elements (semaphores and variables) used in the protocols of the experiment."

	^ (self new)
		id: anId;
		experiment: anExperiment;
		loadGlobals;
		yourself