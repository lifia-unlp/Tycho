callbacks
showResultsOfExperiment: anExperiment
	self
		call:
			(WAExperimentResultsComponent new
				experiment: anExperiment;
				yourself)