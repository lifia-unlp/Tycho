print
experimentAsJson: experiment
	^ NeoJSONWriter toStringPretty: (self experimentAsDictionary: experiment)