request handlers
handleExperimentRequest: req
	| id resp json |
	id := req at: #id.
	resp := self store experimentId: id.
	json := RestResponseWriter new
		experimentAsJson: resp
		withSuggestedSampleId: self store newSuggestedSampleId.
	^ json