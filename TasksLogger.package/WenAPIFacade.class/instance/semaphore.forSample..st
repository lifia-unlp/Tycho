request handlers
semaphore: id forSample: sampleId
	| resp json |
	json := nil.
	resp := self store semaphoreId: id forSample: sampleId.
	resp
		ifNotNil: [ json := RestResponseWriter new semaphoreAsJson: resp.
			json ].
	^ json