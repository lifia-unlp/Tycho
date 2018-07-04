request handlers
experiment: id
	| resp json |
	resp := self store experimentId: id.
	json := RestResponseWriter new
		experimentAsJson: resp
		withSuggestedSampleId: self store newSuggestedSampleId.
	^ json