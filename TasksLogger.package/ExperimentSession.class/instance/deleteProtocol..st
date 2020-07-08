accessing
deleteProtocol: anExperimentProtocol
	self protocols remove: anExperimentProtocol.
	self abTesting: (self protocols size > 1).
	self balanceWeightProtocols.