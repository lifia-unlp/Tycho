callbacks
showResultsOfDesign: anExperimentDesign
	self
		call:
			(WAExperimentResultsComponent new
				experimentDesign: anExperimentDesign;
				yourself)