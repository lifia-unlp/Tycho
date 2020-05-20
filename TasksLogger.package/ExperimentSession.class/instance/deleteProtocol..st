accessing
deleteProtocol: anExperimentProtocol
	self protocols remove: anExperimentProtocol.
	self balanceWeightProtocols.