accessing
addProtocol: anExperimentProtocol
	"Add the given protocol to the experiment, including the semaphores and variables used in it"

	self extractGlobalsFrom: anExperimentProtocol.
	self protocols add: anExperimentProtocol