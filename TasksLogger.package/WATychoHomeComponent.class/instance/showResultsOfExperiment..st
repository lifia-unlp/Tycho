callbacks
showResultsOfExperiment: anExperiment
	self
		call:
			(WASessionResultsComponent new
				protocol: anExperiment;
				yourself)