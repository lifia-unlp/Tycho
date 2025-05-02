globals
variableAsJson: anExperimentVariable
	^ NeoJSONWriter toStringPretty: (self variableAsDictionary: anExperimentVariable)