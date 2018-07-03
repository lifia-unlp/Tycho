print
experimentAsJson: experiment withSuggestedSampleId: suggestedSampleId
	| dict |
	dict := self experimentAsDictionary: experiment.
	dict at: #suggestedSampleId put: suggestedSampleId.
	^ NeoJSONWriter toStringPretty: dict