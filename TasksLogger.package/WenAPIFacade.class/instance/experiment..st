request handlers
experiment: id
	| resp json |
	json := nil.
	resp := self store experimentId: id.
	resp
		ifNotNil: [ json := RestResponseWriter new
				experimentAsJson: resp
				withSuggestedSampleId: self store newSuggestedSampleId.
			json ].
	^ json