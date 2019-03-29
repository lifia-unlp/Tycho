request handlers
protocol: id
	| resp json |
	monitor
		critical: [ json := nil.
			resp := self store protocolId: id.
			resp
				ifNotNil: [ json := RestResponseWriter new
						experimentAsJson: resp
						withSuggestedSampleId: self store newSuggestedSampleId.
					json ].
			^ json ]