callbacks
showResultsOfExperiment: anExperiment
	self
		call:
			(WAExperimentResultsComponent new
				protocol: anExperiment;
				yourself)