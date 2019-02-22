accessing
addProtocol: anExperimentProtocol
	self extractGlobalsFrom: anExperimentProtocol.
	self protocols add: anExperimentProtocol